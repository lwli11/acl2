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

(include-book "../../language/dynamic-semantics")

(local (xdoc::set-default-parents atc-symbolic-execution-rules))

(local (include-book "kestrel/built-ins/disable" :dir :system))
(local (acl2::disable-most-builtin-logic-defuns))
(local (acl2::disable-builtin-rewrite-rules-for-defaults))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection atc-exec-block-item-rules
  :short "Rules for @(tsee exec-block-item)."

  (defruled exec-block-item-when-declon
    (implies (and (syntaxp (quotep item))
                  (equal (block-item-kind item) :declon)
                  (not (zp limit))
                  (equal declon (block-item-declon->get item))
                  (equal var+scspec+tyname+init
                         (obj-declon-to-ident+scspec+tyname+init declon))
                  (equal var (mv-nth 0 var+scspec+tyname+init))
                  (equal scspec (mv-nth 1 var+scspec+tyname+init))
                  (equal tyname (mv-nth 2 var+scspec+tyname+init))
                  (equal init (mv-nth 3 var+scspec+tyname+init))
                  (scspecseq-case scspec :none)
                  init
                  (equal type (tyname-to-type tyname))
                  (not (type-case type :array))
                  (equal ival+compst1
                         (exec-initer init compst fenv (1- limit)))
                  (equal ival (mv-nth 0 ival+compst1))
                  (equal compst1 (mv-nth 1 ival+compst1))
                  (init-valuep ival)
                  (equal val (init-value-to-value type ival))
                  (valuep val)
                  (equal compst2 (create-var var val compst1))
                  (compustatep compst2))
             (equal (exec-block-item item compst fenv limit)
                    (mv nil compst2)))
    :enable exec-block-item)

  (defruled exec-block-item-when-stmt
    (implies (and (syntaxp (quotep item))
                  (equal (block-item-kind item) :stmt)
                  (not (zp limit)))
             (equal (exec-block-item item compst fenv limit)
                    (exec-stmt (block-item-stmt->get item)
                               compst
                               fenv
                               (1- limit))))
    :enable exec-block-item)

  (defval *atc-exec-block-item-rules*
    '(exec-block-item-when-declon
      exec-block-item-when-stmt
      (:e block-item-kind)
      (:e block-item-declon->get)
      (:e block-item-stmt->get)
      (:e obj-declon-to-ident+scspec+tyname+init)
      (:e scspecseq-kind)
      return-type-of-init-value-single)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defsection atc-exec-block-item-list-rules
  :short "Rules for @(tsee exec-block-item-list)."
  :long
  (xdoc::topstring
   (xdoc::p
    "The first two rules should be obvious in purpose.")
   (xdoc::p
    "The third rule is used in modular proofs.
     Instead of decomposing a non-empty list of block items
     into the first one and the list of remaining ones,
     it decomposes them into the singleton list of the first one
     and the list of remaining ones."))

  (defruled exec-block-item-list-of-nil
    (implies (and (not (zp limit))
                  (compustatep compst))
             (equal (exec-block-item-list nil compst fenv limit)
                    (mv nil compst)))
    :enable exec-block-item-list)

  (defruled exec-block-item-list-when-consp
    (implies (and (syntaxp (quotep items))
                  (consp items)
                  (not (zp limit))
                  (equal val?+compst1
                         (exec-block-item (car items) compst fenv (1- limit)))
                  (equal val? (mv-nth 0 val?+compst1))
                  (value-optionp val?)
                  (equal compst1 (mv-nth 1 val?+compst1)))
             (equal (exec-block-item-list items compst fenv limit)
                    (if (valuep val?)
                        (mv val? compst1)
                      (exec-block-item-list (cdr items)
                                            compst1
                                            fenv
                                            (1- limit)))))
    :enable exec-block-item-list)

  (defruled exec-block-item-list-of-append-one
    (implies (and (syntaxp (quotep items))
                  (consp items)
                  (not (zp limit))
                  (equal val?+compst1
                         (exec-block-item-list (list (car items))
                                               compst
                                               fenv
                                               limit))
                  (equal val? (mv-nth 0 val?+compst1))
                  (value-optionp val?)
                  (equal compst1 (mv-nth 1 val?+compst1)))
             (equal (exec-block-item-list items compst fenv limit)
                    (if (valuep val?)
                        (mv val? compst1)
                      (exec-block-item-list (cdr items)
                                            compst1
                                            fenv
                                            (1- limit)))))
    :expand (exec-block-item-list (list (car items)) compst fenv limit)
    :enable exec-block-item-list)

  (defval *atc-exec-block-item-list-rules*
    '(exec-block-item-list-of-nil
      exec-block-item-list-when-consp)))
