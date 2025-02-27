; C Library
;
; Copyright (C) 2023 Kestrel Institute (http://www.kestrel.edu)
; Copyright (C) 2023 Kestrel Technology LLC (http://kestreltechnology.com)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "C")

(include-book "expression-generation")
(include-book "object-tables")

(include-book "kestrel/std/system/close-lambdas" :dir :system)

(local (include-book "kestrel/std/system/w" :dir :system))
(local (include-book "std/alists/assoc" :dir :system))
(local (include-book "std/lists/len" :dir :system))
(local (include-book "std/typed-lists/atom-listp" :dir :system))
(local (include-book "std/typed-lists/pseudo-term-listp" :dir :system))
(local (include-book "std/typed-lists/symbol-listp" :dir :system))

(local (include-book "kestrel/built-ins/disable" :dir :system))
(local (acl2::disable-most-builtin-logic-defuns))
(local (acl2::disable-builtin-rewrite-rules-for-defaults))
(set-induction-depth-limit 0)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ atc-statement-generation
  :parents (atc-event-and-code-generation)
  :short "Generation of C statements."
  :order-subtopics t
  :default-parent t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-var-assignablep ((var symbolp)
                             (innermostp booleanp)
                             (affect symbol-listp))
  :returns (yes/no booleanp :hyp (booleanp innermostp))
  :short "Check if a variable is assignable,
          based on whether it is in the innermost scope
          and based on the variables being currently affected."
  :long
  (xdoc::topstring
   (xdoc::p
    "A variable may be destructively assigned to
     if any of the following conditions apply:
     (i) it is declared in the innermost scope,
     because in that case it cannot be accessed after exiting the scope;
     (ii) it is being affected,
     because in that case its modified value is returned
     and used in subsequent code;
     (iii) no variable is being affected,
     because in that case there is no subsequent code."))
  (or innermostp
      (and (member-eq var affect) t)
      (null affect)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-vars-assignablep ((var-list symbol-listp)
                              (innermostp-list boolean-listp)
                              (affect symbol-listp))
  :guard (equal (len var-list) (len innermostp-list))
  :returns (yes/no booleanp :hyp (boolean-listp innermostp-list))
  :short "Lift @(tsee atc-var-assignablep) to lists."
  (or (endp var-list)
      (and
       (atc-var-assignablep (car var-list) (car innermostp-list) affect)
       (atc-vars-assignablep (cdr var-list) (cdr innermostp-list) affect))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-affecting-term-for-let-p ((term pseudo-termp)
                                      (prec-fns atc-symbol-fninfo-alistp))
  :returns (yes/no booleanp)
  :short "Check if a term @('term') has the basic structure
          required for representing code affecting variables
          in @('(let ((var term)) body)')
          or @('(mv-let (var1 ... varn) term body)')."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is explained in the user documentation.
     Here we perform a shallow check,
     because we examine the term in full detail
     when recursively generating C code from it.
     In essence, here we check that the term is either
     (i) an @(tsee if) whose test is not @(tsee mbt) or
     (ii) a call of a (preceding) target function."))
  (case-match term
    (('if test . &) (b* (((mv mbtp &) (check-mbt-call test)))
                      (not mbtp)))
    ((fn . &) (and (symbolp fn)
                   (consp (assoc-eq fn prec-fns))))
    (& nil))
  :guard-hints (("Goal" :in-theory (enable pseudo-termp))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-make-mv-nth-terms ((indices nat-listp) (term pseudo-termp))
  :returns (terms pseudo-term-listp
                  :hints (("Goal" :induct t :in-theory (enable pseudo-termp))))
  :short "Create a list of @(tsee mv-nth)s applied to a term
          for a list of indices."
  (cond ((endp indices) nil)
        (t (cons `(mv-nth ',(car indices) ,(pseudo-term-fix term))
                 (atc-make-mv-nth-terms (cdr indices) term))))
  ///
  (defret len-of-atc-make-mv-nth-terms
    (equal (len terms)
           (len indices))
    :hints (("Goal" :induct t))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-update-var-term-alist ((vars symbol-listp)
                                   (terms pseudo-term-listp)
                                   (alist symbol-pseudoterm-alistp))
  :returns (new-alist symbol-pseudoterm-alistp)
  :short "Update an alist from symbols to terms."
  (append (pairlis$ (symbol-list-fix vars)
                    (pseudo-term-list-fix terms))
          (symbol-pseudoterm-alist-fix alist)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-ensure-formals-not-lost ((bind-affect symbol-listp)
                                     (fn-affect symbol-listp)
                                     (fn-typed-formals atc-symbol-varinfo-alistp)
                                     (fn symbolp)
                                     (wrld plist-worldp))
  :returns erp
  :short "Ensure that no affected formals are lost."
  :long
  (xdoc::topstring
   (xdoc::p
    "If the body of a non-recursive function @('fn')
     includes an @(tsee mv-let)s or a @(tsee let)
     that affects a formal of @('fn') of pointer or array type,
     or a formal of integer type that represents an external object,
     that formal must be among the variables affected by ('fn').
     If the body of a recursive function @('fn')
     includes an @(tsee mv-let)s or a @(tsee let)
     that affects a formal of @('fn') of any type,
     that formal must be among the variables affected by ('fn').
     In other words, no modification of formals must be ``lost''.
     The case of formals of pointer or array types is clear,
     because it means that objects in the heap are affected.
     The case of formals of integer type that represent external objects
     is also clear, as that object is globally accessible.
     The case of formals of non-pointer non-array types
     applies to recursive functions
     because they represent loops,
     which may affect local variables in the function where they appear.")
   (xdoc::p
    "This ACL2 function ensures that no formals are lost in the sense above.
     The parameter @('bind-affect') consists of
     the variable affected by the @(tsee mv-let) or @(tsee let).
     The parameter @('fn-affect') consists of
     the variables purported to be affected by @('fn').
     We go through the elements of @('bind-affect')
     and check each one against the formals of @('fn'),
     taking into account the information about the formals
     and whether @('fn') is recursive."))
  (b* (((reterr))
       ((when (endp bind-affect)) (retok))
       (var (car bind-affect))
       (info (cdr (assoc-eq var fn-typed-formals)))
       ((when (and info
                   (or (irecursivep+ fn wrld)
                       (type-case (atc-var-info->type info) :pointer)
                       (type-case (atc-var-info->type info) :array)
                       (atc-var-info->externalp info))
                   (not (member-eq var fn-affect))))
        (reterr
         (msg "When generating C code for the function ~x0, ~
               the formal parameter ~x1 is being affected ~
               in an MV-LET or LET term, ~
               but it is not being returned by ~x0."
              fn var))))
    (atc-ensure-formals-not-lost (cdr bind-affect)
                                 fn-affect
                                 fn-typed-formals
                                 fn
                                 wrld)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::defprod stmt-gin
  :short "Inputs for C statement generation."
  :long
  (xdoc::topstring
   (xdoc::p
    "This does not include the term, which is passed as a separate input.")
   (xdoc::p
    "The @('loop-flag') component is
     the loop flag @('L') described in the user documentation."))
  ((context atc-contextp)
   (var-term-alist symbol-pseudoterm-alist)
   (typed-formals atc-symbol-varinfo-alist)
   (inscope atc-symbol-varinfo-alist-list)
   (loop-flag booleanp)
   (affect symbol-list)
   (fn symbolp)
   (fn-guard symbol)
   (compst-var symbol)
   (fenv-var symbol)
   (limit-var symbol)
   (prec-fns atc-symbol-fninfo-alist)
   (prec-tags atc-string-taginfo-alist)
   (prec-objs atc-string-objinfo-alist)
   (thm-index pos)
   (names-to-avoid symbol-list)
   (proofs bool))
  :pred stmt-ginp)

;;;;;;;;;;;;;;;;;;;;

(fty::defprod stmt-gout
  :short "Outputs for C statement generation."
  :long
  (xdoc::topstring
   (xdoc::p
    "We actually generate a list of block items.
     These can be regarded as forming a compound statement,
     but lists of block items are compositional (via concatenation).")
   (xdoc::p
    "The type is the one returned by the block items.
     It may be @('void').")
   (xdoc::p
    "The @('limit') component is a term that desscribes a value
     that suffices for @(tsee exec-block-item-list)
     to execute the block items completely."))
  ((items block-item-list)
   (type type)
   (term pseudo-termp)
   (context atc-context)
   (limit pseudo-term)
   (events pseudo-event-form-list)
   (thm-name symbol)
   (thm-index pos)
   (names-to-avoid symbol-list))
  :pred stmt-goutp)

;;;;;;;;;;

(defirrelevant irr-stmt-gout
  :short "An irrelevant output for C statement generation."
  :type stmt-goutp
  :body (make-stmt-gout :items nil
                        :type (irr-type)
                        :term nil
                        :context (irr-atc-context)
                        :limit nil
                        :events nil
                        :thm-name nil
                        :thm-index 1
                        :names-to-avoid nil))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-block-item-stmt ((stmt stmtp)
                                 (stmt-limit pseudo-termp)
                                 (stmt-events pseudo-event-form-listp)
                                 (stmt-thm symbolp)
                                 (result-term pseudo-termp)
                                 (result-type typep)
                                 (new-compst "An untranslated term.")
                                 (gin stmt-ginp)
                                 state)
  :returns (mv (item block-itemp)
               (item-limit pseudo-termp)
               (item-events pseudo-event-form-listp
                            :hyp (pseudo-event-form-listp stmt-events))
               (item-thm symbolp)
               (thm-index posp :rule-classes (:rewrite :type-prescription))
               (names-to-avoid symbol-listp))
  :short "Generate a C block item that consists of a given statement."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is used to lift generated statements
     to generated block items.
     Besdies the block item,
     we also generate a theorem saying that
     @(tsee exec-block-item) applied to the quoted block item
     yields an @(tsee mv) pair consisting of
     a result term (or @('nil'))
     and a possibly updated computation state;
     these are the same as the ones for the statement theorem.")
   (xdoc::p
    "The limit for the block item is
     1 more than the limit for the statement,
     because we need 1 to go from @(tsee exec-block-item)
     to the @(':stmt') case and @(tsee exec-stmt)."))
  (b* (((stmt-gin gin) gin)
       (wrld (w state))
       (item (block-item-stmt stmt))
       (item-limit (pseudo-term-fncall
                    'binary-+
                    (list (pseudo-term-quote 1)
                          stmt-limit)))
       (name (pack gin.fn '-correct- gin.thm-index))
       (thm-index (1+ gin.thm-index))
       ((mv name names-to-avoid)
        (fresh-logical-name-with-$s-suffix name nil gin.names-to-avoid wrld))
       (result-uterm (untranslate$ result-term nil state))
       (formula1 `(equal (exec-block-item ',item
                                          ,gin.compst-var
                                          ,gin.fenv-var
                                          ,gin.limit-var)
                         (mv ,result-uterm ,new-compst)))
       (formula1 (atc-contextualize formula1
                                    gin.context
                                    gin.fn
                                    gin.fn-guard
                                    gin.compst-var
                                    gin.limit-var
                                    item-limit
                                    t
                                    wrld))
       (formula (if result-term
                    (b* ((type-pred
                          (atc-type-to-recognizer result-type gin.prec-tags))
                         (formula2 `(,type-pred ,result-uterm))
                         (formula2 (atc-contextualize formula2
                                                      gin.context
                                                      gin.fn
                                                      gin.fn-guard
                                                      nil
                                                      nil
                                                      nil
                                                      nil
                                                      wrld)))
                      `(and ,formula1 ,formula2))
                  formula1))
       (hints `(("Goal" :in-theory '(exec-block-item-when-stmt
                                     (:e block-item-kind)
                                     not-zp-of-limit-variable
                                     (:e block-item-stmt->get)
                                     ,stmt-thm))))
       ((mv event &) (evmac-generate-defthm name
                                            :formula formula
                                            :hints hints
                                            :enable nil)))
    (mv item
        item-limit
        (append stmt-events (list event))
        name
        thm-index
        names-to-avoid)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-block-item-declon ((var symbolp)
                                   (type typep)
                                   (expr exprp)
                                   (expr-term pseudo-termp)
                                   (expr-limit pseudo-termp)
                                   (expr-events pseudo-event-form-listp)
                                   (expr-thm symbolp)
                                   (gin stmt-ginp)
                                   state)
  :returns (mv (item block-itemp)
               (item-limit pseudo-termp :hyp (pseudo-termp expr-limit))
               (item-events pseudo-event-form-listp
                            :hyp (pseudo-event-form-listp expr-events))
               (item-thm symbolp)
               (new-inscope atc-symbol-varinfo-alist-listp)
               (new-context atc-contextp)
               (thm-index posp)
               (names-to-avoid symbol-listp))
  :short "Generate a C block item that consists of an object declaration."
  :long
  (xdoc::topstring
   (xdoc::p
    "We get the (ACL2) variable, the type, and the expressions as inputs.
     We return not only the block item,
     and also a symbol table updated with the variable.")
   (xdoc::p
    "We generate a theorem about executing the initializer.
     We will soon generate an additional theorem,
     about executing the block item."))
  (b* (((stmt-gin gin) gin)
       (wrld (w state))
       ((mv tyspec declor) (ident+type-to-tyspec+declor
                            (make-ident :name (symbol-name var))
                            type))
       (initer (initer-single expr))
       (initer-limit `(binary-+ '1 ,expr-limit))
       (declon (make-obj-declon :scspec (scspecseq-none)
                                :tyspec tyspec
                                :declor declor
                                :init? initer))
       (item (block-item-declon declon))
       (item-limit `(binary-+ '1 ,initer-limit))
       (varinfo (make-atc-var-info :type type :thm nil :externalp nil))
       ((when (not gin.proofs))
        (mv item
            item-limit
            expr-events
            nil
            (atc-add-var var varinfo gin.inscope)
            gin.context
            gin.thm-index
            gin.names-to-avoid))
       (initer-thm-name (pack gin.fn '-correct- gin.thm-index))
       (thm-index (1+ gin.thm-index))
       ((mv initer-thm-name names-to-avoid)
        (fresh-logical-name-with-$s-suffix initer-thm-name
                                           nil
                                           gin.names-to-avoid
                                           wrld))
       (initer-formula `(equal (exec-initer ',initer
                                            ,gin.compst-var
                                            ,gin.fenv-var
                                            ,gin.limit-var)
                               (mv (init-value-single ,expr-term)
                                   ,gin.compst-var)))
       (initer-formula
        (atc-contextualize initer-formula
                           gin.context
                           gin.fn
                           gin.fn-guard
                           gin.compst-var
                           gin.limit-var
                           initer-limit
                           t
                           wrld))
       (valuep-when-type-pred (atc-type-to-valuep-thm type gin.prec-tags))
       (initer-hints `(("Goal" :in-theory '(exec-initer-when-single
                                            (:e initer-kind)
                                            not-zp-of-limit-variable
                                            (:e initer-single->get)
                                            ,expr-thm
                                            ,valuep-when-type-pred
                                            mv-nth-of-cons
                                            (:e zp)))))
       ((mv initer-thm-event &) (evmac-generate-defthm initer-thm-name
                                                       :formula initer-formula
                                                       :hints initer-hints
                                                       :enable nil))
       (new-compst
        `(add-var (ident ',(symbol-name var)) ,expr-term ,gin.compst-var))
       (item-thm-name (pack gin.fn '-correct- thm-index))
       (thm-index (1+ thm-index))
       ((mv item-thm-name names-to-avoid)
        (fresh-logical-name-with-$s-suffix item-thm-name
                                           nil
                                           names-to-avoid
                                           wrld))
       (item-formula `(equal (exec-block-item ',item
                                              ,gin.compst-var
                                              ,gin.fenv-var
                                              ,gin.limit-var)
                             (mv nil
                                 ,(untranslate$ new-compst nil state))))
       (item-formula (atc-contextualize item-formula
                                        gin.context
                                        gin.fn
                                        gin.fn-guard
                                        gin.compst-var
                                        gin.limit-var
                                        item-limit
                                        t
                                        wrld))
       (type-of-value-when-type-pred
        (atc-type-to-type-of-value-thm type gin.prec-tags))
       (e-type `(:e ,(car (type-to-maker type))))
       (item-hints
        `(("Goal"
           :in-theory '(exec-block-item-when-declon
                        (:e block-item-kind)
                        not-zp-of-limit-variable
                        (:e block-item-declon->get)
                        (:e obj-declon-to-ident+scspec+tyname+init)
                        mv-nth-of-cons
                        (:e zp)
                        (:e scspecseq-kind)
                        (:e tyname-to-type)
                        (:e type-kind)
                        ,initer-thm-name
                        return-type-of-init-value-single
                        init-value-to-value-when-single
                        ,expr-thm
                        ,valuep-when-type-pred
                        ,type-of-value-when-type-pred
                        ,e-type
                        create-var-of-const-identifier
                        (:e identp)
                        (:e ident->name)
                        create-var-to-add-var
                        create-var-okp-of-add-var
                        create-var-okp-of-enter-scope
                        create-var-okp-of-add-frame
                        create-var-okp-of-update-var
                        ident-fix-when-identp
                        equal-of-ident-and-ident
                        (:e str-fix)
                        identp-of-ident
                        compustate-frames-number-of-add-var-not-zero
                        compustate-frames-number-of-enter-scope-not-zero
                        compustate-frames-number-of-add-frame-not-zero
                        compustate-frames-number-of-update-var
                        compustatep-of-add-var))))
       ((mv item-thm-event &) (evmac-generate-defthm item-thm-name
                                                     :formula item-formula
                                                     :hints item-hints
                                                     :enable nil))
       ((mv new-inscope new-context new-inscope-events thm-index names-to-avoid)
        (atc-gen-vardecl-inscope gin.fn
                                 gin.fn-guard
                                 gin.inscope
                                 gin.context
                                 var
                                 type
                                 (untranslate$ expr-term nil state)
                                 expr-thm
                                 gin.compst-var
                                 gin.prec-tags
                                 thm-index
                                 names-to-avoid
                                 wrld)))
    (mv item
        item-limit
        (append expr-events
                (list initer-thm-event
                      item-thm-event)
                new-inscope-events)
        item-thm-name
        new-inscope
        new-context
        thm-index
        names-to-avoid))
  :guard-hints (("Goal" :in-theory (enable pseudo-termp))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-block-item-var-decl ((var symbolp)
                                     (var-info? atc-var-info-optionp)
                                     (val-term pseudo-termp)
                                     (gin stmt-ginp)
                                     state)
  :returns (mv erp
               (item block-itemp)
               (val-term* pseudo-termp)
               (limit pseudo-termp)
               (events pseudo-event-form-listp)
               (thm-name symbolp)
               (new-inscope atc-symbol-varinfo-alist-listp)
               (new-context atc-contextp)
               (thm-index posp)
               (names-to-avoid symbol-listp))
  :short "Generate a C block item statement that consists of
          a variable declaration."
  :long
  (xdoc::topstring
   (xdoc::p
    "The information about the variable,
     retrieved in @(tsee atc-gen-stmt) and passed here,
     must be absent (i.e. @('nil')):
     the declared variable must be new."))
  (b* (((reterr) (irr-block-item) nil nil nil nil nil (irr-atc-context) 1 nil)
       ((stmt-gin gin) gin)
       ((when var-info?)
        (reterr
         (msg "The variable ~x0 in the function ~x1 ~
               is already in scope and cannot be re-declared."
              var gin.fn)))
       ((unless (paident-stringp (symbol-name var)))
        (reterr
         (msg "The symbol name ~s0 of ~
               the LET variable ~x1 of the function ~x2 ~
               must be a portable ASCII C identifier, ~
               but it is not."
              (symbol-name var) var gin.fn)))
       ((erp (expr-gout init))
        (atc-gen-expr val-term
                      (make-expr-gin
                       :context gin.context
                       :var-term-alist gin.var-term-alist
                       :inscope gin.inscope
                       :fn gin.fn
                       :fn-guard gin.fn-guard
                       :compst-var gin.compst-var
                       :fenv-var gin.fenv-var
                       :limit-var gin.limit-var
                       :prec-fns gin.prec-fns
                       :prec-tags gin.prec-tags
                       :thm-index gin.thm-index
                       :names-to-avoid gin.names-to-avoid
                       :proofs gin.proofs)
                      state))
       ((when (or (type-case init.type :pointer)
                  (type-case init.type :array)))
        (reterr
         (msg "When generating C code for the function ~x0, ~
               the term ~x1 of type ~x2 ~
               is being assigned to a new variable ~x3. ~
               This is currently disallowed, ~
               because it would create an alias."
              gin.fn val-term init.type var)))
       ((when (consp init.affect))
        (reterr
         (msg "The term ~x0 to which the variable ~x1 is bound ~
               must not affect any variables, ~
               but it affects ~x2 instead."
              val-term var init.affect)))
       ((mv item
            item-limit
            item-events
            item-thm
            inscope-body
            context-body
            thm-index
            names-to-avoid)
        (atc-gen-block-item-declon var
                                   init.type
                                   init.expr
                                   init.term
                                   init.limit
                                   init.events
                                   init.thm-name
                                   (change-stmt-gin
                                    gin
                                    :thm-index init.thm-index
                                    :names-to-avoid init.names-to-avoid
                                    :proofs (and init.thm-name t))
                                   state)))
    (retok item
           init.term
           item-limit
           item-events
           item-thm
           inscope-body
           context-body
           thm-index
           names-to-avoid)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-block-item-var-asg ((var symbolp)
                                    (var-info? atc-var-info-optionp)
                                    (val-term pseudo-termp)
                                    (gin stmt-ginp)
                                    state)
  :returns (mv erp
               (item block-itemp)
               (val-term* pseudo-termp)
               (limit pseudo-termp)
               (events pseudo-event-form-listp)
               (thm-name symbolp)
               (new-inscope atc-symbol-varinfo-alist-listp)
               (new-context atc-contextp)
               (thm-index posp)
               (names-to-avoid symbol-listp))
  :short "Generate a C block item statement that consists of
          an assignment to a variable."
  :long
  (xdoc::topstring
   (xdoc::p
    "We increase the limit by one
     for the theorem about @(tsee exec-expr-asg),
     because that is what it takes, in @(tsee exec-expr-asg),
     to go to @(tsee exec-expr-call-or-pure).")
   (xdoc::p
    "We further increase the limit by one
     for the theorem about @(tsee exec-expr-call-or-asg),
     because that is what it takes, in  @(tsee exec-expr-call-or-asg),
     to go to @(tsee exec-expr-asg).")
   (xdoc::p
    "We further increase the limit by one
     for the theorem about @(tsee exec-stmt),
     because that is what it takes, in @(tsee exec-stmt),
     to go to @(tsee exec-expr-call-or-asg)."))
  (b* (((reterr) (irr-block-item) nil nil nil nil nil (irr-atc-context) 1 nil)
       ((stmt-gin gin) gin)
       (wrld (w state))
       ((unless var-info?)
        (reterr (raise "Internal error: no information for variable ~x0." var)))
       (var-info var-info?)
       (prev-type (atc-var-info->type var-info))
       ((erp (expr-gout rhs))
        (atc-gen-expr val-term
                      (make-expr-gin
                       :context gin.context
                       :var-term-alist gin.var-term-alist
                       :inscope gin.inscope
                       :fn gin.fn
                       :fn-guard gin.fn-guard
                       :compst-var gin.compst-var
                       :fenv-var gin.fenv-var
                       :limit-var gin.limit-var
                       :prec-fns gin.prec-fns
                       :prec-tags gin.prec-tags
                       :thm-index gin.thm-index
                       :names-to-avoid gin.names-to-avoid
                       :proofs gin.proofs)
                      state))
       ((unless (equal prev-type rhs.type))
        (reterr
         (msg "The type ~x0 of the term ~x1 ~
               assigned to the LET variable ~x2 ~
               of the function ~x3 ~
               differs from the type ~x4 ~
               of a variable with the same symbol in scope."
              rhs.type val-term var gin.fn prev-type)))
       ((when (consp rhs.affect))
        (reterr
         (msg "The term ~x0 to which the variable ~x1 is bound ~
               must not affect any variables, ~
               but it affects ~x2 instead."
              val-term var rhs.affect)))
       ((when (type-case rhs.type :array))
        (reterr
         (msg "The term ~x0 to which the variable ~x1 is bound ~
               must not have a C array type, ~
               but it has type ~x2 instead."
              val-term var rhs.type)))
       ((when (type-case rhs.type :pointer))
        (reterr
         (msg "The term ~x0 to which the variable ~x1 is bound ~
               must not have a C pointer type, ~
               but it has type ~x2 instead."
              val-term var rhs.type)))
       (asg (make-expr-binary
             :op (binop-asg)
             :arg1 (expr-ident (make-ident :name (symbol-name var)))
             :arg2 rhs.expr))
       (stmt (stmt-expr asg))
       (item (block-item-stmt stmt))
       (asg-limit `(binary-+ '1 ,rhs.limit))
       (expr-limit `(binary-+ '1 ,asg-limit))
       (stmt-limit `(binary-+ '1 ,expr-limit))
       (item-limit `(binary-+ '1 ,stmt-limit))
       ((when (or (not rhs.thm-name)
                  (atc-var-info->externalp var-info))) ; <- temporary
        (retok item
               rhs.term
               item-limit
               rhs.events
               nil
               gin.inscope
               gin.context
               rhs.thm-index
               rhs.names-to-avoid))
       (new-compst `(update-var (ident ',(symbol-name var))
                                ,rhs.term
                                ,gin.compst-var))
       (new-compst (untranslate$ new-compst nil state))
       (asg-thm-name (pack gin.fn '-correct- rhs.thm-index))
       ((mv asg-thm-name names-to-avoid)
        (fresh-logical-name-with-$s-suffix
         asg-thm-name nil rhs.names-to-avoid wrld))
       (thm-index (1+ rhs.thm-index))
       (asg-formula `(equal (exec-expr-asg ',asg
                                           ,gin.compst-var
                                           ,gin.fenv-var
                                           ,gin.limit-var)
                            ,new-compst))
       (asg-formula (atc-contextualize asg-formula
                                       gin.context
                                       gin.fn
                                       gin.fn-guard
                                       gin.compst-var
                                       gin.limit-var
                                       asg-limit
                                       t
                                       wrld))
       (valuep-when-type (atc-type-to-valuep-thm rhs.type gin.prec-tags))
       (type-of-value-when-type
        (atc-type-to-type-of-value-thm rhs.type gin.prec-tags))
       (asg-hints
        `(("Goal"
           :in-theory '(exec-expr-asg-ident-via-object
                        (:e expr-kind)
                        (:e expr-binary->op)
                        (:e expr-binary->arg1)
                        (:e expr-binary->arg2)
                        (:e binop-kind)
                        not-zp-of-limit-variable
                        ,rhs.thm-name
                        mv-nth-of-cons
                        (:e zp)
                        ,valuep-when-type
                        objdesign-of-var-of-const-identifier
                        (:e identp)
                        (:e ident->name)
                        (:e expr-ident->get)
                        ,(atc-var-info->thm var-info)
                        write-object-of-objdesign-of-var-to-write-var
                        write-var-to-update-var
                        compustate-frames-number-of-add-var-not-zero
                        compustate-frames-number-of-enter-scope-not-zero
                        compustate-frames-number-of-add-frame-not-zero
                        compustate-frames-number-of-update-var
                        write-var-okp-of-add-var
                        write-var-okp-of-enter-scope
                        write-var-okp-of-update-var
                        ident-fix-when-identp
                        identp-of-ident
                        equal-of-ident-and-ident
                        (:e str-fix)
                        ,type-of-value-when-type))))
       ((mv asg-event &) (evmac-generate-defthm asg-thm-name
                                                :formula asg-formula
                                                :hints asg-hints
                                                :enable nil))
       (expr-thm-name (pack gin.fn '-correct- thm-index))
       ((mv expr-thm-name names-to-avoid)
        (fresh-logical-name-with-$s-suffix
         expr-thm-name nil names-to-avoid wrld))
       (thm-index (1+ thm-index))
       (expr-formula `(equal (exec-expr-call-or-asg ',asg
                                                    ,gin.compst-var
                                                    ,gin.fenv-var
                                                    ,gin.limit-var)
                             ,new-compst))
       (expr-formula (atc-contextualize expr-formula
                                        gin.context
                                        gin.fn
                                        gin.fn-guard
                                        gin.compst-var
                                        gin.limit-var
                                        expr-limit
                                        t
                                        wrld))
       (expr-hints
        `(("Goal" :in-theory '(exec-expr-call-or-asg-when-asg
                               (:e expr-kind)
                               not-zp-of-limit-variable
                               compustatep-of-add-var
                               compustatep-of-enter-scope
                               compustatep-of-update-var
                               ,asg-thm-name))))
       ((mv expr-event &) (evmac-generate-defthm expr-thm-name
                                                 :formula expr-formula
                                                 :hints expr-hints
                                                 :enable nil))
       (stmt-thm-name (pack gin.fn '-correct- thm-index))
       ((mv stmt-thm-name names-to-avoid)
        (fresh-logical-name-with-$s-suffix
         stmt-thm-name nil names-to-avoid wrld))
       (thm-index (1+ thm-index))
       (stmt-formula `(equal (exec-stmt ',stmt
                                        ,gin.compst-var
                                        ,gin.fenv-var
                                        ,gin.limit-var)
                             (mv nil ,new-compst)))
       (stmt-formula (atc-contextualize stmt-formula
                                        gin.context
                                        gin.fn
                                        gin.fn-guard
                                        gin.compst-var
                                        gin.limit-var
                                        stmt-limit
                                        t
                                        wrld))
       (stmt-hints
        `(("Goal" :in-theory '(exec-stmt-when-expr
                               (:e stmt-kind)
                               not-zp-of-limit-variable
                               (:e stmt-expr->get)
                               ,expr-thm-name
                               compustatep-of-update-var))))
       ((mv stmt-event &) (evmac-generate-defthm stmt-thm-name
                                                 :formula stmt-formula
                                                 :hints stmt-hints
                                                 :enable nil))
       ((mv item item-limit item-events item-thm-name thm-index names-to-avoid)
        (atc-gen-block-item-stmt stmt
                                 stmt-limit
                                 (append rhs.events
                                         (list asg-event
                                               expr-event
                                               stmt-event))
                                 stmt-thm-name
                                 nil
                                 (type-void)
                                 new-compst
                                 (change-stmt-gin
                                  gin
                                  :thm-index thm-index
                                  :names-to-avoid names-to-avoid
                                  :proofs (and stmt-thm-name t))
                                 state))
       (new-context
        (atc-context-extend gin.context
                            (list
                             (make-atc-premise-cvalue
                              :var var
                              :term rhs.term)
                             (make-atc-premise-compustate
                              :var gin.compst-var
                              :term `(update-var (ident ,(symbol-name var))
                                                 ,var
                                                 ,gin.compst-var)))))
       (notflexarrmem-thms
        (atc-type-to-notflexarrmem-thms rhs.type gin.prec-tags))
       (new-inscope-rules `(,rhs.thm-name
                            remove-flexible-array-member-when-absent
                            ,@notflexarrmem-thms
                            value-fix-when-valuep
                            ,valuep-when-type
                            objdesign-of-var-of-update-var
                            read-object-of-objdesign-var-of-update-var
                            ident-fix-when-identp
                            identp-of-ident
                            equal-of-ident-and-ident
                            (:e str-fix)))
       ((mv new-inscope new-inscope-events names-to-avoid)
        (atc-gen-new-inscope gin.fn
                             gin.fn-guard
                             gin.inscope
                             new-context
                             gin.compst-var
                             new-inscope-rules
                             gin.prec-tags
                             thm-index
                             names-to-avoid
                             wrld))
       (thm-index (1+ thm-index))
       (events (append item-events
                       new-inscope-events)))
    (retok item
           rhs.term
           item-limit
           events
           item-thm-name
           new-inscope
           new-context
           thm-index
           names-to-avoid))
  :guard-hints
  (("Goal"
    :in-theory
    (enable pseudo-termp
            acl2::true-listp-when-pseudo-event-form-listp-rewrite))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-block-item-list-none ((term pseudo-termp)
                                      (gin stmt-ginp)
                                      state)
  :returns (gout stmt-goutp)
  :short "Generate an empty list of block items."
  :long
  (xdoc::topstring
   (xdoc::p
    "The empty list of block items itself is trivial of course,
     but we also generate a theorem about
     @(tsee exec-block-item-list) applied to the empty list of block items.
     This provide uniformity with non-empty lists of block items,
     when lists of block items that may be empty or not are involved
     within larger constructs.")
   (xdoc::p
    "We return 1 as the limit,
     which is needed in @(tsee exec-block-item-list)
     to not return an error due to the limit being exhausted."))
  (b* (((stmt-gin gin) gin)
       (wrld (w state))
       (limit (pseudo-term-quote 1))
       ((when (not gin.proofs))
        (make-stmt-gout
         :items nil
         :type (type-void)
         :term term
         :context gin.context
         :limit limit
         :events nil
         :thm-name nil
         :thm-index gin.thm-index
         :names-to-avoid gin.names-to-avoid))
       (name (pack gin.fn '-correct- gin.thm-index))
       ((mv name names-to-avoid)
        (fresh-logical-name-with-$s-suffix name nil gin.names-to-avoid wrld))
       (thm-index (1+ gin.thm-index))
       (formula `(equal (exec-block-item-list nil
                                              ,gin.compst-var
                                              ,gin.fenv-var
                                              ,gin.limit-var)
                        (mv nil ,gin.compst-var)))
       (formula (atc-contextualize formula
                                   gin.context
                                   gin.fn
                                   gin.fn-guard
                                   gin.compst-var
                                   gin.limit-var
                                   limit
                                   t
                                   wrld))
       (hints '(("Goal" :in-theory '(exec-block-item-list-of-nil
                                     not-zp-of-limit-variable
                                     compustatep-of-add-frame
                                     compustatep-of-enter-scope
                                     compustatep-of-add-var
                                     compustatep-of-update-var))))
       ((mv event &) (evmac-generate-defthm name
                                            :formula formula
                                            :hints hints
                                            :enable nil)))
    (make-stmt-gout
     :items nil
     :type (type-void)
     :term term
     :context gin.context
     :limit limit
     :events (list event)
     :thm-name name
     :thm-index thm-index
     :names-to-avoid names-to-avoid)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-block-item-list-one ((term pseudo-termp)
                                     (item block-itemp)
                                     (item-limit pseudo-termp)
                                     (item-events pseudo-event-form-listp)
                                     (item-thm symbolp)
                                     (result-term pseudo-termp)
                                     (result-type typep)
                                     (new-compst "An untranslated term.")
                                     (new-context atc-contextp)
                                     (gin stmt-ginp)
                                     state)
  :returns (gout stmt-goutp)
  :short "Generate a list of C block items that consists of a given item."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is used to lift generated block items to generated block item lists.
     Besides the (singleton) block item list,
     we also generate a theorem saying that
     @(tsee exec-block-item-list) applied to the quoted block item list
     yields an @(tsee mv) pair consisting of
     a result term (or @('nil'))
     and a possibly updated computation state;
     these are the same as the ones for the single item theorem.")
   (xdoc::p
    "The limit for the block item list is
     1 more than the limit for the block item,
     because we need 1 to go from @(tsee exec-block-item-list)
     to @(tsee exec-block-item).")
   (xdoc::p
    "When this function is called on a block item
     that is an @('if') that returns @('void'),
     @('new-compst') is an @(tsee if*)
     whose branches have the form @('(exit-scope ...)')
     (after expanding @(tsee let)s).
     The combination of the rules
     @('compustatep-of-exit-scope') and
     @('compustatep-of-if*-when-both-compustatep')
     serves to show that @(tsee compustatep) holds on the @(tsee if*),
     as needed during the proof,
     without having to expand the @(tsee if*)."))
  (b* (((stmt-gin gin) gin)
       (wrld (w state))
       (items (list item))
       (items-limit (pseudo-term-fncall
                     'binary-+
                     (list (pseudo-term-quote 1)
                           item-limit)))
       ((when (not gin.proofs))
        (make-stmt-gout
         :items items
         :type result-type
         :term term
         :context new-context
         :limit items-limit
         :events item-events
         :thm-name nil
         :thm-index gin.thm-index
         :names-to-avoid gin.names-to-avoid))
       (name (pack gin.fn '-correct- gin.thm-index))
       (thm-index (1+ gin.thm-index))
       ((mv name names-to-avoid)
        (fresh-logical-name-with-$s-suffix name nil gin.names-to-avoid wrld))
       (result-uterm (untranslate$ result-term nil state))
       (formula1 `(equal (exec-block-item-list ',items
                                               ,gin.compst-var
                                               ,gin.fenv-var
                                               ,gin.limit-var)
                         (mv ,result-uterm ,new-compst)))
       (formula1 (atc-contextualize formula1
                                    gin.context
                                    gin.fn
                                    gin.fn-guard
                                    gin.compst-var
                                    gin.limit-var
                                    items-limit
                                    t
                                    wrld))
       (type-pred (and result-term
                       (atc-type-to-recognizer result-type gin.prec-tags)))
       (formula (if result-term
                    (b* ((formula2 `(,type-pred ,result-uterm))
                         (formula2 (atc-contextualize formula2 gin.context
                                                      gin.fn gin.fn-guard
                                                      nil nil nil nil wrld)))
                      `(and ,formula1 ,formula2))
                  formula1))
       (valuep-when-type-pred (and result-term
                                   (atc-type-to-valuep-thm result-type
                                                           gin.prec-tags)))
       (hints
        `(("Goal" :in-theory '(exec-block-item-list-when-consp
                               not-zp-of-limit-variable
                               mv-nth-of-cons
                               (:e zp)
                               value-optionp-when-valuep
                               (:e value-optionp)
                               (:e valuep)
                               ,@(and result-term
                                      (list valuep-when-type-pred))
                               ,item-thm
                               exec-block-item-list-of-nil
                               not-zp-of-limit-minus-const
                               compustatep-of-exit-scope
                               compustatep-of-if*-when-both-compustatep))))
       ((mv event &) (evmac-generate-defthm name
                                            :formula formula
                                            :hints hints
                                            :enable nil)))
    (make-stmt-gout
     :items items
     :type result-type
     :term term
     :context new-context
     :limit items-limit
     :events (append item-events (list event))
     :thm-name name
     :thm-index thm-index
     :names-to-avoid names-to-avoid)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-block-item-list-cons ((term pseudo-termp)
                                      (item block-itemp)
                                      (item-limit pseudo-termp)
                                      (item-events pseudo-event-form-listp)
                                      (item-thm symbolp)
                                      (items block-item-listp)
                                      (items-limit pseudo-termp)
                                      (items-events pseudo-event-form-listp)
                                      (items-thm symbolp)
                                      (items-type typep)
                                      (new-context atc-contextp)
                                      (gin stmt-ginp)
                                      state)
  :returns (gout stmt-goutp)
  :short "Generate a list of block items by @(tsee cons)ing
          a block item to a list of block items."
  :long
  (xdoc::topstring
   (xdoc::p
    "We need a limit that suffices for both @('item') and @('items').
     We take their sum (instead of the maximum), so the term remains linear.
     We also need to add 1, because it takes 1 to go
     from the execution of @('(cons item items)')
     to the execution of @('item') and @('items').")
   (xdoc::p
    "The context in @('gin') is the one before all the items,
     while the context @('new-context') is the one after all the items.
     The former should be always a prefix of the latter.
     In order to calculate the computation state after all the items,
     we take the ``difference'' between the two contexts
     and use it to contextualize the computation state variable,
     obtaining the computation state after all the items;
     note that, at that spot in the generated theorem,
     the computation state variables already accumulates
     the contextual premises in @('gin').")
   (xdoc::p
    "Currently this function is only called on a @('term')
     that returns a single value,
     which is either the returned C value (if the C type is not @('void')),
     or a side-effected variables (if the C type is @('void')).
     Thus, if the type if not @('void'),
     we can take the whole term
     as the first result of @(tsee exec-block-item-list).
     In the future, this will need to be generalized
     to be @('(mv-nth 0 term)') when the term returns multiple results
     and the type is not @('void')."))
  (b* ((wrld (w state))
       ((stmt-gin gin) gin)
       (all-items (cons item items))
       (all-items-limit `(binary-+ '1 (binary-+ ,item-limit ,items-limit)))
       ((when (not gin.proofs))
        (make-stmt-gout
         :items all-items
         :type items-type
         :term term
         :context (make-atc-context :preamble nil :premises nil)
         :limit all-items-limit
         :events (append item-events items-events)
         :thm-name nil
         :thm-index gin.thm-index
         :names-to-avoid gin.names-to-avoid))
       (new-compst (atc-contextualize-compustate gin.compst-var
                                                 gin.context
                                                 new-context))
       (uterm (untranslate$ term nil state))
       (formula1 `(equal (exec-block-item-list ',all-items
                                               ,gin.compst-var
                                               ,gin.fenv-var
                                               ,gin.limit-var)
                         (mv ,(if (type-case items-type :void)
                                  nil
                                uterm)
                             ,new-compst)))
       (formula1 (atc-contextualize formula1
                                    gin.context
                                    gin.fn
                                    gin.fn-guard
                                    gin.compst-var
                                    gin.limit-var
                                    all-items-limit
                                    t
                                    wrld))
       (formula (if (type-case items-type :void)
                    formula1
                  (b* ((type-pred
                        (atc-type-to-recognizer items-type gin.prec-tags))
                       (formula2 `(,type-pred ,uterm))
                       (formula2 (atc-contextualize formula2
                                                    gin.context
                                                    gin.fn
                                                    gin.fn-guard
                                                    nil
                                                    nil
                                                    nil
                                                    nil
                                                    wrld)))
                    `(and ,formula1 ,formula2))))
       (hints `(("Goal" :in-theory '(exec-block-item-list-when-consp
                                     not-zp-of-limit-variable
                                     ,item-thm
                                     mv-nth-of-cons
                                     (:e zp)
                                     (:e value-optionp)
                                     not-zp-of-limit-minus-const
                                     (:e valuep)
                                     ,items-thm))))
       (thm-name (pack gin.fn '-correct- gin.thm-index))
       (thm-index (1+ gin.thm-index))
       ((mv thm-name names-to-avoid) (fresh-logical-name-with-$s-suffix
                                      thm-name nil gin.names-to-avoid wrld))
       ((mv event &) (evmac-generate-defthm thm-name
                                            :formula formula
                                            :hints hints
                                            :enable nil)))
    (make-stmt-gout :items all-items
                    :type items-type
                    :term term
                    :context new-context
                    :limit all-items-limit
                    :events (append item-events
                                    items-events
                                    (list event))
                    :thm-name thm-name
                    :thm-index thm-index
                    :names-to-avoid names-to-avoid))
  :guard-hints (("Goal" :in-theory (enable pseudo-termp))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-return-stmt ((term pseudo-termp)
                             (gin stmt-ginp)
                             (must-affect symbol-listp)
                             state)
  :returns (mv erp (gout stmt-goutp))
  :short "Generate a C return statement from an ACL2 term."
  :long
  (xdoc::topstring
   (xdoc::p
    "The term passed here as parameter is the one representing
     the expression to be returned by the statement.
     The @('must-affect') parameter contains the variables
     that must be affected by the expression:
     it is set differently in the two circumstances in @(tsee atc-gen-stmt)
     in which this @('atc-gen-return-stmt') is called,
     corresponding to the two possible representations of @('return') statements
     according to the user documentation.")
   (xdoc::p
    "We generate three theorems, which build upon each other:
     one for @(tsee exec-stmt) applied to the return statement,
     one for @(tsee exec-block-item) applied to
     the block item that consists of the return statement,
     and one for @(tsee exec-block-item-list) applied to
     the singleton list of that block item.
     It is the latter term that refers to the list of block items
     returned as the @('gout') result of this ACL2 function.
     We start with the first of the three theorems,
     we will add the other two next.")
   (xdoc::p
    "The limit for the @(tsee exec-stmt) theorem is set to
     1 more than the limit for the expression theorem,
     because we need 1 to go from @(tsee exec-stmt)
     to the @(':return') case and @(tsee exec-expr-call-or-pure).
     The limit for the @(tsee exec-block-item) theorem is set to
     1 more than the limit for the previous theorem,
     because we need 1 to go from @(tsee exec-block-item)
     to the @(':stmt') case and @(tsee exec-stmt).
     The limit for the @(tsee exec-block-item-list) theorem is set to
     1 more than the limit for the previous theorem,
     because we need 1 to go from @(tsee exec-block-item-list)
     to @(tsee exec-block-item).
     The limit returned from this ACL2 function is the latter,
     because it refers to @(tsee exec-block-item-list)."))
  (b* (((reterr) (irr-stmt-gout))
       ((stmt-gin gin) gin)
       (wrld (w state))
       ((erp (expr-gout expr))
        (atc-gen-expr term
                      (make-expr-gin :context gin.context
                                     :var-term-alist gin.var-term-alist
                                     :inscope gin.inscope
                                     :fn gin.fn
                                     :fn-guard gin.fn-guard
                                     :compst-var gin.compst-var
                                     :fenv-var gin.fenv-var
                                     :limit-var gin.limit-var
                                     :prec-fns gin.prec-fns
                                     :prec-tags gin.prec-tags
                                     :thm-index gin.thm-index
                                     :names-to-avoid gin.names-to-avoid
                                     :proofs gin.proofs)
                      state))
       ((unless (equal expr.affect must-affect))
        (reterr
         (msg "When generating code for the function ~x0, ~
               a term ~x1 was encountered at the end of the computation, ~
               which represents a return statement
               whose expression affects the variables ~x2, ~
               but ~@3 must be affected here instead."
              gin.fn
              term
              expr.affect
              (if (consp must-affect)
                  (if (consp (cdr must-affect))
                      (msg "the variables ~&0" must-affect)
                    (msg "the variable ~x0" (car must-affect)))
                "no variables"))))
       ((when (type-case expr.type :void))
        (reterr
         (raise "Internal error: return term ~x0 has type void." term)))
       ((when (type-case expr.type :array))
        (reterr
         (msg "When generating a return statement for function ~x0, ~
               the term ~x1 that represents the return expression ~
               has array type ~x2, which is disallowed."
              gin.fn term expr.type)))
       ((when (type-case expr.type :pointer))
        (reterr
         (msg "When generating a return statement for function ~x0, ~
               the term ~x1 that represents the return expression ~
               has pointer type ~x2, which is disallowed."
              gin.fn term expr.type)))
       (stmt (make-stmt-return :value expr.expr))
       ((when (not expr.thm-name))
        (retok (make-stmt-gout
                :items (list (block-item-stmt stmt))
                :type expr.type
                :term expr.term
                :context (make-atc-context :preamble nil :premises nil)
                :limit (pseudo-term-fncall
                        'binary-+
                        (list (pseudo-term-quote 3)
                              expr.limit))
                :events expr.events
                :thm-name nil
                :thm-index expr.thm-index
                :names-to-avoid expr.names-to-avoid)))
       (stmt-limit (pseudo-term-fncall
                    'binary-+
                    (list (pseudo-term-quote 1)
                          expr.limit)))
       (thm-index expr.thm-index)
       (names-to-avoid expr.names-to-avoid)
       (type-pred (atc-type-to-recognizer expr.type gin.prec-tags))
       (valuep-when-type-pred (atc-type-to-valuep-thm expr.type gin.prec-tags))
       (stmt-thm-name (pack gin.fn '-correct- thm-index))
       (thm-index (1+ thm-index))
       ((mv stmt-thm-name names-to-avoid)
        (fresh-logical-name-with-$s-suffix
         stmt-thm-name nil names-to-avoid wrld))
       (uterm (untranslate$ expr.term nil state))
       (stmt-formula1 `(equal (exec-stmt ',stmt
                                         ,gin.compst-var
                                         ,gin.fenv-var
                                         ,gin.limit-var)
                              (mv ,uterm ,gin.compst-var)))
       (stmt-formula1 (atc-contextualize stmt-formula1
                                         gin.context
                                         gin.fn
                                         gin.fn-guard
                                         gin.compst-var
                                         gin.limit-var
                                         stmt-limit
                                         t
                                         wrld))
       (stmt-formula2 `(,type-pred ,uterm))
       (stmt-formula2 (atc-contextualize stmt-formula2
                                         gin.context
                                         gin.fn
                                         gin.fn-guard
                                         nil
                                         nil
                                         nil
                                         nil
                                         wrld))
       (stmt-formula `(and ,stmt-formula1 ,stmt-formula2))
       (stmt-hints
        `(("Goal" :in-theory '(exec-stmt-when-return
                               (:e stmt-kind)
                               not-zp-of-limit-variable
                               (:e stmt-return->value)
                               mv-nth-of-cons
                               (:e zp)
                               ,valuep-when-type-pred
                               ,expr.thm-name))))
       ((mv stmt-event &) (evmac-generate-defthm stmt-thm-name
                                                 :formula stmt-formula
                                                 :hints stmt-hints
                                                 :enable nil))
       ((mv item
            item-limit
            item-events
            item-thm-name
            thm-index
            names-to-avoid)
        (atc-gen-block-item-stmt stmt
                                 stmt-limit
                                 (append expr.events
                                         (list stmt-event))
                                 stmt-thm-name
                                 expr.term
                                 expr.type
                                 gin.compst-var
                                 (change-stmt-gin
                                  gin
                                  :thm-index thm-index
                                  :names-to-avoid names-to-avoid
                                  :proofs (and stmt-thm-name t))
                                 state)))
    (retok (atc-gen-block-item-list-one expr.term
                                        item
                                        item-limit
                                        item-events
                                        item-thm-name
                                        expr.term
                                        expr.type
                                        gin.compst-var
                                        gin.context
                                        (change-stmt-gin
                                         gin
                                         :thm-index thm-index
                                         :names-to-avoid names-to-avoid
                                         :proofs (and item-thm-name t))
                                        state))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-mbt-block-items ((test-term pseudo-termp)
                                 (then-term pseudo-termp)
                                 (else-term pseudo-termp)
                                 (then-items block-item-listp)
                                 (then-type typep)
                                 (then-limit pseudo-termp)
                                 (then-events pseudo-event-form-listp)
                                 (then-thm symbolp)
                                 (new-context atc-contextp)
                                 (gin stmt-ginp)
                                 state)
  :returns (mv erp (gout stmt-goutp))
  :short "Generate a list of block items
          from an ACL2 conditional with an @(tsee mbt) test."
  :long
  (xdoc::topstring
   (xdoc::p
    "A statement term may be an ACL2 @(tsee if) with an @(tsee mbt) test.
     This represents the same C code as the `then' branch.
     Thus, @(tsee atc-gen-stmt), when encountering an @(tsee if) of this form,
     processes the `then' branch, obtaining
     a list of block items and other related pieces of information,
     which are all passed to this function,
     along with the three argument terms of the @(tsee if).")
   (xdoc::p
    "Here we generate two theorems.")
   (xdoc::p
    "The first one is a lemma that says that the ACL2 conditional
     is equal to its `then' branch under the guard
     and under all the contextual assumptions that involve ACL2 terms
     (i.e. not involving computation states).
     We use @(tsee if*) for the ACL2 conditional,
     consistently with other ACL2 conditionals that we translate to C,
     to avoid unwanted case splits.
     This lemma is proved using the guard theorem,
     and enabling the guard function,
     @(tsee if*), @(tsee test*), @(tsee declar), and @(tsee assign),
     just like in the @('okp') theorems
     generated for expressions (e.g. see atc-gen-expr-unary).")
   (xdoc::p
    "The second one is the correctness theorem for the ACL2 conditional.
     It is just like the one for the `then' branch,
     except that it has the conditional (with @(tsee if*))
     instead of the `then' term.
     It is proved using the correctness theorem for the `then' branch,
     and enabling the lemma described just above.")
   (xdoc::p
    "Since @(tsee atc-gen-fn-def*) replaces every @(tsee if) with @(tsee if*)
     in the whole body of the function,
     we need to perform this replacement in both the test and `else' branch,
     because these are not recursively processed to generate code.")
   (xdoc::p
    "The @('new-context') parameter is the context just after the `then' branch,
     which is also the context after the whole @(tsee if).")
   (xdoc::p
    "The generation of modular proofs in this code currently assumes that
     @('then-term') returns a single value,
     which is either a returned C value
     or a side-effected C variable
     (the distinction is based on @('then-type')).
     This is reflected in the generated modular theorems.
     This will need to be generalized to the case in which the term
     returns multiple values."))
  (b* (((reterr) (irr-stmt-gout))
       ((stmt-gin gin) gin)
       (wrld (w state))
       (test-term `(mbt ,(fty-if-to-if* test-term)))
       (else-term (fty-if-to-if* else-term))
       (term `(if* ,test-term ,then-term ,else-term))
       ((when (not gin.proofs))
        (retok (make-stmt-gout :items then-items
                               :type then-type
                               :term term
                               :context (atc-context nil nil)
                               :limit then-limit
                               :events then-events
                               :thm-name nil
                               :thm-index gin.thm-index
                               :names-to-avoid gin.names-to-avoid)))
       (lemma-name (pack gin.fn '-if-mbt- gin.thm-index))
       ((mv lemma-name names-to-avoid) (fresh-logical-name-with-$s-suffix
                                        lemma-name nil gin.names-to-avoid wrld))
       (thm-index (1+ gin.thm-index))
       (lemma-formula `(equal ,term ,then-term))
       (lemma-formula (untranslate$ lemma-formula nil state))
       (lemma-formula (atc-contextualize lemma-formula
                                         gin.context
                                         gin.fn
                                         gin.fn-guard
                                         nil
                                         nil
                                         nil
                                         nil
                                         wrld))
       (lemma-hints `(("Goal"
                       :in-theory '(,gin.fn-guard if* test* declar assign)
                       :use (:guard-theorem ,gin.fn))))
       ((mv lemma-event &)
        (evmac-generate-defthm lemma-name
                               :formula lemma-formula
                               :hints lemma-hints
                               :enable nil))
       (thm-name (pack gin.fn '-correct- thm-index))
       ((mv thm-name names-to-avoid)
        (fresh-logical-name-with-$s-suffix thm-name nil names-to-avoid wrld))
       (thm-index (1+ thm-index))
       (uterm (untranslate$ term nil state))
       (formula1 `(equal (exec-block-item-list ',then-items
                                               ,gin.compst-var
                                               ,gin.fenv-var
                                               ,gin.limit-var)
                         (mv ,(if (type-case then-type :void)
                                  nil
                                uterm)
                             ,gin.compst-var)))
       (formula1 (atc-contextualize formula1
                                    gin.context
                                    gin.fn
                                    gin.fn-guard
                                    gin.compst-var
                                    gin.limit-var
                                    then-limit
                                    t
                                    wrld))
       (formula (if (type-case then-type :void)
                    formula1
                  (b* ((type-pred
                        (atc-type-to-recognizer then-type gin.prec-tags))
                       (formula2 `(,type-pred ,term))
                       (formula2 (atc-contextualize formula2
                                                    gin.context
                                                    gin.fn
                                                    gin.fn-guard
                                                    nil
                                                    nil
                                                    nil
                                                    nil
                                                    wrld)))
                    `(and ,formula1 ,formula2))))
       (hints `(("Goal" :use ,then-thm :in-theory '(,lemma-name))))
       ((mv thm-event &) (evmac-generate-defthm thm-name
                                                :formula formula
                                                :hints hints
                                                :enable nil)))
    (retok (make-stmt-gout :items then-items
                           :type then-type
                           :term term
                           :context new-context
                           :limit then-limit
                           :events (append then-events
                                           (list lemma-event
                                                 thm-event))
                           :thm-name thm-name
                           :thm-index thm-index
                           :names-to-avoid names-to-avoid)))
  :guard-hints (("Goal" :in-theory (enable pseudo-termp))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-if/ifelse-stmt ((test-term pseudo-termp)
                                (then-term pseudo-termp)
                                (else-term pseudo-termp)
                                (test-expr exprp)
                                (then-items block-item-listp)
                                (else-items block-item-listp)
                                (test-type typep)
                                (then-type typep)
                                (else-type typep)
                                (then-limit pseudo-termp)
                                (else-limit pseudo-termp)
                                (test-thm symbolp)
                                (then-thm symbolp)
                                (else-thm symbolp)
                                (then-context-start atc-contextp)
                                (else-context-start atc-contextp)
                                (then-context-end atc-contextp)
                                (else-context-end atc-contextp)
                                (test-events pseudo-event-form-listp)
                                (then-events pseudo-event-form-listp)
                                (else-events pseudo-event-form-listp)
                                (gin stmt-ginp)
                                state)
  :returns (mv erp (gout stmt-goutp))
  :short "Generate a C @('if') or @('if')-@('else') statement
          from an ACL2 term."
  :long
  (xdoc::topstring
   (xdoc::p
    "We generate an @('if') if the `else' branch is empty.
     Otherwise we generate an @('if')-@('else').")
   (xdoc::p
    "We generate a theorem for each branch:
     each theorem is about the compound statement
     that consists of the block items of the branch.
     Recall that @(tsee atc-gen-stmt) recursively generates
     theorems for those lists of block items;
     these are put into compound statements
     that become the actual branches of the conditional,
     so we need to lift the theorems to those compound statements.
     We generate the theorem for the `else' compound statement
     regardless of whether it is empty or not, for uniformity.
     The limit for each compound statement is
     1 plus the one for the block item list,
     because we need 1 to go from @(tsee exec-stmt)
     to the @(':compound') case and @(tsee exec-block-item-list).")
   (xdoc::p
    "We generate a theorem for the conditional statement,
     based on the theorems for the test and branches.
     We turn the ACL2 @(tsee if) into @(tsee if*),
     to prevent unwanted case splits in larger terms that may contain this term
     (as we generate C code from those larger terms).
     We use proof builder commands to split on this @(tsee if*).
     The limit for the conditional statement is
     one more than the sum of the ones for the branches;
     we could take one plus the maximum,
     but the sum avoids case splits.
     We include the compound recognizer @('booleanp-compound-recognizer')
     for the same reason explained in @(tsee atc-gen-expr-bool-from-type).")
   (xdoc::p
    "We lift the theorem for the conditional statement
     to a block item and to a singleton list of block items.")
   (xdoc::p
    "The generation of modular proofs in this code currently assumes that
     the @(tsee if) returns a single value,
     which is either the returned C value (if the C type is not @('void')),
     or a side-effected variables (if the C type is @('void')).
     This is reflected in the generated modular theorems.
     This will need to be generalized."))
  (b* (((reterr) (irr-stmt-gout))
       ((stmt-gin gin) gin)
       (wrld (w state))
       ((unless (equal then-type else-type))
        (reterr
         (msg "When generating C code for the function ~x0, ~
               two branches ~x1 and ~x2 of a conditional term ~
               have different types ~x3 and ~x4; ~
               use conversion operations, if needed, ~
               to make the branches of the same type."
              gin.fn then-term else-term then-type else-type)))
       (type then-type)
       (voidp (type-case type :void))
       (then-stmt (make-stmt-compound :items then-items))
       (else-stmt (make-stmt-compound :items else-items))
       (stmt (if (consp else-items)
                 (make-stmt-ifelse :test test-expr
                                   :then then-stmt
                                   :else else-stmt)
               (make-stmt-if :test test-expr
                             :then then-stmt)))
       (term `(if* ,test-term ,then-term ,else-term))
       ((when (not gin.proofs))
        (retok
         (make-stmt-gout
          :items (list (block-item-stmt stmt))
          :type type
          :term term
          :context (make-atc-context :preamble nil :premises nil)
          :limit (pseudo-term-fncall
                  'binary-+
                  (list
                   (pseudo-term-quote 5)
                   (pseudo-term-fncall
                    'binary-+
                    (list then-limit else-limit))))
          :events (append test-events then-events else-events)
          :thm-name nil
          :thm-index gin.thm-index
          :names-to-avoid gin.names-to-avoid)))
       (thm-index gin.thm-index)
       (names-to-avoid gin.names-to-avoid)
       (then-stmt-thm (pack gin.fn '-correct- thm-index))
       (thm-index (1+ thm-index))
       ((mv then-stmt-thm names-to-avoid)
        (fresh-logical-name-with-$s-suffix
         then-stmt-thm nil names-to-avoid wrld))
       (else-stmt-thm (pack gin.fn '-correct- thm-index))
       (thm-index (1+ thm-index))
       ((mv else-stmt-thm names-to-avoid)
        (fresh-logical-name-with-$s-suffix
         else-stmt-thm nil names-to-avoid wrld))
       (type-pred (and (not voidp)
                       (atc-type-to-recognizer type gin.prec-tags)))
       (valuep-when-type-pred (and (not voidp)
                                   (atc-type-to-valuep-thm type gin.prec-tags)))
       (then-stmt-limit `(binary-+ '1 ,then-limit))
       (else-stmt-limit `(binary-+ '1 ,else-limit))
       (then-uterm/nil (if voidp
                           nil
                         (untranslate$ then-term nil state)))
       (else-uterm/nil (if voidp
                           nil
                         (untranslate$ else-term nil state)))
       (then-context-end
        (atc-context-extend then-context-end
                            (list (make-atc-premise-compustate
                                   :var gin.compst-var
                                   :term `(exit-scope ,gin.compst-var)))))
       (else-context-end
        (atc-context-extend else-context-end
                            (list (make-atc-premise-compustate
                                   :var gin.compst-var
                                   :term `(exit-scope ,gin.compst-var)))))
       (then-new-compst (atc-contextualize-compustate gin.compst-var
                                                      then-context-start
                                                      then-context-end))
       (else-new-compst (atc-contextualize-compustate gin.compst-var
                                                      else-context-start
                                                      else-context-end))
       (then-stmt-formula1 `(equal (exec-stmt ',then-stmt
                                              ,gin.compst-var
                                              ,gin.fenv-var
                                              ,gin.limit-var)
                                   (mv ,then-uterm/nil ,then-new-compst)))
       (then-stmt-formula1 (atc-contextualize then-stmt-formula1
                                              then-context-start
                                              gin.fn
                                              gin.fn-guard
                                              gin.compst-var
                                              gin.limit-var
                                              then-stmt-limit
                                              t
                                              wrld))
       (then-stmt-formula
        (if voidp
            then-stmt-formula1
          (b* ((then-stmt-formula2 `(,type-pred ,then-uterm/nil))
               (then-stmt-formula2 (atc-contextualize then-stmt-formula2
                                                      then-context-start
                                                      gin.fn
                                                      gin.fn-guard
                                                      nil
                                                      nil
                                                      nil
                                                      nil
                                                      wrld)))
            `(and ,then-stmt-formula1 ,then-stmt-formula2))))
       (else-stmt-formula1 `(equal (exec-stmt ',else-stmt
                                              ,gin.compst-var
                                              ,gin.fenv-var
                                              ,gin.limit-var)
                                   (mv ,else-uterm/nil ,else-new-compst)))
       (else-stmt-formula1 (atc-contextualize else-stmt-formula1
                                              else-context-start
                                              gin.fn
                                              gin.fn-guard
                                              gin.compst-var
                                              gin.limit-var
                                              else-stmt-limit
                                              t
                                              wrld))
       (else-stmt-formula
        (if voidp
            else-stmt-formula1
          (b* ((else-stmt-formula2 `(,type-pred ,else-uterm/nil))
               (else-stmt-formula2 (atc-contextualize else-stmt-formula2
                                                      else-context-start
                                                      gin.fn
                                                      gin.fn-guard
                                                      nil
                                                      nil
                                                      nil
                                                      nil
                                                      wrld)))
            `(and ,else-stmt-formula1 ,else-stmt-formula2))))
       (then-stmt-hints
        `(("Goal" :in-theory '(exec-stmt-when-compound
                               (:e stmt-kind)
                               not-zp-of-limit-variable
                               (:e stmt-compound->items)
                               ,then-thm
                               mv-nth-of-cons
                               (:e zp)
                               (:e value-optionp)
                               value-optionp-when-valuep
                               ,@(and (not voidp)
                                      (list valuep-when-type-pred))
                               exit-scope-of-enter-scope
                               exit-scope-of-add-var
                               compustate-frames-number-of-add-frame-not-zero
                               compustate-frames-number-of-enter-scope-not-zero
                               compustate-frames-number-of-add-var-not-zero
                               compustatep-of-add-frame
                               compustatep-of-add-var
                               compustatep-of-enter-scope))))
       (else-stmt-hints
        `(("Goal" :in-theory '(exec-stmt-when-compound
                               (:e stmt-kind)
                               not-zp-of-limit-variable
                               (:e stmt-compound->items)
                               ,else-thm
                               mv-nth-of-cons
                               (:e zp)
                               (:e value-optionp)
                               value-optionp-when-valuep
                               ,@(and (not voidp)
                                      (list valuep-when-type-pred))
                               exit-scope-of-enter-scope
                               exit-scope-of-add-var
                               compustate-frames-number-of-add-frame-not-zero
                               compustate-frames-number-of-enter-scope-not-zero
                               compustate-frames-number-of-add-var-not-zero
                               compustatep-of-add-frame
                               compustatep-of-add-var
                               compustatep-of-enter-scope))))
       ((mv then-stmt-event &)
        (evmac-generate-defthm then-stmt-thm
                               :formula then-stmt-formula
                               :hints then-stmt-hints
                               :enable nil))
       ((mv else-stmt-event &)
        (evmac-generate-defthm else-stmt-thm
                               :formula else-stmt-formula
                               :hints else-stmt-hints
                               :enable nil))
       (if-stmt-thm (pack gin.fn '-correct- thm-index))
       (thm-index (1+ thm-index))
       ((mv if-stmt-thm names-to-avoid)
        (fresh-logical-name-with-$s-suffix if-stmt-thm nil names-to-avoid wrld))
       (if-stmt-limit
        `(binary-+ '1 (binary-+ ,then-stmt-limit ,else-stmt-limit)))
       (uterm/nil (if voidp
                      nil
                    (untranslate$ term nil state)))
       (test-uterm (untranslate$ test-term nil state))
       (new-compst `(if* ,test-uterm ,then-new-compst ,else-new-compst))
       (if-stmt-formula1 `(equal (exec-stmt ',stmt
                                            ,gin.compst-var
                                            ,gin.fenv-var
                                            ,gin.limit-var)
                                 (mv ,uterm/nil ,new-compst)))
       (if-stmt-formula1 (atc-contextualize if-stmt-formula1
                                            gin.context
                                            gin.fn
                                            gin.fn-guard
                                            gin.compst-var
                                            gin.limit-var
                                            if-stmt-limit
                                            t
                                            wrld))
       (if-stmt-formula
        (if voidp
            if-stmt-formula1
          (b* ((if-stmt-formula2 `(,type-pred ,uterm/nil))
               (if-stmt-formula2 (atc-contextualize if-stmt-formula2
                                                    gin.context
                                                    gin.fn
                                                    gin.fn-guard
                                                    nil
                                                    nil
                                                    nil
                                                    nil
                                                    wrld)))
            `(and ,if-stmt-formula1 ,if-stmt-formula2))))
       (test-type-pred (type-to-recognizer test-type wrld))
       (valuep-when-test-type-pred (pack 'valuep-when- test-type-pred))
       (value-kind-when-test-type-pred (pack 'value-kind-when- test-type-pred))
       (if-stmt-hints
        (if (consp else-items)
            `(("Goal" :in-theory '(exec-stmt-when-ifelse-and-true
                                   exec-stmt-when-ifelse-and-false
                                   (:e stmt-kind)
                                   not-zp-of-limit-variable
                                   (:e stmt-ifelse->test)
                                   ,test-thm
                                   ,@(and (not voidp)
                                          (list valuep-when-type-pred))
                                   (:e stmt-ifelse->then)
                                   ,then-stmt-thm
                                   (:e stmt-ifelse->else)
                                   ,else-stmt-thm
                                   ,valuep-when-test-type-pred
                                   booleanp-compound-recognizer
                                   expr-valuep-of-expr-value
                                   expr-value->value-of-expr-value
                                   value-fix-when-valuep
                                   ,valuep-when-test-type-pred
                                   apconvert-expr-value-when-not-value-array
                                   ,value-kind-when-test-type-pred)))
          `(("Goal" :in-theory '(exec-stmt-when-if-and-true
                                 exec-stmt-when-if-and-false
                                 (:e stmt-kind)
                                 not-zp-of-limit-variable
                                 (:e stmt-if->test)
                                 ,test-thm
                                 ,@(and (not voidp)
                                        (list valuep-when-type-pred))
                                 (:e stmt-if->then)
                                 ,then-stmt-thm
                                 ,valuep-when-test-type-pred
                                 booleanp-compound-recognizer
                                 expr-valuep-of-expr-value
                                 expr-value->value-of-expr-value
                                 value-fix-when-valuep
                                 ,valuep-when-test-type-pred
                                 apconvert-expr-value-when-not-value-array
                                 ,value-kind-when-test-type-pred
                                 compustatep-of-add-var
                                 compustate-frames-number-of-add-var-not-zero
                                 exit-scope-of-enter-scope)))))
       (if-stmt-instructions
        `((casesplit ,(atc-contextualize
                       test-term
                       gin.context nil nil nil nil nil nil wrld))
          (claim ,(atc-contextualize `(test* ,test-term)
                                     gin.context nil nil nil nil nil nil wrld)
                 :hints (("Goal" :in-theory '(test*))))
          (drop 1)
          (claim ,(atc-contextualize
                   `(equal (if* ,test-term ,then-term ,else-term)
                           ,then-term)
                   gin.context nil nil nil nil nil nil wrld)
                 :hints (("Goal"
                          :in-theory '(acl2::if*-when-true test*))))
          (claim ,(atc-contextualize
                   `(equal ,new-compst ,then-new-compst)
                   gin.context nil nil gin.compst-var nil nil nil wrld)
                 :hints (("Goal" :in-theory '(acl2::if*-when-true test*))))
          (prove :hints ,if-stmt-hints)
          (claim ,(atc-contextualize `(test* (not ,test-term))
                                     gin.context nil nil nil nil nil nil wrld)
                 :hints (("Goal" :in-theory '(test*))))
          (drop 1)
          (claim ,(atc-contextualize
                   `(equal (if* ,test-term ,then-term ,else-term)
                           ,else-term)
                   gin.context nil nil nil nil nil nil wrld)
                 :hints (("Goal" :in-theory '(acl2::if*-when-false test*))))
          (claim ,(atc-contextualize
                   `(equal ,new-compst ,else-new-compst)
                   gin.context nil nil gin.compst-var nil nil nil wrld)
                 :hints (("Goal" :in-theory '(acl2::if*-when-false test*))))
          (prove :hints ,if-stmt-hints)))
       ((mv if-stmt-event &)
        (evmac-generate-defthm if-stmt-thm
                               :formula if-stmt-formula
                               :instructions if-stmt-instructions
                               :enable nil))
       ((mv item
            item-limit
            item-events
            item-thm-name
            thm-index
            names-to-avoid)
        (atc-gen-block-item-stmt stmt
                                 if-stmt-limit
                                 (append test-events
                                         then-events
                                         else-events
                                         (list then-stmt-event
                                               else-stmt-event
                                               if-stmt-event))
                                 if-stmt-thm
                                 (and (not voidp) term)
                                 type
                                 new-compst
                                 (change-stmt-gin
                                  gin
                                  :thm-index thm-index
                                  :names-to-avoid names-to-avoid
                                  :proofs (and if-stmt-thm t))
                                 state))
       (new-context (atc-context-extend gin.context
                                        (list (make-atc-premise-compustate
                                               :var gin.compst-var
                                               :term new-compst)))))
    (retok
     (atc-gen-block-item-list-one term
                                  item
                                  item-limit
                                  item-events
                                  item-thm-name
                                  (and (not voidp) term)
                                  type
                                  new-compst
                                  new-context
                                  (change-stmt-gin
                                   gin
                                   :thm-index thm-index
                                   :names-to-avoid names-to-avoid
                                   :proofs (and item-thm-name t))
                                  state))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-stmt ((term pseudo-termp) (gin stmt-ginp) state)
  :returns (mv erp
               (gout stmt-goutp
                     :hints ; for speed
                     (("Goal"
                       :expand (atc-gen-stmt term gin state)
                       :in-theory (disable atc-gen-stmt)))))
  :short "Generate a C statement from an ACL2 term."
  :long
  (xdoc::topstring
   (xdoc::p
    "At the same time, we check that the term is a statement term,
     as described in the user documentation.")
   (xdoc::p
    "If the term is a conditional, there are two cases.
     If the test is @(tsee mbt),
     we recursively generate code just for the `then' branch,
     and then we delegate the rest to a separate function;
     note that we do not extend the context with the test,
     because the test is redundant, implied by the guard.
     If the test is not @(tsee mbt),
     we generate an @('if') statement
     (as a singleton block item list),
     with recursively generated compound statements as branches;
     the test expression is generated from the test term;
     we ensure that the two branches have the same type.
     When we process the branches,
     we extend the symbol table with a new empty scope for each branch.
     The calculation of the limit result is a bit more complicated in this case:
     we need 1 to go from @(tsee exec-block-item-list)
     to @(tsee exec-block-item),
     another 1 to go from that to @(tsee exec-stmt),
     and another 1 to go to the @(':if') or @(':ifelse') case there;
     the test is pure and so it needs no addition to the limit;
     since either branch may be taken,
     we return the sum of the limits for the two branches.
     More precisely, the limit recursively returned for each branch
     pertains to the block item list in the branch,
     but those are put into a compound statement;
     thus, we need to increase the recursively calculated limit
     by 1 to go from @(tsee exec-block-item-list) to @(tsee exec-block-item),
     and another 1 to go from there to @(tsee exec-stmt).
     In principle we could return the maximum from the two branches
     instead of their sum,
     but we want the limits to be
     linear combinations of sub-limits,
     so that ACL2's linear arithmetic can handle the reasoning about limits
     during the generated proofs.")
   (xdoc::p
    "If the term is a @(tsee mv-let),
     there are three cases.
     If the term involves a @('declar<n>') wrapper,
     we ensure that a variable with
     the same symbol name as the first bound variable
     is not already in scope
     (i.e. in the symbol table)
     and that the name is a portable ASCII identifier;
     we generate a declaration for the variable,
     initialized with the expression obtained
     from the term that the variable is bound to,
     which also determines the type of the variable,
     and which must affect the bound variables except the first one;
     the type must not be a pointer or array type
     (code generation fails if it is);
     we also ensure that the other variables are assignable.
     Otherwise, if the term involves an @('assign<n>') wrapper,
     we ensure that the first bound variable is assignable,
     which implies that it must be in scope,
     and we also ensure that it has the same type as the one in scope;
     we generate an assignment whose right-hand side is
     obtained from the unwrapped term,
     which must be an expression term returning a C value
     that affects the bound variables except the first one;
     we also ensure that the other variables are assignable.
     Otherwise, if the term involves no wrapper,
     we ensure that the bound variables are all assignable,
     and that the non-wrapped term has the form
     described in the user documentation;
     we generate code that affects the variables from that term.
     In all cases, we recursively generate the block items for the body
     and we put those just after the preceding code.
     We use the sum of the two limits as the overall limit:
     thus, after @(tsee exec-block-item-list) executes
     the block items for the bound term,
     it still has enough limit to execute the block items for the body term.")
   (xdoc::p
    "If the term is a @(tsee let), there are seven cases.
     If the binding has the form of a write to a pointed integer,
     we generate an assignment where the left-hand side
     uses the indirection unary operator.
     If the binding has the form of an array write,
     we generate an array assignment.
     If the binding has the form of a structure scalar member write,
     we generate an assignment to
     the member of the structure,
     by value or by pointer
     If the binding has the form of a structure array member write,
     we generate an assignment to
     the element of the member of the structure,
     by value or by pointer.
     The other three cases are similar to
     the three @(tsee mv-let) cases above.
     The limit is calculated as follows.
     For the case of the term representing code that affects variables,
     we add up the two limits,
     similarly to the @(tsee mv-let) case.
     For the other cases, we have one block item followed by block items.
     First, we need 1 to go from @(tsee exec-block-item-list)
     to @(tsee exec-block-item).
     Then we take the sum of the limit for the first block item
     and the limit for the remaining block items
     (in principle we could take the maximum,
     but see the discussion above for @(tsee if)
     for why we take the sum instead).
     The first block item is a declaration, an assignment, or a function call.
     If it is a declaration, we need 1 to go from @(tsee exec-block-item)
     to the @(':declon') case and to @(tsee exec-expr-call-or-pure),
     for which we get the limit.
     If it is an assignment, we need 1 to go from @(tsee exec-block-item)
     to the @(':stmt') case and to @(tsee exec-stmt),
     another 1 to go from there to the @(':expr') case
     and to @(tsee exec-expr-call-or-asg),
     another 1 to fo from there to @(tsee exec-expr-asg),
     and another 1 to go from there to @(tsee exec-expr-call-or-pure),
     for which we recursively get the limit.
     For the remaining block items, we need to add another 1
     to go from @(tsee exec-block-item-list) to its recursive call.")
   (xdoc::p
    "If the term is a single variable
     and @('affect') is a singleton list with that variable,
     there are two cases:
     if the loop flag is @('t'), it is an error;
     otherwise, we return nothing, because
     this is the end of a list of block items that affects that variable.
     We generate 1 as the limit,
     because we need 1 to go from @(tsee exec-block-item-list)
     to the empty list case.")
   (xdoc::p
    "If the term is an @(tsee mv), there are three cases.
     If the loop flag is @('t'), it is an error.
     Otherwise, if the arguments of @(tsee mv) are the @('affect') variables,
     we return nothing, because
     this is the end of a list of block items that affects that variable;
     we return 1 as the limit, for the same reason as the case above.
     Otherwise, if the @(tsee cdr) of the arguments of @(tsee mv)
     are the @('affect') variables,
     we treat the @(tsee car) of the arguments of @(tsee mv)
     as an expression term that must affect no variables,
     and generate a return statement for it.")
   (xdoc::p
    "If the term is a call of a recursive target function on its formals,
     different from the current function @('fn'),
     then the term represents a loop.
     The loop flag must be @('nil') for this to be allowed.
     We retrieve the associated loop statement and return it.
     We also retrieve the associated limit term,
     which, as explained in @(tsee atc-fn-info),
     suffices to execute @(tsee exec-stmt-while).
     But here we are executing lists of block items,
     so we need to add 1 to go from @(tsee exec-block-item-list)
     to the call to @(tsee exec-block-item),
     another 1 to go from there to the call to @(tsee exec-stmt),
     and another 1 to go from there to the call to @(tsee exec-stmt-while).")
   (xdoc::p
    "If the term is a call of the current function @('fn') on its formals,
     we ensure that the loop flag is @('t'),
     and we generate no code.
     This represents the conclusion of a loop body (on some path).")
   (xdoc::p
    "If the term is a call of
     a non-recursive target function that returns @('void'),
     the term represents an expression statement
     consisting of a call to the corresponding C function.
     The loop flag must be @('nil') for this to be allowed.
     We ensure that all the pointer and array arguments
     are equal to the formals,
     and that the variables affected by the called function are correct.
     We retrieve the limit term associated to the called function,
     which, as explained in @(tsee atc-fn-info),
     suffices to execute @(tsee exec-fun).
     But here we are executing lists of block items,
     so we need to add 1 to go from @(tsee exec-block-item-list)
     to the call of @(tsee exec-block-item),
     another 1 to go from there to the call of @(tsee exec-stmt),
     another 1 to go from there to the call of @(tsee exec-expr-call-or-asg),
     another 1 to go from there to the call of @(tsee exec-expr-call),
     and another 1 to go from there to the call of @(tsee exec-fun).")
   (xdoc::p
    "If the term does not have any of the forms above,
     we treat it as an expression term returning a C value.
     We ensure that the loop flag is @('nil').
     We also ensure that the expression affects
     the same variables as the statement term.
     For the limit, we need 1 to go from @(tsee exec-block-item-list)
     to @(tsee exec-block-item),
     another 1 to go from there to the @(':stmt') case and @(tsee exec-stmt),
     another 1 to go from there to the @(':return') case
     and @(tsee exec-expr-call-or-pure),
     for which we use the recursively calculated limit."))
  (b* (((reterr) (irr-stmt-gout))
       (wrld (w state))
       ((stmt-gin gin) gin)
       ((mv okp test-term then-term else-term) (fty-check-if-call term))
       ((when okp)
        (b* (((mv mbtp test-arg-term) (check-mbt-call test-term))
             ((when mbtp)
              (b* (((erp (stmt-gout then)) (atc-gen-stmt then-term gin state))
                   (gin (change-stmt-gin gin
                                         :thm-index then.thm-index
                                         :names-to-avoid then.names-to-avoid
                                         :proofs (and then.thm-name t))))
                (atc-gen-mbt-block-items test-arg-term
                                         then.term
                                         else-term
                                         then.items
                                         then.type
                                         then.limit
                                         then.events
                                         then.thm-name
                                         then.context
                                         gin
                                         state)))
             ((erp (pexpr-gout test))
              (atc-gen-expr-bool test-term
                                 (make-pexpr-gin
                                  :context gin.context
                                  :inscope gin.inscope
                                  :prec-tags gin.prec-tags
                                  :fn gin.fn
                                  :fn-guard gin.fn-guard
                                  :compst-var gin.compst-var
                                  :thm-index gin.thm-index
                                  :names-to-avoid gin.names-to-avoid
                                  :proofs gin.proofs)
                                 state))
             ((erp (stmt-gout then)
                   then-context-start
                   then-context-end)
              (b* (((reterr)
                    (irr-stmt-gout) (irr-atc-context) (irr-atc-context))
                   (then-cond (untranslate$ test.term t state))
                   (then-premise (atc-premise-test then-cond))
                   (then-context-start
                    (atc-context-extend gin.context (list then-premise)))
                   ((mv then-inscope
                        then-enter-scope-context
                        then-enter-scope-events
                        thm-index
                        names-to-avoid)
                    (if test.thm-name
                        (atc-gen-enter-inscope gin.fn
                                               gin.fn-guard
                                               gin.inscope
                                               then-context-start
                                               gin.compst-var
                                               gin.prec-tags
                                               test.thm-index
                                               test.names-to-avoid
                                               wrld)
                      (mv (cons nil gin.inscope)
                          then-context-start
                          nil
                          test.thm-index
                          test.names-to-avoid)))
                   ((erp gout)
                    (atc-gen-stmt then-term
                                  (change-stmt-gin
                                   gin
                                   :context then-enter-scope-context
                                   :inscope then-inscope
                                   :thm-index thm-index
                                   :names-to-avoid names-to-avoid
                                   :proofs (and test.thm-name t))
                                  state))
                   (then-context-end (stmt-gout->context gout)))
                (retok
                 (change-stmt-gout gout
                                   :events (append
                                            then-enter-scope-events
                                            (stmt-gout->events gout)))
                 then-context-start
                 then-context-end)))
             ((erp (stmt-gout else)
                   else-context-start
                   else-context-end)
              (b* (((reterr)
                    (irr-stmt-gout) (irr-atc-context) (irr-atc-context))
                   (not-test-term `(not ,test.term))
                   (else-cond (untranslate$ not-test-term t state))
                   (else-premise (atc-premise-test else-cond))
                   (else-context-start
                    (atc-context-extend gin.context (list else-premise)))
                   ((mv else-inscope
                        else-enter-scope-context
                        else-enter-scope-events
                        thm-index
                        names-to-avoid)
                    (if test.thm-name
                        (atc-gen-enter-inscope gin.fn
                                               gin.fn-guard
                                               gin.inscope
                                               else-context-start
                                               gin.compst-var
                                               gin.prec-tags
                                               then.thm-index
                                               then.names-to-avoid
                                               wrld)
                      (mv (cons nil gin.inscope)
                          else-context-start
                          nil
                          then.thm-index
                          then.names-to-avoid)))
                   ((erp gout)
                    (atc-gen-stmt else-term
                                  (change-stmt-gin
                                   gin
                                   :context else-enter-scope-context
                                   :inscope else-inscope
                                   :thm-index thm-index
                                   :names-to-avoid names-to-avoid
                                   :proofs (and test.thm-name t))
                                  state))
                   (else-context-end (stmt-gout->context gout)))
                (retok
                 (change-stmt-gout gout
                                   :events (append
                                            else-enter-scope-events
                                            (stmt-gout->events gout)))
                 else-context-start
                 else-context-end))))
          (atc-gen-if/ifelse-stmt test.term then.term else.term
                                  test.expr then.items else.items
                                  test.type then.type else.type
                                  then.limit else.limit
                                  test.thm-name then.thm-name else.thm-name
                                  then-context-start else-context-start
                                  then-context-end else-context-end
                                  test.events then.events else.events
                                  (change-stmt-gin
                                   gin
                                   :thm-index else.thm-index
                                   :names-to-avoid else.names-to-avoid
                                   :proofs (and test.thm-name
                                                then.thm-name
                                                else.thm-name
                                                t))
                                  state)))
       ((mv okp var? vars indices val-term body-term wrapper?)
        (atc-check-mv-let term))
       ((when okp)
        (b* ((all-vars (if var? (cons var? vars) vars))
             (val-instance (fty-fsublis-var gin.var-term-alist val-term))
             (vals (atc-make-mv-nth-terms indices val-instance))
             (var-term-alist-body
              (atc-update-var-term-alist all-vars vals gin.var-term-alist))
             ((when (eq wrapper? 'declar))
              (b* ((var var?)
                   ((mv info? & errorp) (atc-check-var var gin.inscope))
                   ((when errorp)
                    (reterr
                     (msg "When generating C code for the function ~x0, ~
                           a new variable ~x1 has been encountered ~
                           that has the same symbol name as, ~
                           but different package name from, ~
                           a variable already in scope. ~
                           This is disallowed."
                          gin.fn var)))
                   ((when info?)
                    (reterr
                     (msg "The variable ~x0 in the function ~x1 ~
                           is already in scope and cannot be re-declared."
                          var gin.fn)))
                   ((unless (paident-stringp (symbol-name var)))
                    (reterr
                     (msg "The symbol name ~s0 of ~
                           the MV-LET variable ~x1 of the function ~x2 ~
                           must be a portable ASCII C identifier, ~
                           but it is not."
                          (symbol-name var) var gin.fn)))
                   ((mv info?-list innermostp-list)
                    (atc-get-vars-check-innermost vars gin.inscope))
                   ((when (member-eq nil info?-list))
                    (reterr
                     (msg "When generating C code for the function ~x0, ~
                           an attempt is made to modify the variables ~x1, ~
                           not all of which are in scope."
                          gin.fn vars)))
                   ((unless (atc-vars-assignablep
                             vars innermostp-list gin.affect))
                    (reterr
                     (msg "When generating C code for the function ~x0, ~
                           an attempt is made to modify the variables ~x1, ~
                           not all of which are assignable."
                          gin.fn vars)))
                   ((erp (expr-gout init))
                    (atc-gen-expr val-term
                                  (make-expr-gin
                                   :context gin.context
                                   :var-term-alist gin.var-term-alist
                                   :inscope gin.inscope
                                   :fn gin.fn
                                   :fn-guard gin.fn-guard
                                   :compst-var gin.compst-var
                                   :fenv-var gin.fenv-var
                                   :limit-var gin.limit-var
                                   :prec-fns gin.prec-fns
                                   :prec-tags gin.prec-tags
                                   :thm-index gin.thm-index
                                   :names-to-avoid gin.names-to-avoid
                                   :proofs gin.proofs)
                                  state))
                   ((when (or (type-case init.type :pointer)
                              (type-case init.type :array)))
                    (reterr
                     (msg "When generating C code for the function ~x0, ~
                           the term ~x1 of type ~x2 ~
                           is being assigned to a new variable ~x3. ~
                           This is currently disallowed, ~
                           because it would create an alias."
                          gin.fn val-term init.type var)))
                   ((unless (equal init.affect vars))
                    (reterr
                     (msg "The term ~x0 to which the variable ~x1 is bound ~
                           must affect the variables ~x2, ~
                           but it affects ~x3 instead."
                          val-term var vars init.affect)))
                   ((erp)
                    (atc-ensure-formals-not-lost vars
                                                 gin.affect
                                                 gin.typed-formals
                                                 gin.fn
                                                 wrld))
                   ((mv tyspec declor) (ident+type-to-tyspec+declor
                                        (make-ident :name (symbol-name var))
                                        init.type))
                   (declon (make-obj-declon :scspec (scspecseq-none)
                                            :tyspec tyspec
                                            :declor declor
                                            :init? (initer-single init.expr)))
                   (item (block-item-declon declon))
                   (varinfo (make-atc-var-info :type init.type
                                               :thm nil
                                               :externalp nil))
                   (inscope-body (atc-add-var var varinfo gin.inscope))
                   ((erp (stmt-gout body))
                    (atc-gen-stmt body-term
                                  (change-stmt-gin
                                   gin
                                   :var-term-alist var-term-alist-body
                                   :inscope inscope-body
                                   :thm-index init.thm-index
                                   :names-to-avoid init.names-to-avoid
                                   :proofs nil)
                                  state))
                   (type body.type)
                   (limit (pseudo-term-fncall
                           'binary-+
                           (list (pseudo-term-quote 3)
                                 (pseudo-term-fncall
                                  'binary-+
                                  (list init.limit body.limit))))))
                (retok (make-stmt-gout
                        :items (cons item body.items)
                        :type type
                        :term term
                        :context (make-atc-context :preamble nil :premises nil)
                        :limit limit
                        :events (append init.events body.events)
                        :thm-name nil
                        :thm-index body.thm-index
                        :names-to-avoid body.names-to-avoid))))
             ((when (eq wrapper? 'assign))
              (b* ((var var?)
                   ((mv info? innermostp &) (atc-check-var var gin.inscope))
                   ((unless info?)
                    (reterr
                     (msg "When generating C code for the function ~x0, ~
                           an attempt is being made ~
                           to modify a variable ~x1 not in scope."
                          gin.fn var)))
                   ((unless (atc-var-assignablep var innermostp gin.affect))
                    (reterr
                     (msg "When generating C code for the function ~x0, ~
                           an attempt is being made ~
                           to modify a non-assignable variable ~x1."
                          gin.fn var)))
                   (prev-type (atc-var-info->type info?))
                   ((erp (expr-gout rhs))
                    (atc-gen-expr val-term
                                  (make-expr-gin
                                   :context gin.context
                                   :var-term-alist gin.var-term-alist
                                   :inscope gin.inscope
                                   :fn gin.fn
                                   :fn-guard gin.fn-guard
                                   :compst-var gin.compst-var
                                   :fenv-var gin.fenv-var
                                   :limit-var gin.limit-var
                                   :prec-fns gin.prec-fns
                                   :prec-tags gin.prec-tags
                                   :thm-index gin.thm-index
                                   :names-to-avoid gin.names-to-avoid
                                   :proofs gin.proofs)
                                  state))
                   ((unless (equal prev-type rhs.type))
                    (reterr
                     (msg "The type ~x0 of the term ~x1 ~
                           assigned to the LET variable ~x2 ~
                           of the function ~x3 ~
                           differs from the type ~x4 ~
                           of a variable with the same symbol in scope."
                          rhs.type val-term var gin.fn prev-type)))
                   ((unless (equal rhs.affect vars))
                    (reterr
                     (msg "The term ~x0 to which the variable ~x1 is bound ~
                           must affect the variables ~x2, ~
                           but it affects ~x3 instead."
                          val-term var vars rhs.affect)))
                   ((erp)
                    (atc-ensure-formals-not-lost vars
                                                 gin.affect
                                                 gin.typed-formals
                                                 gin.fn
                                                 wrld))
                   ((when (type-case rhs.type :array))
                    (reterr
                     (msg "The term ~x0 to which the variable ~x1 is bound ~
                           must not have a C array type, ~
                           but it has type ~x2 instead."
                          val-term var rhs.type)))
                   ((when (type-case rhs.type :pointer))
                    (reterr
                     (msg "The term ~x0 to which the variable ~x1 is bound ~
                           must not have a C pointer type, ~
                           but it has type ~x2 instead."
                          val-term var rhs.type)))
                   (asg (make-expr-binary
                         :op (binop-asg)
                         :arg1 (expr-ident (make-ident :name (symbol-name var)))
                         :arg2 rhs.expr))
                   (stmt (stmt-expr asg))
                   (item (block-item-stmt stmt))
                   ((erp (stmt-gout body))
                    (atc-gen-stmt body-term
                                  (change-stmt-gin
                                   gin
                                   :var-term-alist var-term-alist-body
                                   :thm-index rhs.thm-index
                                   :names-to-avoid rhs.names-to-avoid
                                   :proofs nil)
                                  state))
                   (type body.type)
                   (limit (pseudo-term-fncall
                           'binary-+
                           (list (pseudo-term-quote 6)
                                 (pseudo-term-fncall
                                  'binary-+
                                  (list rhs.limit body.limit))))))
                (retok (make-stmt-gout
                        :items (cons item body.items)
                        :type type
                        :term term
                        :context (make-atc-context :preamble nil :premises nil)
                        :limit limit
                        :events (append rhs.events body.events)
                        :thm-name nil
                        :thm-index body.thm-index
                        :names-to-avoid body.names-to-avoid))))
             ((unless (eq wrapper? nil))
              (reterr
               (raise "Internal error: MV-LET wrapper is ~x0." wrapper?)))
             ((mv info?-list innermostp-list)
              (atc-get-vars-check-innermost vars gin.inscope))
             ((when (member-eq nil info?-list))
              (reterr
               (msg "When generating C code for the function ~x0, ~
                     an attempt is made to modify the variables ~x1, ~
                     not all of which are in scope."
                    gin.fn vars)))
             ((unless (atc-vars-assignablep vars innermostp-list gin.affect))
              (reterr
               (msg "When generating C code for the function ~x0, ~
                     an attempt is made to modify the variables ~x1, ~
                     not all of which are assignable."
                    gin.fn vars)))
             ((unless (atc-affecting-term-for-let-p val-term gin.prec-fns))
              (reterr
               (msg "When generating C code for the function ~x0, ~
                     an MV-LET has been encountered ~
                     whose term ~x1 to which the variables are bound ~
                     does not have the required form."
                    gin.fn val-term)))
             ((erp)
              (atc-ensure-formals-not-lost vars
                                           gin.affect
                                           gin.typed-formals
                                           gin.fn
                                           wrld))
             ((erp (stmt-gout xform))
              (atc-gen-stmt val-term
                            (change-stmt-gin gin
                                             :affect vars
                                             :loop-flag nil)
                            state))
             ((unless (type-case xform.type :void))
              (reterr
               (msg "When generating C code for the function ~x0, ~
                     an MV-LET has been encountered ~
                     whose term ~x1 to which the variables are bound ~
                     has the non-void type ~x2, ~
                     which is disallowed."
                    gin.fn val-term xform.type)))
             ((erp (stmt-gout body))
              (atc-gen-stmt body-term
                            (change-stmt-gin
                             gin
                             :var-term-alist var-term-alist-body
                             :thm-index xform.thm-index
                             :names-to-avoid xform.names-to-avoid
                             :proofs (and xform.thm-name t))
                            state))
             (items (append xform.items body.items))
             (type body.type)
             (limit (pseudo-term-fncall 'binary-+
                                        (list xform.limit body.limit))))
          (retok (make-stmt-gout
                  :items items
                  :type type
                  :term term
                  :context (make-atc-context :preamble nil :premises nil)
                  :limit limit
                  :events (append xform.events body.events)
                  :thm-name nil
                  :thm-index body.thm-index
                  :names-to-avoid body.names-to-avoid))))
       ((mv okp var val-term body-term wrapper?) (atc-check-let term))
       ((when okp)
        (b* ((val-instance (fty-fsublis-var gin.var-term-alist val-term))
             (var-term-alist-body
              (atc-update-var-term-alist (list var)
                                         (list val-instance)
                                         gin.var-term-alist))
             ((erp okp & arg-term type) (atc-check-integer-write val-term))
             ((when okp)
              (b* (((unless (eq wrapper? nil))
                    (reterr
                     (msg "The pointed integer write term ~x0 ~
                           to which ~x1 is bound ~
                           has the ~x2 wrapper, which is disallowed."
                          arg-term var wrapper?)))
                   ((unless (member-eq var gin.affect))
                    (reterr
                     (msg "The pointed integer ~x0 is being written to, ~
                           but it is not among the variables ~x1 ~
                           currently affected."
                          var gin.affect)))
                   ((erp (pexpr-gout ptr))
                    (atc-gen-expr-pure var
                                       (make-pexpr-gin
                                        :context gin.context
                                        :inscope gin.inscope
                                        :prec-tags gin.prec-tags
                                        :fn gin.fn
                                        :fn-guard gin.fn-guard
                                        :compst-var gin.compst-var
                                        :thm-index gin.thm-index
                                        :names-to-avoid gin.names-to-avoid
                                        :proofs gin.proofs)
                                       state))
                   ((unless (equal ptr.type (type-pointer type)))
                    (reterr
                     (msg "The variable ~x0 of type ~x1 does not have ~
                           the expected type ~x2. ~
                           This is indicative of ~
                           unreachable code under the guards, ~
                           given that the code is guard-verified."
                          var ptr.type (type-pointer type))))
                   ((erp (pexpr-gout int))
                    (atc-gen-expr-pure arg-term
                                       (make-pexpr-gin
                                        :context gin.context
                                        :inscope gin.inscope
                                        :prec-tags gin.prec-tags
                                        :fn gin.fn
                                        :fn-guard gin.fn-guard
                                        :compst-var gin.compst-var
                                        :thm-index ptr.thm-index
                                        :names-to-avoid ptr.names-to-avoid
                                        :proofs (and ptr.thm-name t))
                                       state))
                   ((unless (equal int.type type))
                    (reterr
                     (msg "The term ~x0 of type ~x1 does not have ~
                           the expected type ~x1. ~
                           This is indicative of ~
                           unreachable code under the guards, ~
                           given that the code is guard-verified."
                          arg-term int.type type)))
                   (asg (make-expr-binary
                         :op (binop-asg)
                         :arg1 (make-expr-unary
                                :op (unop-indir)
                                :arg ptr.expr)
                         :arg2 int.expr))
                   (stmt (stmt-expr asg))
                   (item (block-item-stmt stmt))
                   ((erp (stmt-gout body))
                    (atc-gen-stmt body-term
                                  (change-stmt-gin
                                   gin
                                   :var-term-alist var-term-alist-body
                                   :thm-index int.thm-index
                                   :names-to-avoid int.names-to-avoid
                                   :proofs nil)
                                  state))
                   (limit (pseudo-term-fncall 'binary-+
                                              (list (pseudo-term-quote 4)
                                                    body.limit))))
                (retok (make-stmt-gout
                        :items (cons item body.items)
                        :type body.type
                        :term term
                        :context (make-atc-context :preamble nil :premises nil)
                        :limit limit
                        :events (append ptr.events
                                        int.events
                                        body.events)
                        :thm-name nil
                        :thm-index body.thm-index
                        :names-to-avoid body.names-to-avoid))))
             ((erp okp sub-term elem-term elem-type)
              (atc-check-array-write var val-term))
             ((when okp)
              (b* (((unless (eq wrapper? nil))
                    (reterr
                     (msg "The array write term ~x0 to which ~x1 is bound ~
                           has the ~x2 wrapper, which is disallowed."
                          val-term var wrapper?)))
                   ((unless (member-eq var gin.affect))
                    (reterr
                     (msg "The array ~x0 is being written to, ~
                           but it is not among the variables ~x1 ~
                           currently affected."
                          var gin.affect)))
                   ((erp (pexpr-gout arr))
                    (atc-gen-expr-pure var
                                       (make-pexpr-gin
                                        :context gin.context
                                        :inscope gin.inscope
                                        :prec-tags gin.prec-tags
                                        :fn gin.fn
                                        :fn-guard gin.fn-guard
                                        :compst-var gin.compst-var
                                        :thm-index gin.thm-index
                                        :names-to-avoid gin.names-to-avoid
                                        :proofs gin.proofs)
                                       state))
                   ((erp (pexpr-gout sub))
                    (atc-gen-expr-pure sub-term
                                       (make-pexpr-gin
                                        :context gin.context
                                        :inscope gin.inscope
                                        :prec-tags gin.prec-tags
                                        :fn gin.fn
                                        :fn-guard gin.fn-guard
                                        :compst-var gin.compst-var
                                        :thm-index arr.thm-index
                                        :names-to-avoid arr.names-to-avoid
                                        :proofs (and arr.thm-name t))
                                       state))
                   ((erp (pexpr-gout elem))
                    (atc-gen-expr-pure elem-term
                                       (make-pexpr-gin
                                        :context gin.context
                                        :inscope gin.inscope
                                        :prec-tags gin.prec-tags
                                        :fn gin.fn
                                        :fn-guard gin.fn-guard
                                        :compst-var gin.compst-var
                                        :thm-index sub.thm-index
                                        :names-to-avoid sub.names-to-avoid
                                        :proofs (and sub.thm-name t))
                                       state))
                   ((unless (and (type-case arr.type :array)
                                 (equal (type-array->of arr.type)
                                        elem-type)))
                    (reterr
                     (msg "The array ~x0 of type ~x1 ~
                           does not have the expected array type of ~x2. ~
                           This is indicative of ~
                           unreachable code under the guards, ~
                           given that the code is guard-verified."
                          var arr.type elem-type)))
                   ((unless (type-integerp sub.type))
                    (reterr
                     (msg "The array ~x0 of type ~x1 ~
                           is being indexed with ~
                           a subscript ~x2 of non-integer type ~x3, ~
                           instead of integer type as expected.
                           This is indicative of ~
                           unreachable code under the guards, ~
                           given that the code is guard-verified."
                          var arr.type sub sub.type)))
                   ((unless (equal elem.type elem-type))
                    (reterr
                     (msg "The array ~x0 of type ~x1 ~
                           is being written to with ~
                           an element ~x2 of type x3, ~
                           instead of type ~x4 as expected.
                           This is indicative of ~
                           unreachable code under the guards, ~
                           given that the code is guard-verified."
                          var arr.type elem elem.type elem-type)))
                   (asg (make-expr-binary
                         :op (binop-asg)
                         :arg1 (make-expr-arrsub :arr arr.expr
                                                 :sub sub.expr)
                         :arg2 elem.expr))
                   (stmt (stmt-expr asg))
                   (item (block-item-stmt stmt))
                   ((erp (stmt-gout body))
                    (atc-gen-stmt body-term
                                  (change-stmt-gin
                                   gin
                                   :var-term-alist var-term-alist-body
                                   :thm-index elem.thm-index
                                   :names-to-avoid elem.names-to-avoid
                                   :proofs nil)
                                  state))
                   (limit (pseudo-term-fncall 'binary-+
                                              (list (pseudo-term-quote 4)
                                                    body.limit))))
                (retok (make-stmt-gout
                        :items (cons item body.items)
                        :type body.type
                        :term term
                        :context (make-atc-context :preamble nil :premises nil)
                        :limit limit
                        :events (append arr.events
                                        sub.events
                                        elem.events
                                        body.events)
                        :thm-name nil
                        :thm-index body.thm-index
                        :names-to-avoid body.names-to-avoid))))
             ((erp okp member-term tag member-name member-type)
              (atc-check-struct-write-scalar var val-term gin.prec-tags))
             ((when okp)
              (b* (((unless (eq wrapper? nil))
                    (reterr
                     (msg "The structure write term ~x0 ~
                           to which ~x1 is bound ~
                           has the ~x2 wrapper, which is disallowed."
                          val-term var wrapper?)))
                   ((erp (pexpr-gout struct))
                    (atc-gen-expr-pure var
                                       (make-pexpr-gin
                                        :context gin.context
                                        :inscope gin.inscope
                                        :prec-tags gin.prec-tags
                                        :fn gin.fn
                                        :fn-guard gin.fn-guard
                                        :compst-var gin.compst-var
                                        :thm-index gin.thm-index
                                        :names-to-avoid gin.names-to-avoid
                                        :proofs gin.proofs)
                                       state))
                   ((erp pointerp)
                    (cond
                     ((equal struct.type (type-struct tag))
                      (retok nil))
                     ((equal struct.type (type-pointer (type-struct tag)))
                      (retok t))
                     (t (reterr
                         (msg "The structure ~x0 of type ~x1 ~
                               does not have the expected type ~x2 or ~x3. ~
                               This is indicative of ~
                               unreachable code under the guards, ~
                               given that the code is guard-verified."
                              var
                              struct.type
                              (type-struct tag)
                              (type-pointer (type-struct tag)))))))
                   ((when (and pointerp
                               (not (member-eq var gin.affect))))
                    (reterr
                     (msg "The structure ~x0 ~
                           is being written to by pointer, ~
                           but it is not among the variables ~x1 ~
                           currently affected."
                          var gin.affect)))
                   ((erp (pexpr-gout member))
                    (atc-gen-expr-pure member-term
                                       (make-pexpr-gin
                                        :context gin.context
                                        :inscope gin.inscope
                                        :prec-tags gin.prec-tags
                                        :fn gin.fn
                                        :fn-guard gin.fn-guard
                                        :compst-var gin.compst-var
                                        :thm-index struct.thm-index
                                        :names-to-avoid struct.names-to-avoid
                                        :proofs (and struct.thm-name t))
                                       state))
                   ((unless (equal member.type member-type))
                    (reterr
                     (msg "The structure ~x0 of type ~x1 ~
                           is being written to with ~
                           a member ~x2 of type ~x3, ~
                           instead of type ~x4 as expected. ~
                           This is indicative of ~
                           unreachable code under the guards, ~
                           given that the code is guard-verified."
                          var struct.type member-term
                          member.type member-type)))
                   (asg-mem (if pointerp
                                (make-expr-memberp :target struct.expr
                                                   :name member-name)
                              (make-expr-member :target struct.expr
                                                :name member-name)))
                   (asg (make-expr-binary :op (binop-asg)
                                          :arg1 asg-mem
                                          :arg2 member.expr))
                   (stmt (stmt-expr asg))
                   (item (block-item-stmt stmt))
                   ((erp (stmt-gout body))
                    (atc-gen-stmt body-term
                                  (change-stmt-gin
                                   gin
                                   :var-term-alist var-term-alist-body
                                   :thm-index member.thm-index
                                   :names-to-avoid member.names-to-avoid
                                   :proofs nil)
                                  state))
                   (limit (pseudo-term-fncall 'binary-+
                                              (list (pseudo-term-quote 4)
                                                    body.limit))))
                (retok (make-stmt-gout
                        :items (cons item body.items)
                        :type body.type
                        :term term
                        :context (make-atc-context :preamble nil :premises nil)
                        :limit limit
                        :events (append struct.events
                                        member.events)
                        :thm-name nil
                        :thm-index body.thm-index
                        :names-to-avoid body.names-to-avoid))))
             ((erp okp index-term elem-term tag member elem-type)
              (atc-check-struct-write-array var val-term gin.prec-tags))
             ((when okp)
              (b* (((unless (eq wrapper? nil))
                    (reterr
                     (msg "The structure write term ~x0 ~
                           to which ~x1 is bound ~
                           has the ~x2 wrapper, which is disallowed."
                          val-term var wrapper?)))
                   ((erp (pexpr-gout struct))
                    (atc-gen-expr-pure var
                                       (make-pexpr-gin
                                        :context gin.context
                                        :inscope gin.inscope
                                        :prec-tags gin.prec-tags
                                        :fn gin.fn
                                        :fn-guard gin.fn-guard
                                        :compst-var gin.compst-var
                                        :thm-index gin.thm-index
                                        :names-to-avoid gin.names-to-avoid
                                        :proofs gin.proofs)
                                       state))
                   ((erp pointerp)
                    (cond
                     ((equal struct.type (type-struct tag))
                      (retok nil))
                     ((equal struct.type (type-pointer (type-struct tag)))
                      (retok t))
                     (t (reterr
                         (msg "The structure ~x0 of type ~x1 ~
                               does not have the expected type ~x2 or ~x3. ~
                               This is indicative of ~
                               unreachable code under the guards, ~
                               given that the code is guard-verified."
                              var
                              struct.type
                              (type-struct tag)
                              (type-pointer (type-struct tag)))))))
                   ((when (and pointerp
                               (not (member-eq var gin.affect))))
                    (reterr
                     (msg "The structure ~x0 ~
                           is being written to by pointer, ~
                           but it is not among the variables ~x1 ~
                           currently affected."
                          var gin.affect)))
                   ((erp (pexpr-gout index))
                    (atc-gen-expr-pure index-term
                                       (make-pexpr-gin
                                        :context gin.context
                                        :inscope gin.inscope
                                        :prec-tags gin.prec-tags
                                        :fn gin.fn
                                        :fn-guard gin.fn-guard
                                        :compst-var gin.compst-var
                                        :thm-index struct.thm-index
                                        :names-to-avoid struct.names-to-avoid
                                        :proofs (and struct.thm-name t))
                                       state))
                   ((unless (type-integerp index.type))
                    (reterr
                     (msg "The structure ~x0 of type ~x1 ~
                           is being written to with ~
                           an index ~x2 of type ~x3, ~
                           instead of a C integer type as expected. ~
                           This is indicative of ~
                           unreachable code under the guards, ~
                           given that the code is guard-verified."
                          var struct.type index-term index.type)))
                   ((erp (pexpr-gout elem))
                    (atc-gen-expr-pure elem-term
                                       (make-pexpr-gin
                                        :context gin.context
                                        :inscope gin.inscope
                                        :prec-tags gin.prec-tags
                                        :fn gin.fn
                                        :fn-guard gin.fn-guard
                                        :compst-var gin.compst-var
                                        :thm-index index.thm-index
                                        :names-to-avoid index.names-to-avoid
                                        :proofs (and index.thm-name t))
                                       state))
                   ((unless (equal elem.type elem-type))
                    (reterr
                     (msg "The structure ~x0 of type ~x1 ~
                           is being written to with ~
                           a member array element ~x2 of type ~x3, ~
                           instead of type ~x4 as expected.
                           This is indicative of ~
                           unreachable code under the guards, ~
                           given that the code is guard-verified."
                          var struct.type elem-term elem.type elem-type)))
                   (asg-mem (if pointerp
                                (make-expr-memberp :target struct.expr
                                                   :name member)
                              (make-expr-member :target struct.expr
                                                :name member)))
                   (asg (make-expr-binary
                         :op (binop-asg)
                         :arg1 (make-expr-arrsub :arr asg-mem
                                                 :sub index.expr)
                         :arg2 elem.expr))
                   (stmt (stmt-expr asg))
                   (item (block-item-stmt stmt))
                   ((erp (stmt-gout body))
                    (atc-gen-stmt body-term
                                  (change-stmt-gin
                                   gin
                                   :var-term-alist var-term-alist-body
                                   :thm-index elem.thm-index
                                   :names-to-avoid elem.names-to-avoid
                                   :proofs nil)
                                  state))
                   (limit (pseudo-term-fncall 'binary-+
                                              (list (pseudo-term-quote 4)
                                                    body.limit))))
                (retok (make-stmt-gout
                        :items (cons item body.items)
                        :type body.type
                        :term term
                        :context (make-atc-context :preamble nil :premises nil)
                        :limit limit
                        :events (append struct.events
                                        index.events
                                        elem.events
                                        body.events)
                        :thm-name nil
                        :thm-index body.thm-index
                        :names-to-avoid body.names-to-avoid))))
             ((mv info? innermostp errorp) (atc-check-var var gin.inscope))
             ((when errorp)
              (reterr
               (msg "When generating C code for the function ~x0, ~
                     a new variable ~x1 has been encountered ~
                     that has the same symbol name as, ~
                     but different package name from, ~
                     a variable already in scope. ~
                     This is disallowed."
                    gin.fn var)))
             ((when (eq wrapper? 'declar))
              (b* (((erp decl-item
                         decl-term
                         decl-limit
                         decl-events
                         decl-thm
                         new-inscope
                         new-context
                         thm-index
                         names-to-avoid)
                    (atc-gen-block-item-var-decl var
                                                 info?
                                                 val-term
                                                 gin
                                                 state))
                   ((erp (stmt-gout body))
                    (atc-gen-stmt body-term
                                  (change-stmt-gin
                                   gin
                                   :context new-context
                                   :var-term-alist var-term-alist-body
                                   :inscope new-inscope
                                   :thm-index thm-index
                                   :names-to-avoid names-to-avoid
                                   :proofs (and decl-thm t))
                                  state))
                   (term (acl2::close-lambdas
                          `((lambda (,var) ,body.term) ,decl-term)))
                   (items-gout
                    (atc-gen-block-item-list-cons
                     term
                     decl-item
                     decl-limit
                     decl-events
                     decl-thm
                     body.items
                     body.limit
                     body.events
                     body.thm-name
                     body.type
                     body.context
                     (change-stmt-gin
                      gin
                      :thm-index body.thm-index
                      :names-to-avoid body.names-to-avoid
                      :proofs (and body.thm-name t))
                     state)))
                (retok items-gout)))
             ((unless (atc-var-assignablep var innermostp gin.affect))
              (reterr
               (msg "When generating C code for the function ~x0, ~
                     an attempt is being made ~
                     to modify a non-assignable variable ~x1."
                    gin.fn var)))
             ((when (eq wrapper? 'assign))
              (b* (((erp asg-item
                         asg-term
                         asg-limit
                         asg-events
                         asg-thm
                         new-inscope
                         new-context
                         thm-index
                         names-to-avoid)
                    (atc-gen-block-item-var-asg var
                                                info?
                                                val-term
                                                gin
                                                state))
                   ((erp (stmt-gout body))
                    (atc-gen-stmt body-term
                                  (change-stmt-gin
                                   gin
                                   :context new-context
                                   :var-term-alist var-term-alist-body
                                   :inscope new-inscope
                                   :thm-index thm-index
                                   :names-to-avoid names-to-avoid
                                   :proofs (and asg-thm t))
                                  state))
                   (term (acl2::close-lambdas
                          `((lambda (,var) ,body.term) ,asg-term)))
                   (items-gout
                    (atc-gen-block-item-list-cons
                     term
                     asg-item
                     asg-limit
                     asg-events
                     asg-thm
                     body.items
                     body.limit
                     body.events
                     body.thm-name
                     body.type
                     body.context
                     (change-stmt-gin
                      gin
                      :thm-index body.thm-index
                      :names-to-avoid body.names-to-avoid
                      :proofs (and body.thm-name t))
                     state)))
                (retok items-gout)))
             ((unless (eq wrapper? nil))
              (reterr (raise "Internal error: LET wrapper is ~x0." wrapper?)))
             ((unless (atc-affecting-term-for-let-p val-term gin.prec-fns))
              (reterr
               (msg "When generating C code for the function ~x0, ~
                     we encountered a LET binding ~
                     of the variable ~x1 to the term ~x2 ~
                     that does not have any of the allowed forms. ~
                     See the user documentation."
                    gin.fn var val-term)))
             ((erp)
              (atc-ensure-formals-not-lost (list var)
                                           gin.affect
                                           gin.typed-formals
                                           gin.fn
                                           wrld))
             ((erp (stmt-gout xform))
              (atc-gen-stmt val-term
                            (change-stmt-gin gin
                                             :affect (list var)
                                             :loop-flag nil
                                             :proofs gin.proofs)
                            state))
             ((unless (type-case xform.type :void))
              (reterr
               (msg "When generating C code for the function ~x0, ~
                     a LET has been encountered ~
                     whose unwrapped term ~x1 ~
                     to which the variable is bound ~
                     has the non-void type ~x2, ~
                     which is disallowed."
                    gin.fn val-term xform.type)))
             ((erp (stmt-gout body))
              (atc-gen-stmt body-term
                            (change-stmt-gin
                             gin
                             :var-term-alist var-term-alist-body
                             :thm-index xform.thm-index
                             :names-to-avoid xform.names-to-avoid
                             :proofs nil)
                            state))
             (items (append xform.items body.items))
             (type body.type)
             (limit (pseudo-term-fncall
                     'binary-+
                     (list xform.limit body.limit))))
          (retok (make-stmt-gout
                  :items items
                  :type type
                  :term term
                  :context (make-atc-context :preamble nil :premises nil)
                  :limit limit
                  :events (append xform.events body.events)
                  :thm-name nil
                  :thm-index body.thm-index
                  :names-to-avoid body.names-to-avoid))))
       ((when (and (pseudo-term-case term :var)
                   (equal gin.affect
                          (list (pseudo-term-var->name term)))))
        (if gin.loop-flag
            (reterr
             (msg "A loop body must end with ~
                   a recursive call on every path, ~
                   but in the function ~x0 it ends with ~x1 instead."
                  gin.fn term))
          (retok (atc-gen-block-item-list-none term gin state))))
       ((mv okp terms) (fty-check-list-call term))
       ((when okp)
        (b* (((unless (>= (len terms) 2))
              (reterr (raise "Internal error: MV applied to ~x0." terms)))
             ((when gin.loop-flag)
              (reterr
               (msg "A loop body must end with ~
                     a recursive call on every path, ~
                     but in the function ~x0 ~
                     it ends with ~x1 instead."
                    gin.fn term))))
          (cond
           ((equal terms gin.affect)
            (retok (make-stmt-gout :items nil
                                   :type (type-void)
                                   :term term
                                   :context (make-atc-context :preamble nil
                                                              :premises nil)
                                   :limit (pseudo-term-quote 1)
                                   :events nil
                                   :thm-name nil
                                   :thm-index gin.thm-index
                                   :names-to-avoid gin.names-to-avoid)))
           ((equal (cdr terms) gin.affect)
            (b* ((gin (change-stmt-gin gin :proofs nil)))
              (atc-gen-return-stmt (car terms) gin nil state)))
           (t (reterr
               (msg "When generating C code for the function ~x0, ~
                     a term ~x0 has been encountered, ~
                     which is disallowed."
                    gin.fn term))))))
       ((mv okp loop-fn loop-args in-types loop-affect loop-stmt loop-limit)
        (atc-check-loop-call term gin.var-term-alist gin.prec-fns))
       ((when okp)
        (b* (((when gin.loop-flag)
              (reterr
               (msg "A loop body must end with ~
                     a recursive call on every path, ~
                     but in the function ~x0 it ends with ~x1 instead."
                    gin.fn term)))
             (formals (formals+ loop-fn wrld))
             ((unless (equal formals loop-args))
              (reterr
               (msg "When generating C code for the function ~x0, ~
                     a call of the recursive function ~x1 ~
                     has been encountered ~
                     that is not on its formals, ~
                     but instead on the arguments ~x2.
                     This is disallowed; see the ATC user documentation."
                    gin.fn loop-fn loop-args)))
             ((unless (equal gin.affect loop-affect))
              (reterr
               (msg "When generating C code for the function ~x0, ~
                     a call of the recursive function ~x1 ~
                     has been encountered
                     that represents a loop affecting ~x2, ~
                     which differs from the variables ~x3 ~
                     being affected here."
                    gin.fn loop-fn loop-affect gin.affect)))
             (infos (atc-get-vars formals gin.inscope))
             ((unless (atc-var-info-listp infos))
              (reterr
               (raise "Internal error: not all formals ~x0 have information ~x1."
                      formals infos)))
             (types (atc-var-info-list->type-list infos))
             ((unless (equal types in-types))
              (reterr
               (msg "The loop function ~x0 with input types ~x1 ~
                     is applied to terms ~x2 returning ~x3. ~
                     This is indicative of dead code under the guards, ~
                     given that the code is guard-verified."
                    loop-fn in-types formals types)))
             (limit (pseudo-term-fncall
                     'binary-+
                     (list (pseudo-term-quote 3)
                           loop-limit))))
          (retok (make-stmt-gout
                  :items (list (block-item-stmt loop-stmt))
                  :type (type-void)
                  :term term
                  :context (make-atc-context :preamble nil :premises nil)
                  :limit limit
                  :events nil
                  :thm-name nil
                  :thm-index gin.thm-index
                  :names-to-avoid gin.names-to-avoid))))
       ((when (equal term `(,gin.fn ,@(formals+ gin.fn wrld))))
        (if gin.loop-flag
            (retok (make-stmt-gout
                    :items nil
                    :type (type-void)
                    :term term
                    :context (make-atc-context :preamble nil :premises nil)
                    :limit (pseudo-term-quote 1)
                    :events nil
                    :thm-name nil
                    :thm-index gin.thm-index
                    :names-to-avoid gin.names-to-avoid))
          (reterr
           (msg "When generating code for the recursive function ~x0, ~
                 a recursive call to the loop function occurs ~
                 not at the end of the computation on some path."
                gin.fn))))
       ((mv okp called-fn arg-terms in-types out-type fn-affect limit)
        (atc-check-cfun-call term gin.var-term-alist gin.prec-fns wrld))
       ((when (and okp
                   (type-case out-type :void)))
        (b* (((when gin.loop-flag)
              (reterr
               (msg "A loop body must end with ~
                     a recursive call on every path, ~
                     but in the function ~x0 it ends with ~x1 instead."
                    gin.fn term)))
             ((unless (atc-check-cfun-call-args (formals+ called-fn wrld)
                                                in-types
                                                arg-terms))
              (reterr
               (msg "The call ~x0 does not satisfy the restrictions ~
                     on array arguments being identical to the formals."
                    term)))
             ((unless (equal gin.affect fn-affect))
              (reterr
               (msg "When generating C code for the function ~x0, ~
                     a call of the non-recursive function ~x1 ~
                     has been encountered that affects ~x2, ~
                     which differs from the variables ~x3 ~
                     being affected here."
                    gin.fn loop-fn fn-affect gin.affect)))
             ((erp (pexprs-gout args))
              (atc-gen-expr-pure-list arg-terms
                                      (make-pexprs-gin
                                       :context gin.context
                                       :inscope gin.inscope
                                       :prec-tags gin.prec-tags
                                       :fn gin.fn
                                       :fn-guard gin.fn-guard
                                       :compst-var gin.compst-var
                                       :thm-index gin.thm-index
                                       :names-to-avoid gin.names-to-avoid
                                       :proofs gin.proofs)
                                      state))
             ((unless (equal args.types in-types))
              (reterr
               (msg "The function ~x0 with input types ~x1 is applied to ~
                     expression terms ~x2 returning ~x3. ~
                     This is indicative of provably dead code, ~
                     given that the code is guard-verified."
                    called-fn in-types arg-terms args.types)))
             (call-expr (make-expr-call :fun (make-ident
                                              :name (symbol-name called-fn))
                                        :args args.exprs)))
          (retok (make-stmt-gout
                  :items (list (block-item-stmt (stmt-expr call-expr)))
                  :type (type-void)
                  :term term
                  :context (make-atc-context :preamble nil :premises nil)
                  :limit `(binary-+ '5 ,limit)
                  :events args.events
                  :thm-name nil
                  :thm-index args.thm-index
                  :names-to-avoid args.names-to-avoid))))
       ((when gin.loop-flag)
        (reterr
         (msg "A loop body must end with ~
               a recursive call on every path, ~
               but in the function ~x0 it ends with ~x1 instead."
              gin.fn term))))
    (atc-gen-return-stmt term gin gin.affect state))

  :prepwork ((local (in-theory (disable equal-of-type-pointer
                                        equal-of-type-array
                                        equal-of-type-struct))))

  :measure (pseudo-term-count term)

  :hints (("Goal" :in-theory (enable o< o-finp)))

  :verify-guards nil ; done below

  ///

  (defrulel pseudo-termp-when-symbolp
    (implies (symbolp x)
             (pseudo-termp x))
    :enable pseudo-termp)

  (verify-guards atc-gen-stmt
    :hints (("Goal"
             :do-not '(preprocess) ; for speed
             :in-theory
             (e/d (pseudo-termp
                   length
                   true-listp-when-atc-var-info-option-listp-rewrite
                   acl2::true-listp-when-pseudo-event-form-listp-rewrite)
                  (atc-gen-stmt))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::defprod lstmt-gin
  :short "Inputs for C loop statement generation."
  :long
  (xdoc::topstring
   (xdoc::p
    "This does not include the term, which is passed as a separate input.")
   (xdoc::p
    "The @('measure-for-fn') component is the name of the
     locally generated measure function for
     the target function @('fn') that represents the loop."))
  ((context atc-contextp)
   (typed-formals atc-symbol-varinfo-alist)
   (inscope atc-symbol-varinfo-alist-list)
   (fn symbol)
   (fn-guard symbol)
   (compst-var symbol)
   (fenv-var symbol)
   (limit-var symbol)
   (measure-for-fn symbol)
   (measure-formals symbol-list)
   (prec-fns atc-symbol-fninfo-alist)
   (prec-tags atc-string-taginfo-alist)
   (prec-objs atc-string-objinfo-alist)
   (thm-index pos)
   (names-to-avoid symbol-list)
   (proofs bool))
  :pred lstmt-ginp)

;;;;;;;;;;;;;;;;;;;;

(fty::defprod lstmt-gout
  :short "Outputs for C loop statement generation."
  :long
  (xdoc::topstring
   (xdoc::p
    "The generated (loop) statement is @('stmt').
     We may actually split it into a test and body at some point.")
   (xdoc::p
    "We also return the test and body ACL2 terms.")
   (xdoc::p
    "We return two limit terms:
     one for just the body,
     and one for the whole loop."))
  ((stmt stmtp)
   (test-term pseudo-term)
   (body-term pseudo-term)
   (affect symbol-list)
   (limit-body pseudo-term)
   (limit-all pseudo-term)
   (events pseudo-event-form-list)
   (thm-name symbol)
   (thm-index pos)
   (names-to-avoid symbol-list))
  :pred lstmt-goutp)

;;;;;;;;;;

(defirrelevant irr-lstmt-gout
  :short "An irrelevant output for C loop statement generation."
  :type lstmt-goutp
  :body (make-lstmt-gout :stmt (irr-stmt)
                         :test-term nil
                         :body-term nil
                         :affect nil
                         :limit-body nil
                         :limit-all nil
                         :events nil
                         :thm-name nil
                         :thm-index 1
                         :names-to-avoid nil))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atc-gen-loop-stmt ((term pseudo-termp) (gin lstmt-ginp) state)
  :returns (mv erp (gout lstmt-goutp))
  :short "Generate a C loop statement from an ACL2 term."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is called on loop terms (see user documentation).")
   (xdoc::p
    "The term must be an @(tsee if).
     If the test is an @(tsee mbt),
     test and `else' branch are ignored,
     while the `then' branch is recursively processed.
     Otherwise, the test must be an expression term returning a boolean
     from which we generate the loop test;
     the `then' branch must be a statement term,
     from which we generate the loop body;
     and the `else' branch must be either a single variable
     or an @(tsee mv) call on variables,
     which must be a subset of the function's formals,
     and from those variables we determine
     the variables affected by the loop.
     The statement term in the `then' branch
     must affect the variables found in the `else' branch.
     We return
     the term that represents the loop test,
     the term that represent the loop body
     and the variables affected by the loop.
     The loop test and body are used to generate more modular theorems.")
   (xdoc::p
    "Note that we push a new scope before processing the loop body.
     This is because the loop body is a block, which opens a new scope in C.")
   (xdoc::p
    "We return a limit that suffices
     to execute @(tsee exec-stmt-while) on (the test and body of)
     the loop statement, as follows.
     We need 1 to get to executing the test,
     which is pure and so does not contribute to the overall limit.
     If the test is true, we need to add the limit to execute the body.
     After that, @(tsee exec-stmt-while) is called recursively,
     decrementing the limit:
     given that we know that the loop function terminates,
     its measure must suffice as the limit.
     The loop function decreases the measure by at least 1 (maybe more)
     at every recursive call, so the limit does not decrease any faster,
     and we will never run out of the limit before the measure runs out.
     Thus the measure is an over-approximation for the limit, which is sound.
     We also note that the measure refers to the initial call of the function,
     while here it would suffice
     to take the measure at the first recursive call,
     but taking the whole measure is simpler,
     and again it is sound to over-appoximate.
     Note that we use the measure function for @('fn')
     that is generated by ATC,
     for the reasons explained in @(tsee atc-gen-loop-measure-fn).
     Besides the @('limit-all') result,
     which is the limit for the whole loop,
     we also return @('limit-body'), which is just for the loop body;
     this is in support for more modular proofs. "))
  (b* (((reterr) (change-lstmt-gout (irr-lstmt-gout)
                                    :stmt (make-stmt-while :test (irr-expr)
                                                           :body (irr-stmt))))
       ((lstmt-gin gin) gin)
       (wrld (w state))
       ((mv okp test-term then-term else-term) (fty-check-if-call term))
       ((unless okp)
        (reterr
         (msg "When generating C loop code for the recursive function ~x0, ~
               a term ~x1 that is not an IF has been encountered."
              gin.fn term)))
       ((mv mbtp &) (check-mbt-call test-term))
       ((when mbtp) (atc-gen-loop-stmt then-term gin state))
       ((erp (pexpr-gout test))
        (atc-gen-expr-bool test-term
                           (make-pexpr-gin
                            :context gin.context
                            :inscope gin.inscope
                            :prec-tags gin.prec-tags
                            :fn gin.fn
                            :fn-guard gin.fn-guard
                            :compst-var gin.compst-var
                            :thm-index gin.thm-index
                            :names-to-avoid gin.names-to-avoid
                            :proofs gin.proofs)
                           state))
       (formals (formals+ gin.fn wrld))
       ((mv okp affect)
        (b* (((when (member-eq else-term formals)) (mv t (list else-term)))
             ((mv okp terms) (fty-check-list-call else-term))
             ((when (and okp
                         (subsetp-eq terms formals)))
              (mv t terms)))
          (mv nil nil)))
       ((unless okp)
        (reterr
         (msg "The 'else' branch ~x0 of the function ~x1, ~
               which should be the non-recursive branch, ~
               does not have the required form. ~
               See the user documentation."
              else-term gin.fn)))
       ((erp (stmt-gout body))
        (atc-gen-stmt then-term
                      (make-stmt-gin
                       :context gin.context
                       :var-term-alist nil
                       :typed-formals gin.typed-formals
                       :inscope (cons nil gin.inscope)
                       :loop-flag t
                       :affect affect
                       :fn gin.fn
                       :fn-guard gin.fn-guard
                       :compst-var gin.compst-var
                       :prec-fns gin.prec-fns
                       :prec-tags gin.prec-tags
                       :prec-objs gin.prec-objs
                       :thm-index test.thm-index
                       :names-to-avoid test.names-to-avoid
                       :proofs (and test.thm-name t))
                      state))
       ((unless (type-case body.type :void))
        (reterr
         (raise "Internal error: ~
                 the loop body ~x0 of ~x1 ~ returns type ~x2."
                then-term gin.fn body.type)))
       (body-stmt (make-stmt-compound :items body.items))
       (stmt (make-stmt-while :test test.expr :body body-stmt))
       ((when (eq gin.measure-for-fn 'quote))
        (reterr
         (raise "Internal error: the measure function is QUOTE.")))
       (measure-call (pseudo-term-fncall gin.measure-for-fn
                                         gin.measure-formals))
       (limit `(binary-+ '1 (binary-+ ,body.limit ,measure-call))))
    (retok (make-lstmt-gout :stmt stmt
                            :test-term test-term
                            :body-term then-term
                            :affect affect
                            :limit-body body.limit
                            :limit-all limit
                            :thm-name nil
                            :thm-index body.thm-index
                            :names-to-avoid body.names-to-avoid)))
  :measure (pseudo-term-count term)
  :hints (("Goal" :in-theory (enable o< o-finp)))
  :guard-hints (("Goal" :in-theory (enable acl2::pseudo-fnsym-p)))
  ///

  (defret stmt-kind-of-atc-gen-loop-stmt
    (equal (stmt-kind (lstmt-gout->stmt gout)) :while)
    :hints (("Goal" :induct t))))
