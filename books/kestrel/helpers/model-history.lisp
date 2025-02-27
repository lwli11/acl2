(in-package "HELP")

; A simple model to recommend hints that worked recently.
;
; Copyright (C) 2022-2023 Kestrel Institute
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(include-book "recommendations")
(include-book "std/util/bstar" :dir :system)
(include-book "kestrel/utilities/forms" :dir :system)
(include-book "kestrel/utilities/nat-to-string" :dir :system)
(include-book "kestrel/utilities/print-levels" :dir :system)
(include-book "kestrel/world-light/world-since-boot-strap" :dir :system)
(include-book "kestrel/lists-light/firstn-def" :dir :system)
(include-book "kestrel/utilities/rational-printing" :dir :system)

(mutual-recursion
 ;; Extends ACC with hint-lists from the EVENT.
 ;; TODO: Many of the structured constructs here can no longer appear, due to how we are getting defthm events from the world
 (defun hint-lists-from-history-event (event acc)
   (declare (xargs :guard (and ;; event
                           (true-listp acc)
                           )
                   :verify-guards nil ; todo
                   ))
   (if (not (consp event))
       (er hard? 'hint-lists-from-history-event "Unexpected command (not a cons!): ~x0." event)
     (if (eq 'local (acl2::ffn-symb event)) ; (local e1)
         (hint-lists-from-history-event (acl2::farg1 event) acc)
       (if (eq 'encapsulate (acl2::ffn-symb event)) ; (encapsulate <sigs> e1 e2 ...)
           (hint-lists-from-history-events (rest (acl2::fargs event)) acc)
         (if (eq 'progn (acl2::ffn-symb event)) ; (progn e1 e2 ...)
             (hint-lists-from-history-events (acl2::fargs event) acc)
           (if (eq 'skip-proofs (acl2::ffn-symb event)) ; (skip-proofs e1), needed because we skip-proofs when evaluating models on a book
               (hint-lists-from-history-event (acl2::farg1 event) acc)
             (if ;; todo: what else can we harvest hints from?
                 (not (member-eq (acl2::ffn-symb event) '(defthm defthmd)))
                 acc
               (let ((res (assoc-keyword :hints (rest (rest (acl2::fargs event))))))
                 (if (not res)
                     acc
                   (let ((hints (cadr res)))
                     (if (member-equal hints acc) ; todo: also look for equivalent hints?
                         acc
                       (cons hints acc))))))))))))

 ;; Extends ACC with hint-lists from the EVENTS.  Hint lists from earlier EVENTS end up deeper in the result,
 ;; which seems good because more recent events are likely to be more relevant (todo: but what about dups).
 (defun hint-lists-from-history-events (events ; oldest first
                                        acc)
   (declare (xargs :guard (and (true-listp events)
                               (true-listp acc))))
   (if (endp events)
       acc
     (hint-lists-from-history-events (rest events)
                                     (hint-lists-from-history-event (first events) acc)))))

(defun make-exact-hint-recs (hint-lists ; newest first
                             base-name num confidence-percent acc)
  (declare (xargs :guard (and (true-listp hint-lists)
                              (stringp base-name)
                              (posp num)
                              (confidence-percentp confidence-percent)
                              (true-listp acc))))
  (if (endp hint-lists)
      (reverse acc)
    (make-exact-hint-recs (rest hint-lists)
                          base-name
                          (+ 1 num)
                          confidence-percent ; todo: allow this to decrease as we go
                          (cons (make-rec (concatenate 'string base-name (acl2::nat-to-string num))
                                          :exact-hints ; new kind of rec, to replace all hints (todo: if the rec is expressible as something simpler, use that)
                                          (first hint-lists)
                                          confidence-percent
                                          nil ; no book-map (TODO: What about for things inside encapsulates?)
                                          )
                                acc))))

;; Extracts hints from events in the command history.  In the result, hints for more recent events come first and have lower numbers.
;; The result should contain no exact duplicates, but the recs (which are all of type :exact-hints) might effectively duplicate other recommendations.
(defund make-recs-from-history-events (num-recs
                                       events ; oldest first
                                       )
  (declare (xargs :guard (natp num-recs)
                  :verify-guards nil ;todo
                  ))
  (make-exact-hint-recs (acl2::firstn num-recs (hint-lists-from-history-events events nil)) ; newest first
                        "history"
                        1 ; start numbering at 1
                        3 ; confidence-percent (quite high)
                        nil))

;; Returns (mv erp recs state).
;; TODO: Try to merge these in with the existing theorem-hints.  Or rely on try-add-enable-hint to do that?  But these are :exact-hints.
(defun make-recs-from-history (num-recs print state)
  (declare (xargs :guard (natp num-recs)
                  :mode :program
                  :stobjs state))
  (b* ((- (and (acl2::print-level-at-least-tp print)
               (cw "Making ~x0 :history recommendations: " ; the line is ended below when we print the time
                   num-recs)))
       (print-timep (acl2::print-level-at-least-tp print))
       ((mv start-time state) (if print-timep (acl2::get-real-time state) (mv 0 state)))
       (events ;;(acl2::get-command-sequence-fn 1 :max state)
        (acl2::top-level-defthms-in-world (w state)))
       (recs (make-recs-from-history-events num-recs events))
       ((mv done-time state) (if print-timep (acl2::get-real-time state) (mv 0 state)))
       (- (and print-timep (prog2$ (acl2::print-to-hundredths (- done-time start-time))
                                   (cw "s~%") ; s = seconds
                                   ))))
    (mv nil recs state)))
