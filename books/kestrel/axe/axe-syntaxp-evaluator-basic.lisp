; A basic axe-syntaxp-evaluator
;
; Copyright (C) 2008-2011 Eric Smith and Stanford University
; Copyright (C) 2013-2022 Kestrel Institute
; Copyright (C) 2016-2020 Kestrel Technology, LLC
;
; License: A 3-clause BSD license. See the file books/3BSD-mod.txt.
;
; Author: Eric Smith (eric.smith@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "axe-syntax-functions-boolean")
(include-book "axe-syntax-functions-bv")
(include-book "make-axe-syntaxp-evaluator")

(make-axe-syntaxp-evaluator 'basic '(not-quotep ;drop?
                                     heavier-dag-term
                                     ;; bv-term-syntaxp
                                     is-a-myif
                                     not-is-a-myif ;drop?
                                     syntactic-booleanp
                                     syntactic-call-of
                                     syntactic-constantp
                                     ;; syntactic-variablep ; maybe add this
                                     ;; is-the-variablep ; maybe add this
                                     should-reverse-equality
                                     bv-array-write-nest-ending-inp-axe
                                     bvcat-nest-with-low-zerosp-axe
                                     bv-array-write-nest-with-val-at-indexp-axe
                                     term-should-be-trimmed-axe-plus-one
                                     term-should-be-trimmed-axe
                                     should-commute-axe-argsp
                                     should-commute-axe-args-increasingp))
