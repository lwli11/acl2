; Bits and sbits lemmas for SVL rewriting.

; SVL - Listener-based Hierachical Symbolic Vector Hardware Analysis Framework
; Copyright (C) 2019 Centaur Technology
; Copyright (C) 2022 Intel Corporation
;
; License: (An MIT/X11-style license)
;
;   Permission is hereby granted, free of charge, to any person obtaining a
;   copy of this software and associated documentation files (the "Software"),
;   to deal in the Software without restriction, including without limitation
;   the rights to use, copy, modify, merge, publish, distribute, sublicense,
;   and/or sell copies of the Software, and to permit persons to whom the
;   Software is furnished to do so, subject to the following conditions:
;
;   The above copyright notice and this permission notice shall be included in
;   all copies or substantial portions of the Software.
;
;   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
;   FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
;   DEALINGS IN THE SOFTWARE.
;
; Original author: Mertcan Temel <mert@centtech.com>

(in-package "SVL")

(include-book "svex-eval-wog")

(include-book "fnc-defs")

(include-book "4vec-lemmas")

(local
 (in-theory (enable bits sbits)))

(local
 (rp::fetch-new-events
  (include-book "arithmetic-5/top" :dir :system)
  use-arithmetic-5
  :disabled t))

(def-rp-rule bits-of-3vec-fix
  (implies (and (natp a)
                (natp b))
           (equal (bits (sv::3vec-fix x) a b)
                  (sv::3vec-fix (bits x a b))))
  :otf-flg t
  :hints (("Goal"
           :use ((:instance 4vec-part-select-of-3vec-fix))
           :do-not-induct t
           :in-theory (e/d
                       (bits
                        ;;logior-of-logtail-same-size
                        )
                       (4vec-part-select-of-3vec-fix
                        ;;BITOPS::LOGHEAD-OF-LOGIOR
                        ;;BITOPS::LOGTAIL-OF-LOGIOR
                        )))))



(encapsulate
  nil

  ;;low priority lemmas:

  (local
   (use-arithmetic-5 t))

  (def-rp-rule :disabled t
    bits-of-a-bit-for-big-start
    (implies (and (bitp x)
                  (natp size)
                  (integerp start)
                  (> start 0))
             (and (equal (bits x start size)
                         0)))
    :hints (("Goal"
             :in-theory (e/d (4vec-part-select
                              SV::4VEC->UPPER
                              SV::4VEC->LOWER
                              4VEC-RSH
                              4VEC-CONCAT
                              4VEC-SHIFT-CORE) ()))))

  (def-rp-rule :disabled t
    bits-01-of-a-bit
    (implies (and (bitp x))
             (and (equal (bits x 0 1)
                         x)))))

(encapsulate
  nil
  ;; 4vec-bitnot$lemmas

  ;; this has to have low priority
  (def-rp-rule :disabled-for-rp t
    4vec-bitnot$-of-bits-of-same-size
    (implies (syntaxp (and (consp (rp::ex-from-rp term))
                           (not (equal (car (rp::ex-from-rp term))
                                       'svex-env-fastlookup-wog))))
             (equal (4vec-bitnot$ size (bits term 0 size))
                    (4vec-bitnot$ size term)))
    :hints (("Goal"
             :use ((:instance |(4vec-bitnot$ size (4vec-part-select 0 size term))|))
             :in-theory (e/d (
                              bits
                              4VEC-BITNOT$)
                             ()))))

  (def-rp-rule :disabled-for-rp t
    4vec-bitand$-of-bits-of-same-size
    (and
     (implies (syntaxp (and (consp (rp::ex-from-rp val1))
                            (not (equal (car (rp::ex-from-rp val1))
                                        'svex-env-fastlookup-wog))))
              (equal (4vec-bitand$ size (bits val1 0 size) val2)
                     (4vec-bitand$ size val1 val2)))
     (implies (syntaxp (and (consp (rp::ex-from-rp val2))
                            (not (equal (car (rp::ex-from-rp val2))
                                        'svex-env-fastlookup-wog))))
              (equal (4vec-bitand$ size val1 (bits val2 0 size))
                     (4vec-bitand$ size val1 val2))))
    :hints (("Goal"
             :use ((:instance 4vec-bitand$-of-4vec-part-select-0-same-size))
             :in-theory (e/d (
                              bits
                              4VEC-BITand$)
                             ()))))

  (def-rp-rule :disabled-for-rp t
    4vec-bitor$-of-bits-of-same-size
    (and
     (implies (syntaxp (and (consp (rp::ex-from-rp val1))
                            (not (equal (car (rp::ex-from-rp val1))
                                        'svex-env-fastlookup-wog))))
              (equal (4vec-bitor$ size (bits val1 0 size) val2)
                     (4vec-bitor$ size val1 val2)))
     (implies (syntaxp (and (consp (rp::ex-from-rp val2))
                            (not (equal (car (rp::ex-from-rp val2))
                                        'svex-env-fastlookup-wog))))
              (equal (4vec-bitor$ size val1 (bits val2 0 size))
                     (4vec-bitor$ size val1 val2))))
    :hints (("Goal"
             :use ((:instance 4vec-bitor$-of-4vec-part-select-0-same-size))
             :in-theory (e/d (
                              bits
                              4vec-bitor$)
                             ()))))

  (def-rp-rule :disabled-for-rp t
    4vec-bitxor$-of-bits-of-same-size
    (and
     (implies (syntaxp (and (consp (rp::ex-from-rp val1))
                            (not (equal (car (rp::ex-from-rp val1))
                                        'svex-env-fastlookup-wog))))
              (equal (4vec-bitxor$ size (bits val1 0 size) val2)
                     (4vec-bitxor$ size val1 val2)))
     (implies (syntaxp (and (consp (rp::ex-from-rp val2))
                            (not (equal (car (rp::ex-from-rp val2))
                                        'svex-env-fastlookup-wog))))
              (equal (4vec-bitxor$ size val1 (bits val2 0 size))
                     (4vec-bitxor$ size val1 val2))))
    :hints (("Goal"
             :use ((:instance 4vec-bitxor$-of-4vec-part-select-0-same-size))
             :in-theory (e/d (
                              bits
                              4VEC-BITxor$)
                             ()))))

  (def-rp-rule 4vec-bitxor-of-4vec-concat$
    (implies (and (natp size))
             (equal (sv::4vec-bitxor x (4vec-concat$ size a b))
                    (4vec-concat$ size
                                  (sv::4vec-bitxor (bits x 0 size) a)
                                  (sv::4vec-bitxor (4vec-rsh size x) b))))
    :hints (("Goal"
             :use ((:instance 4vec-bitxor-of-4vec-concat))
             :in-theory (e/d (4vec-concat$) ()))))

  (add-svex-simplify-rule 4vec-bitxor-of-4vec-concat$)

  (def-rp-rule 4vec-bitand-of-4vec-concat$
    (implies (and (natp size))
             (equal (sv::4vec-bitand x (4vec-concat$ size a b))
                    (4vec-concat$ size
                                  (sv::4vec-bitand (bits x 0 size) a)
                                  (sv::4vec-bitand (4vec-rsh size x) b))))
    :hints (("Goal"
             :use ((:instance 4vec-bitand-of-4vec-concat))
             :in-theory (e/d (4vec-concat$) ()))))

  (add-svex-simplify-rule 4vec-bitand-of-4vec-concat$)

  (def-rp-rule 4vec-bitor-of-4vec-concat$
    (implies (and (natp size))
             (equal (sv::4vec-bitor x (4vec-concat$ size a b))
                    (4vec-concat$ size
                                  (sv::4vec-bitor (bits x 0 size) a)
                                  (sv::4vec-bitor (4vec-rsh size x) b))))
    :hints (("Goal"
             :use ((:instance 4vec-bitor-of-4vec-concat))
             :in-theory (e/d (4vec-concat$) ()))))

  (add-svex-simplify-rule 4vec-bitor-of-4vec-concat$)

  (def-rp-rule bits-of-4vec-bitnot
    (implies (and (natp size)
                  (natp start))
             (equal (bits (4vec-bitnot x) start size)
                    (4vec-bitnot$ size (bits x start size))))
    :hints (("Goal"
             :use ((:instance 4vec-part-select-of-4vec-bitnot)
                   (:instance 4vec-part-select-of-4vec-bitnot
                              (start 0)))
             :do-not '(preprocess)
             :in-theory (e/d (4vec-bitnot$
                              bits)
                             (sv::4vec-bitnot
                              sv::4vec)))))

  (add-svex-simplify-rule bits-of-4vec-bitnot)

  (defthmd bits-of-4vec-bitand-old
    (implies (and (natp size)
                  (natp start))
             (equal (bits (4vec-bitand val1 val2) start size)
                    (4vec-bitand$ size
                                  (bits val1 start size)
                                  (bits val2 start size))))
    :hints (("Goal"
             :use ((:instance 4vec-part-select-of-4vec-bitand))
             :do-not '(preprocess)
             :in-theory (e/d (4vec-bitand$
                              bits)
                             (sv::4vec-bitand
                              sv::4vec)))))

  (def-rp-rule bits-of-4vec-bitand
    (implies (and (natp size)
                  (natp start))
             (equal (bits (4vec-bitand val1 val2) start size)
                    (4vec-bitand (bits val1 start size)
                                 (bits val2 start size))))
    :hints (("Goal"
             :use ((:instance 4vec-part-select-of-4vec-bitand-better))
             :do-not '(preprocess)
             :in-theory (e/d (4vec-bitand$
                              bits)
                             (sv::4vec-bitand
                              sv::4vec)))))

  (add-svex-simplify-rule bits-of-4vec-bitand)

  (def-rp-rule sbits-of-4vec-bitand
    (implies (and (natp size)
                  (integerp new)
                  (natp start))
             (equal (sbits start size new (4vec-bitand val1 val2))
                    (4vec-bitand (sbits start size new val1)
                                 (sbits start size new val2))))
    :hints (("Goal"
             :in-theory (e/d () ()))))

  (add-svex-simplify-rule sbits-of-4vec-bitand)

  (defthmd bits-of-4vec-bitor-old
    (implies (and (natp size)
                  (natp start))
             (equal (bits (4vec-bitor val1 val2) start size)
                    (4vec-bitor$ size
                                 (bits val1 start size)
                                 (bits val2 start size))))
    :hints (("Goal"
             :use ((:instance 4vec-part-select-of-4vec-bitor))
             :do-not '(preprocess)
             :in-theory (e/d (4vec-bitor$
                              bits)
                             (sv::4vec-bitor
                              sv::4vec)))))

  (def-rp-rule bits-of-4vec-bitor
    (implies (and (natp size)
                  (natp start))
             (equal (bits (4vec-bitor val1 val2) start size)
                    (4vec-bitor (bits val1 start size)
                                (bits val2 start size))))
    :hints (("Goal"
             :use ((:instance 4vec-part-select-of-4vec-bitor-better))
             :do-not '(preprocess)
             :in-theory (e/d (4vec-bitor$
                              bits)
                             (sv::4vec-bitor
                              sv::4vec)))))

  (add-svex-simplify-rule bits-of-4vec-bitor)

  (defthmd bits-of-4vec-bitxor-old
    (implies (and (natp size)
                  (natp start))
             (equal (bits (sv::4vec-bitxor val1 val2) start size)
                    (4vec-bitxor$ size
                                  (bits val1 start size)
                                  (bits val2 start size))))
    :hints (("Goal"
             :use ((:instance 4vec-part-select-of-4vec-bitxor))
             :do-not '(preprocess)
             :in-theory (e/d (4vec-bitxor$
                              bits)
                             (sv::4vec-bitxor
                              sv::4vec)))))

  (def-rp-rule bits-of-4vec-bitxor
    (implies (and (natp size)
                  (natp start))
             (equal (bits (sv::4vec-bitxor val1 val2) start size)
                    (sv::4vec-bitxor (bits val1 start size)
                                     (bits val2 start size))))
    :hints (("Goal"
             :use ((:instance 4vec-part-select-of-4vec-bitxor-better))
             :do-not '(preprocess)
             :in-theory (e/d (4vec-bitxor$
                              bits)
                             (sv::4vec-bitxor
                              sv::4vec)))))

  (add-svex-simplify-rule bits-of-4vec-bitxor)

  (def-rp-rule sbits-of-4vec-bitnot$-with-same-size
    (implies (and (natp size))
             (equal (sbits 0 size new (4vec-bitnot$ size val))
                    (bits new 0 size)))
    :hints (("Goal"
             :in-theory (e/d (4VEC-BITNOT$) ()))))

  (add-svex-simplify-rule sbits-of-4vec-bitnot$-with-same-size)

  (def-rp-rule bits-of-4vec-bitnot$
    (implies (and (natp bits-size)
                  (natp size)
                  (natp start))
             (equal (bits (4vec-bitnot$ size val) start bits-size)
                    (if (< start size)
                        (4vec-bitnot$ (min (- size start) bits-size)
                                      (bits val
                                            start
                                            (min (- size start)
                                                 bits-size)))
                      0)))
    :lambda-opt nil
    :hints (("Goal"
             :in-theory (e/d (4VEC-PART-SELECT-of-4vec-bitnot$-2
                              4VEC-PART-SELECT-of-4vec-bitnot$-1
                              bits)
                             ()))))

  (add-svex-simplify-rule bits-of-4vec-bitnot$)

  (def-rp-rule bits-of-4vec-bitand$
    (implies (and (natp bits-size)
                  (natp size)
                  (natp start))
             (equal (bits (4vec-bitand$ size val1 val2) start bits-size)
                    (if (< start size)
                        (4vec-bitand$ (min (- size start) bits-size)
                                      (bits val1 start (min (- size start) bits-size) )
                                      (bits val2 start (min (- size start) bits-size)))
                      0)))
    :hints (("Goal"
             :in-theory (e/d (4VEC-PART-SELECT-of-4vec-bitand$-2
                              4VEC-PART-SELECT-of-4vec-bitand$-1
                              bits)
                             ()))))

  (add-svex-simplify-rule bits-of-4vec-bitand$)

  (def-rp-rule 4vec-bitor-of-negated-same-var-with-bitnot$
    (implies (and (natp size)
                  (integerp x))
             (and (equal (sv::4vec-bitor (4vec-bitnot$ size x) x)
                         (sbits 0 size -1 x))
                  (equal (sv::4vec-bitor x (4vec-bitnot$ size x))
                         (sbits 0 size -1 x))))
    :hints (("Goal"
             :use ((:instance 4vec-bitor-of-negated-same-var))
             :in-theory (e/d (4VEC-BITNOT$)
                             (4vec-bitor-of-negated-same-var)))))

  (add-svex-simplify-rule 4vec-bitor-of-negated-same-var-with-bitnot$)

  (def-rp-rule bits-of-4vec-bitor$
    (implies (and (natp bits-size)
                  (natp size)
                  (natp start))
             (equal (bits (4vec-bitor$ size val1 val2) start bits-size )
                    (if (< start size)
                        (4vec-bitor$ (min (- size start) bits-size)
                                     (bits val1 start (min (- size start) bits-size) )
                                     (bits val2 start (min (- size start) bits-size) ))
                      0)))
    :hints (("Goal"
             :in-theory (e/d (4vec-part-select-of-4vec-bitor$-2
                              4vec-part-SELECT-of-4vec-bitor$-1
                              bits)
                             ()))))

  (def-rp-rule bits-of-4vec-bitxor$
    (implies (and (natp bits-size)
                  (natp size)
                  (natp start))
             (equal (bits (4vec-bitxor$ size val1 val2) start bits-size )
                    (if (< start size)
                        (4vec-bitxor$ (min (- size start) bits-size)
                                      (bits val1 start (min (- size start) bits-size) )
                                      (bits val2 start (min (- size start) bits-size) ))
                      0)))
    :hints (("Goal"
             :in-theory (e/d (4vec-part-select-of-4vec-bitxor$-2
                              4vec-part-SELECT-of-4vec-bitxor$-1
                              bits)
                             ()))))

  (def-rp-rule 4vec-bitnot-of-4vec-concat$
    (implies (and (natp size)
                  (integerp x)
                  (integerp y))
             (equal (4vec-bitnot (4vec-concat$ size x y))
                    (4vec-concat$ size
                                  (4vec-bitnot$ size (bits x 0 size))
                                  (4vec-bitnot y))))
    :hints (("Goal"
             :use ((:instance
                    4vec-concat-insert-4vec-part-select
                    (val1 (4vec-bitnot x))
                    (val2 (4vec-bitnot y)))
                   (:instance
                    4vec-concat-insert-4vec-part-select
                    (val1 x)
                    (val2 y))
                   (:instance
                    4VEC-PART-SELECT-OF-4VEC-BITNOT
                    (start 0)))
             :in-theory (e/d (4vec-concat$
                              bits
;4VEC-PART-SELECT-OF-4VEC-BITNOT
                              4VEC-BITNOT$
                              4vec-bitnot-of-4vec-concat)
                             ()))))

  (add-svex-simplify-rule 4vec-bitnot-of-4vec-concat$))

(encapsulate
  nil

  (local
   (use-arithmetic-5 t))
  (def-rp-rule 4vec-concat$-bit-and-zero
    (implies (and (posp size)
                  (bitp num1))
             (equal (4vec-concat$ size num1 0)
                    num1))
    :hints (("Goal"
             :in-theory (e/d (4VEC-CONCAT$
                              4VEC-CONCAT
                              SV::4VEC->UPPER
                              SV::4VEC->LOWER)
                             ())))))

(encapsulate
  nil

  ;; 4vec-lsh lemmas
  (progn
    ;; no syntaxp versions are used to prove lemmas but they should be disabled
    ;; for rp-rewriter
    (defthmd bits-of-lsh-1-no-syntaxp
      (implies
       (and (> r-size start)
            (natp r-size)
            (natp start)
            (natp size)
            (> size (- r-size start)))
       (equal (bits (4vec-lsh r-size val) start size )
              (4vec-concat$ (- r-size start)
                            0
                            (bits val 0
                                  (- size (- r-size start)) ))))
      :hints (("Goal"
               :use ((:instance 4vec-part-select-of-4vec-lsh-1))
               :in-theory (e/d (4vec-lsh
                                4vec-concat$) ()))))

    (defthmd bits-of-lsh-2-no-syntaxp
      (implies
       (and (natp r-size)
            (natp start)
            (natp size)
            (>= r-size (+ start size)))
       (equal (bits (4vec-lsh r-size val) start size )
              0))
      :hints (("Goal"
               :use ((:instance 4vec-part-select-of-4vec-lsh-2))
               :in-theory (e/d () ()))))

    (defthmd bits-of-lsh-3-no-syntaxp
      (implies
       (and (>= start r-size)
            (natp r-size)
            (natp size)
            (natp start))
       (equal (bits (4vec-lsh r-size val) start size )
              (bits val (- start r-size) size )))
      :hints (("Goal"
               :use ((:instance 4vec-part-select-of-4vec-lsh-3))
               :in-theory (e/d () ()))))  )

  ;;; TODO put these in meta function
  ;; OR convert all lsh to concat..
  (def-rp-rule bits-of-lsh-1
    (implies
     (and (> r-size start)
          (natp r-size)
          (natp start)
          (natp size)
          (> size (- r-size start))
          (syntaxp (and (or (quotep start)
                            (integerp start))
                        (or (quotep size)
                            (integerp size))
                        (or (quotep r-size)
                            (integerp r-size)))))
     (equal (bits (4vec-lsh r-size val) start size )
            (4vec-concat$ (- r-size start)
                          0
                          (bits val
                                0
                                (- size (- r-size start)) ))))
    :hints (("Goal"
             :use ((:instance bits-of-lsh-1-no-syntaxp)))))

  (def-rp-rule bits-of-lsh-2
    (implies
     (and (natp r-size)
          (natp start)
          (natp size)
          (>= r-size (+ start size))
          (syntaxp (and (or (quotep start)
                            (integerp start))
                        (or (quotep size)
                            (integerp size))
                        (or (quotep r-size)
                            (integerp r-size)))))
     (equal (bits (4vec-lsh r-size val) start size )
            0))
    :hints (("Goal"
             :use ((:instance bits-of-lsh-2-no-syntaxp))
             :in-theory (e/d () ()))))

  (def-rp-rule bits-of-lsh-3
    (implies
     (and (>= start r-size)
          (natp r-size)
          (natp start)
          (natp size)
          (syntaxp (and (or (quotep start)
                            (integerp start))
                        (or (quotep size)
                            (integerp size))
                        (or (quotep r-size)
                            (integerp r-size)))))
     (equal (bits (4vec-lsh r-size val) start size )
            (bits val (- start r-size) size )))
    :hints (("Goal"
             :use ((:instance bits-of-lsh-3-no-syntaxp))
             :in-theory (e/d () ())))))

(encapsulate
  nil

  ;; 4vec-rsh lemmas

  ;; without syntaxp version should be disabled for rp-rewriter
  (defthmd bits-of-rsh-no-syntaxp
    (implies
     (and (natp r-size)
          (natp start)
          (natp size))
     (equal (bits (4vec-rsh r-size val) start size)
            (bits val
                  (+ start r-size)
                  size)))
    :hints (("Goal"
             :use ((:instance 4vec-part-select-of-4vec-rsh))
             :in-theory (e/d () ()))))

  ;; this has a place in meta function bits-of-meta-fn. but that function does
  ;; not work for subterms that may have "rp" side conditions.
  (def-rp-rule bits-of-rsh
    (implies
     (and (natp r-size)
          (natp start)
          (natp size)
          (syntaxp (and (or (quotep start)
                            (integerp start))
                        (or (quotep size)
                            (integerp size))
                        (or (quotep r-size)
                            (integerp r-size)))))
     (equal (bits (4vec-rsh r-size val) start size)
            (bits val
                  (+ start r-size)
                  size )))
    :hints (("Goal"
             :use ((:instance bits-of-rsh-no-syntaxp))
             :in-theory (e/d () ()))))

  ;; these can be improved!!!!  by replacing concat with concat$ and replacing
  ;; rsh with bits.
  (def-rp-rule 4vec-rsh-of-4vec-concat$-2
    (implies (and (natp s1)
                  (natp s2)
                  (<= s2 s1))
             (equal (4vec-rsh s1 (4vec-concat$ s2 x y))
                    (4vec-rsh (- s1 s2) y)))
    :hints (("Goal"
             :use ((:instance 4vec-rsh-of-4vec-concat-2))
             :in-theory (e/d (4vec-concat$) ()))))

  (defun 4vec-rsh-of-4vec-concat$-1-hyp (s1 s2)
    (declare (xargs :guard t))
    (and (natp s1)
         (natp s2)
         (< s1 s2)))

  (local
   (defthm 4vec-rsh-of-4vec-concat$-1-lemma
     (implies (4vec-rsh-of-4vec-concat$-1-hyp s1 s2)
              (equal (4vec-rsh s1 (4vec-concat$ s2 x y))
                     (4vec-concat (- s2 s1)
                                  (4vec-rsh s1 x)
                                  y)))
     :hints (("Goal"
              :use ((:instance 4vec-rsh-of-4vec-concat))
              :in-theory (e/d (4vec-concat$) ())))))

  (def-rp-rule 4vec-rsh-of-4vec-concat$-1
    (implies (4vec-rsh-of-4vec-concat$-1-hyp s1 s2)
             (equal (4vec-rsh s1 (4vec-concat$ s2 x y))
                    (4vec-concat$ (- s2 s1)
                                  (bits x s1 (- s2 s1))
                                  y)))
    :hints (("Goal"
             :use ((:instance 4vec-rsh-of-4vec-concat$-1-lemma)
                   (:instance 4VEC-CONCAT-INSERT-4VEC-PART-SELECT
                              (size (+ (- S1) S2))
                              (val1 (4VEC-RSH S1 X))
                              (val2 y)))
             :in-theory (e/d (4vec-concat$) ()))))

  (def-rp-rule 4vec-rsh-of-bits-1
    (implies (and (natp amount)
                  (natp start)
                  (natp size)
                  (<= amount size))
             (equal (sv::4vec-rsh amount (svl::bits x start size))
                    (svl::bits x (+ start amount) (- size amount))))
    :hints (("Goal"
             :use ((:instance 4vec-rsh-of-4vec-part-select-1)
                   (:instance 4vec-rsh-of-4vec-part-select-2))
             :in-theory (e/d () (4vec-rsh-of-4vec-part-select-1
                                 4vec-rsh-of-4vec-part-select-2)))))

  (add-svex-simplify-rule 4vec-rsh-of-bits-1)

  (def-rp-rule 4vec-rsh-of-bits-2
    (implies (and (natp amount)
                  (natp start)
                  (natp size)
                  (< size amount))
             (equal (sv::4vec-rsh amount (svl::bits x start size))
                    0))
    :hints (("Goal"
             :use ((:instance 4vec-rsh-of-4vec-part-select-1)
                   (:instance 4vec-rsh-of-4vec-part-select-2))
             :in-theory (e/d () (4vec-rsh-of-4vec-part-select-1
                                 4vec-rsh-of-4vec-part-select-2)))))

  (add-svex-simplify-rule 4vec-rsh-of-bits-2))

(encapsulate
  nil

  ;; 4vec-concat lemmas

  (def-rp-rule equal-of-4vec-concat$-with-size=1
    (implies (and (4vec-p x)
                  (4vec-p l))
             (and (equal (equal x
                                (4vec-concat$ 1 k l))
                         (and (equal (bits x 0 1)
                                     (bits k 0 1))
                              (equal (svl::4vec-rsh 1 x)
                                     l)))
                  (equal (equal (4vec-concat$ 1 k l) x)
                         (and (equal (bits x 0 1)
                                     (bits k 0 1))
                              (equal (svl::4vec-rsh 1 x)
                                     l)))))
    :hints (("Goal"
             :use (:instance equal-of-4vec-concat-with-size=1)
             :in-theory (e/d* (4vec-concat$)
                              (equal-of-4vec-concat-with-size=1
                               4VEC-PART-SELECT-OF-CONCAT-1
                               4VEC-RSH-OF-4VEC-CONCAT-2
                               4VEC-RSH-OF-WIDTH=0
                               SV::4VEC-FIX-OF-4VEC
                               SV::4VEC-P-OF-4VEC-CONCAT)))))

  (def-rp-rule equal-of-4vec-concat$-with-posp-size
    (implies (and (4vec-p x)
                  (4vec-p l)
                  (posp size))
             (and (equal (equal x
                                (4vec-concat$ size k l))
                         (acl2::and* (equal (bits x 0 1)
                                            (bits k 0 1))
                                     (equal (svl::4vec-rsh 1 x)
                                            (sv::4vec-rsh 1 (4vec-concat$ size k l)))))
                  (equal (equal (4vec-concat$ size k l) x)
                         (acl2::and* (equal (bits x 0 1)
                                            (bits k 0 1))
                                     (equal (svl::4vec-rsh 1 x)
                                            (sv::4vec-rsh 1 (4vec-concat$ size k l)))))))
    :hints (("Goal"
             :use (:instance equal-of-4vec-concat-with-posp-size)
             :in-theory (e/d* (4vec-concat$
                               acl2::and*)
                              (equal-of-4vec-concat-with-posp-size
                               4VEC-PART-SELECT-OF-CONCAT-1
                               4VEC-RSH-OF-4VEC-CONCAT-2
                               4VEC-RSH-OF-WIDTH=0
                               SV::4VEC-FIX-OF-4VEC
                               SV::4VEC-P-OF-4VEC-CONCAT)))))

  (def-rp-rule 4vec-concat$-of-4vec-fix
    (and (equal (4vec-concat$ x (4vec-fix y) z)
                (4vec-concat$ x y z))
         (equal (4vec-concat$ x y (4vec-fix z))
                (4vec-concat$ x y z)))
    :hints (("Goal"
             :in-theory (e/d (4vec-concat$ 4VEC-FIX
                                           4vec)
                             (4VEC-CONCAT-OF-WIDTH=0)))))

  (add-svex-simplify-rule 4vec-concat$-of-4vec-fix)

  (def-rp-rule :disabled-for-acl2 t
    convert-4vec-concat-to-4vec-concat$
    (implies t
             (equal (4vec-concat size term1 term2)
                    (4vec-concat$ size (bits term1 0 size )
                                  term2)))
    :hints (("Goal"
             :in-theory (e/d (4vec-concat$
                              4vec-concat-insert-4vec-part-select
                              bits) ()))))

  (add-svex-simplify-rule convert-4vec-concat-to-4vec-concat$)

  (def-rp-rule 4vec-concat-of-4vec-concat$-case-2
    (implies
     (and (natp size1)
          (<= size1 size2)
          (natp size2)
          )
     (equal
      (4vec-concat size1 (4vec-concat$ size2 term1 term2) term3)
      (4vec-concat size1 term1 term3)))
    :hints (("Goal"
             :cases ((equal size1 size2))
             :use ((:instance convert-4vec-concat-to-4vec-concat$
                              (size size1)
                              (term2 term3)))
             :in-theory (e/d (4vec-concat$
                              4vec-concat-of-4vec-concat-2)
                             (4VEC-CONCAT-INSERT-4VEC-PART-SELECT
                              convert-4vec-concat-to-4vec-concat$)))))

  (def-rp-rule 4vec-concat$-of-4vec-concat$-case-2
    (implies
     (and (natp size1)
          (<= size1 size2)
          (natp size2))
     (equal
      (4vec-concat$ size1 (4vec-concat$ size2 term1 term2) term3)
      (4vec-concat size1 term1 term3)))
    :hints (("Goal"
             :use ((:instance convert-4vec-concat-to-4vec-concat$
                              (size size1)
                              (term2 term3)))
             :cases ((equal size1 size2))
             :in-theory (e/d (4vec-concat$
                              4vec-concat-of-4vec-concat-2)
                             (4vec-concat-insert-4vec-part-select
                              convert-4vec-concat-to-4vec-concat$)))))

  (def-rp-rule 4vec-concat$-of-4vec-concat$-case-1
    (implies
     (and (natp size1)
          (< size2 size1)
          (natp size2))
     (equal
      (4vec-concat$ size1 (4vec-concat$ size2 term1 term2) term3)
      (4vec-concat$ size2 term1
                    (4vec-concat (- size1 size2) term2 term3))))
    :hints (("Goal"
             :in-theory (e/d (4vec-concat$
                              4vec-concat-of-4vec-concat)
                             (4VEC-CONCAT-INSERT-4VEC-PART-SELECT
                              convert-4vec-concat-to-4vec-concat$)))))

  (def-rp-rule 4vec-concat-of-4vec-concat$-case-1
    (implies
     (and (natp size1)
          (< size2 size1)
          (natp size2))
     (equal
      (4vec-concat size1 (4vec-concat$ size2 term1 term2) term3)
      (4vec-concat$ size2 term1
                    (4vec-concat (- size1 size2) term2 term3))))
    :hints (("Goal"
             :in-theory (e/d (4vec-concat$
                              4vec-concat-of-4vec-concat)
                             (4VEC-CONCAT-INSERT-4VEC-PART-SELECT
                              convert-4vec-concat-to-4vec-concat$)))))

  ;; bits of concat lemmas:

  (progn
    ;; no sytnaxp lemmas are to be used for static proofs and should be left
    ;; disabled for rp-rewriter

    (defthmd bits-of-concat-1-no-syntaxp
      (implies (and (<= (+ start size) c-size)
                    (natp start)
                    (natp size)
                    (natp c-size))
               (equal (bits (4vec-concat$ c-size term1 term2) start size )
                      (bits term1 start size )))
      :hints (("goal"
               :in-theory (e/d (4vec-concat$
                                4vec-part-select-of-concat-1)
                               (convert-4vec-concat-to-4vec-concat$
                                4vec-concat-insert-4vec-part-select)))))

    (local
     (defthm bits-of-concat-3-lemma
       (implies (and (< start c-size)
                     (< c-size (+ start size))
                     (natp start)
                     (natp size)
                     (natp c-size))
                (equal (bits (4vec-concat$ c-size term1 term2) start size )
                       (4vec-concat (- c-size start)
                                    (4vec-rsh start term1)
                                    (bits term2 0 (- size (- c-size start)) ))))
       :hints (("goal"
                :in-theory (e/d (4vec-concat$
                                 4vec-part-select-of-concat-3)
                                (convert-4vec-concat-to-4vec-concat$
                                 4vec-concat-insert-4vec-part-select))))))
    (defthmd bits-of-concat-3-no-syntaxp
      (implies (and (< start c-size)
                    (< c-size (+ start size))
                    (natp start)
                    (natp size)
                    (natp c-size))
               (equal (bits (4vec-concat$ c-size term1 term2) start size )
                      (4vec-concat$ (- c-size start)
                                    (bits term1 start (- c-size start) )
                                    (bits term2 0 (- size (- c-size start)) ))))
      :hints (("goal"
               :use ((:instance bits-of-concat-3-lemma))
               :in-theory (e/d (4vec-concat$
                                4vec-concat-insert-4vec-part-select
                                4vec-part-select-of-concat-3)
                               (convert-4vec-concat-to-4vec-concat$
                                )))))

    (defthmd bits-of-concat-2-no-syntaxp
      (implies (and (<= c-size start)
                    (natp start)
                    (natp size)
                    (natp c-size))
               (equal (bits (4vec-concat$ c-size term1 term2) start size )
                      (bits term2 (- start c-size) size )))
      :hints (("goal"
               :cases ((equal c-size start))
               :in-theory (e/d (4vec-concat$
                                4vec-part-select-of-concat-2)
                               (convert-4vec-concat-to-4vec-concat$
                                4vec-concat-insert-4vec-part-select)))))

    (defthmd sbits-of-concat-no-syntaxp
      (implies (and (posp size)
                    (natp start)
                    (natp w)
                    (>= size w))
               (equal (sbits start size (4vec-concat$ w term1 term2) old-val)
                      (4vec-concat$ start old-val
                                    (4vec-concat$ w term1
                                                  (4vec-concat$ (- size w)
                                                                term2
                                                                (4vec-rsh (+ start size)
                                                                          old-val))))))
      :hints (("goal"
               :use ((:instance 4vec-part-install-of-concat))
               :in-theory (e/d (4vec-concat$)
                               (convert-4vec-concat-to-4vec-concat$
                                4vec-concat-insert-4vec-part-select
                                commutativity-of-+))))))

  (def-rp-rule bits-of-concat-1
    (implies (and (<= (+ start size) c-size)
                  (natp start)
                  (natp size)
                  (natp c-size)
                  (syntaxp (and (or (quotep start)
                                    (integerp start))
                                (or (quotep size)
                                    (integerp size))
                                (or (quotep c-size)
                                    (integerp c-size)))))
             (equal (bits (4vec-concat$ c-size term1 term2) start size )
                    (bits term1 start size )))
    :hints (("Goal"
             :use ((:instance bits-of-concat-1-no-syntaxp))
             :in-theory (e/d ()
                             (convert-4vec-concat-to-4vec-concat$
                              4vec-concat-insert-4vec-part-select)))))

  (def-rp-rule bits-of-concat-3
    (implies (and (< start c-size)
                  (< c-size (+ start size))
                  (natp start)
                  (natp size)
                  (natp c-size)
                  (syntaxp (and (or (quotep start)
                                    (integerp start))
                                (or (quotep size)
                                    (integerp size))
                                (or (quotep c-size)
                                    (integerp c-size)))))
             (equal (bits (4vec-concat$ c-size term1 term2) start size )
                    (4vec-concat$ (- c-size start)
                                  (bits term1 start (- c-size start) )
                                  (bits term2 0 (- size (- c-size start)) ))))
    :hints (("Goal"
             :use ((:instance bits-of-concat-3-no-syntaxp))
             :in-theory (e/d ()
                             (convert-4vec-concat-to-4vec-concat$
                              )))))

  (def-rp-rule bits-of-concat-2
    (implies (and (<= c-size start)
                  (natp start)
                  (natp size)
                  (natp c-size)
                  (syntaxp (and (or (quotep start)
                                    (integerp start))
                                (or (quotep size)
                                    (integerp size))
                                (or (quotep c-size)
                                    (integerp c-size)))))
             (equal (bits (4vec-concat$ c-size term1 term2) start size )
                    (bits term2 (- start c-size) size )))
    :hints (("Goal"
             :use ((:instance bits-of-concat-2-no-syntaxp))
             :in-theory (e/d ()
                             (convert-4vec-concat-to-4vec-concat$
                              4vec-concat-insert-4vec-part-select)))))

  (def-rp-rule sbits-of-concat
    (implies (and (posp size)
                  (natp start)
                  (natp w)
                  (>= size w)
                  (syntaxp (and (or (quotep start)
                                    (integerp start))
                                (or (quotep size)
                                    (integerp size))
                                (or (quotep w)
                                    (integerp w)))))
             (equal (sbits start size (4vec-concat$ w term1 term2) old-val)
                    (4vec-concat$ start old-val
                                  (4vec-concat$ w term1
                                                (4vec-concat$ (- size w)
                                                              term2
                                                              (4vec-rsh (+ start size)
                                                                        old-val))))))
    :hints (("Goal"
             :use ((:instance sbits-of-concat-no-syntaxp))
             :in-theory (e/d ()
                             (convert-4vec-concat-to-4vec-concat$
                              4VEC-CONCAT-INSERT-4VEC-PART-SELECT
                              COMMUTATIVITY-OF-+)))))

  (add-svex-simplify-rule sbits-of-concat)

  (def-rp-rule concat-of-size=0
    (and (equal (4vec-concat$ 0 term1 term2)
                (4vec-fix term2))
         (equal (4vec-concat 0 term1 term2)
                (4vec-fix term2)))
    :hints (("Goal"
             :in-theory (e/d (4vec-concat$) ()))))

  (add-svex-simplify-rule concat-of-size=0)

  (def-rp-rule :disabled-for-acl2 t
    4vec-concat$-of-term2=0
    (and (equal (4vec-concat$ size val1 0)
                (bits val1 0 size))
         (equal (4vec-concat size val1 0)
                (bits val1 0 size)))
    :hints (("Goal"
             :expand (4VEC-CONCAT SIZE VAL1 0)
             :use ((:instance 4vec-concat-of-term2=0))
             :in-theory (e/d (4vec-concat-of-width=1-term2=0
                              4vec-part-select
                              4VEC-ZERO-EXT
                              sv::4VEC->UPPER
                              bits
                              4vec-concat$
                              sv::4vec->lower)
                             (CONVERT-4VEC-CONCAT-TO-4VEC-CONCAT$
                              4vec-concat-of-term2=0
                              4VEC-CONCAT-OF-WIDTH=1-TERM2=0)))))

  (add-svex-simplify-rule 4vec-concat$-of-term2=0)


  #|(def-rp-rule equal-of-4vec-concat$s-for-same-size
    (implies (natp size)
             (EQUAL (EQUAL (SVL::4VEC-CONCAT$ size x y)
                           (SVL::4VEC-CONCAT$ size a b))
                    (and (EQUAL (svl::bits x 0 size)
                                (svl::bits a 0 size))
                         (EQUAL (SV::4VEC-FIX y)
                                (SV::4VEC-FIX b)))))
    ;;:otf-flg t
    :hints (("Goal"
             :do-not-induct t
             :in-theory (e/d (SV::4VEC->UPPER
                              SV::4VEC->lower
                              4VEC-CONCAT$
                              4VEC-PART-SELECT
                              4VEC-CONCAT
                              4VEC-FIX
                              4vec-p)
                             ((:TYPE-PRESCRIPTION
                               SV::INTEGERP-OF-4VEC->UPPER)
                              (:TYPE-PRESCRIPTION 4VEC)
                              (:TYPE-PRESCRIPTION
                               SV::INTEGERP-OF-4VEC->LOWER)
                              (:TYPE-PRESCRIPTION ACL2::LOGHEAD-TYPE)
                              (:TYPE-PRESCRIPTION SV::2VEC-P$INLINE)
                              (:REWRITE BITP-IMPLIES-4VECP)
                              logapp logtail
                                     (:e tau-system)
                                     floor loghead)))))|#)

(encapsulate
  nil

  ;; sbits lemmas
  (def-rp-rule sbits-size=0
    (implies (natp start)
             (equal (sbits start 0 new-val old-val)
                    (sv::4vec-fix old-val)))
    :hints (("Goal"
             :use ((:instance 4vec-part-install-w=0))
             :in-theory (e/d () ()))))

  (add-svex-simplify-rule sbits-size=0)

  (def-rp-rule sbits-of-bits
    (implies (and (natp start)
                  (natp size)
                  (syntaxp (consp (rp::ex-from-rp new-val))))
             (equal (sbits start size (bits new-val 0 size ) old-val)
                    (sbits start size new-val old-val)))
    :hints (("Goal"
             :use ((:instance 4vec-part-install-of-4vec-part-select))
             :in-theory (e/d () ()))))

  (add-svex-simplify-rule sbits-of-bits)

  ;; this is actually-not-necessary:
  (defthmd sbits-of-sbits-reorder-sizes=1
    (implies (and (natp start1)
                  (natp start2)
                  (> start1 start2))
             (equal (sbits start1 1 val1 (sbits start2 1 val2 old-val))
                    (sbits start2 1 val2 (sbits start1 1 val1 old-val))))
    :hints (("Goal"
             :use ((:instance 4vec-part-install-of-4vec-part-install-sizes=1))
             :in-theory (e/d () ()))))

  (def-rp-rule :disabled t
    4vec-part-install-is-sbits
    (implies (natp size)
             (equal (4vec-part-install start size old new)
                    (sbits start size (bits new 0 size ) old)))
    :hints (("Goal"
             :in-theory (e/d (sbits
                              4vec-part-install-of-4vec-part-select) ()))))

  (add-svex-simplify-rule 4vec-part-install-is-sbits)

  (def-rp-rule :disabled t
    4vec-part-install-is-sbits-without-inserting-bits
    (implies (natp size)
             (equal (4vec-part-install start size old new)
                    (sbits start size new old)))
    :hints (("Goal"
             :in-theory (e/d (sbits
                              4vec-part-install-of-4vec-part-select) ())))))

(encapsulate
  nil
  ;; bits of bits lemmas

  (def-rp-rule bits-of-4vec-plus-is-4vec-plus
    (implies (and (integerp x)
                  (integerp y)
                  (natp size)
                  (natp start))
             (equal (bits (4vec-plus x y) start size )
                    (4vec-rsh start (4vec-plus++ (bits x 0 (+ start size) )
                                                 (bits y 0 (+ start size) )
                                                 0
                                                 (+ start size)))))
    :hints (("Goal"
             :use ((:instance 4vec-part-select-of-4vec-plus-is-4vec-plus))
             :in-theory (e/d (4vec-part-select
                              4VEC-CONCAT)
                             (4vec-concat$-of-term2=0)))))

  (def-rp-rule bits-of-4vec-plus-is-4vec-plus-start=0
    (implies (and (integerp x)
                  (integerp y)
                  (natp size))
             (equal (bits (4vec-plus x y) 0 size )
                    (4vec-plus++ (bits x 0 size)
                                 (bits y 0 size )
                                 0
                                 size)))
    :hints (("Goal"
             :use ((:instance 4vec-part-select-of-4vec-plus-is-4vec-plus
                              (start 0)))
             :in-theory (e/d (4vec-part-select
                              SV::4VEC->UPPER
                              SV::4VEC->LOWER
                              4VEC-CONCAT) ()))))

  (def-rp-rule bits-of-4vec-plus-is-4vec-plus-with-carry
    (implies (and (integerp x)
                  (bitp carry-in)
                  (natp size)
                  (natp start))
             (and (equal (bits (4vec-plus x carry-in) start size )
                         (4vec-rsh start (4vec-plus++ (bits x 0 (+ start size) )
                                                      0
                                                      carry-in
                                                      (+ start size))))
                  (equal (bits (4vec-plus carry-in x) start size)
                         (4vec-rsh start (4vec-plus++ (bits x 0 (+ start size) )
                                                      0
                                                      carry-in
                                                      (+ start size))))))
    :hints (("Goal"
             :use ((:instance 4vec-part-select-of-4vec-plus-is-4vec-plus-with-carry-in))
             :in-theory (e/d (4vec-part-select
                              4VEC-CONCAT)
                             (4vec-part-select-of-4vec-plus-is-4vec-plus-with-carry-in)))))

  (defthm bits-of-4vec-plus-is-4vec-plus-side-cond
    (implies (and (integerp x)
                  (integerp y))
             (and (integerp x)
                  (integerp y)))
    :rule-classes nil
    :hints (("Goal"
             :in-theory (e/d () ()))))

  ;; if we did backchaining and found x and y to be integer, save it.
  (rp::rp-attach-sc bits-of-4vec-plus-is-4vec-plus
                    bits-of-4vec-plus-is-4vec-plus-side-cond)

  (rp::rp-attach-sc bits-of-4vec-plus-is-4vec-plus-start=0
                    bits-of-4vec-plus-is-4vec-plus-side-cond)

  (def-rp-rule bits-of-4vec-?*
    (implies (and (natp start)
                  (natp size)
;(natp test)
                  )
             (equal (bits (4vec-?* test x y) start size )
                    (4vec-?* test
                             (bits x start size)
                             (bits y start size))))
    :hints (("Goal"
             :in-theory (e/d (bits
                              4vec-part-select-of-4vec-?*) ()))))

  (add-svex-simplify-rule bits-of-4vec-?* :disabled t)

  (def-rp-rule bits-of-4vec-?
    (implies (and (natp start)
                  (natp size)
;(natp test)
                  )
             (equal (bits (4vec-? test x y) start size )
                    (4vec-? test
                            (bits x start size)
                            (bits y start size))))
    :hints (("Goal"
             :in-theory (e/d (bits
                              4vec-part-select-of-4vec-?) ()))))

  (add-svex-simplify-rule bits-of-4vec-? :disabled t)

  (def-rp-rule bits-of-4vec-?!
    (implies (and (natp start)
                  (natp size))
             (equal (bits (sv::4vec-?! test x y) start size )
                    (sv::4vec-?! test
                                 (bits x start size)
                                 (bits y start size))))
    :hints (("Goal"
             :in-theory (e/d (bits
                              4vec-part-select-of-4vec-?!) ()))))

  (add-svex-simplify-rule bits-of-4vec-?! :disabled t)

  (def-rp-rule bits-of-4vec-fix
    (equal (bits (4vec-fix val) start size )
           (bits val start size ))
    :hints (("Goal"
             :in-theory (e/d (bits
                              4vec-part-select)
                             (
                              convert-4vec-concat-to-4vec-concat$
                              4vec-zero-ext-is-4vec-concat)))))

  (add-svex-simplify-rule bits-of-4vec-fix)

  (def-rp-rule bits-of-bits-2
    (implies (and (natp start1)
                  (natp start2)
                  (natp size1)
                  (natp size2)
                  (<= SIZE2 START1))
             (equal (bits (bits x start2 size2) start1 size1 )
                    0))
    :hints (("Goal"
             :use ((:instance 4vec-part-select-of-4vec-part-select-2))
             :in-theory (e/d () ()))))

  ;; this is yet to be covered by the meta function. (?)
  (def-rp-rule bits-of-bits-1
    (implies (and (natp start1)
                  (natp start2)
                  (natp size1)
                  (natp size2)
                  (< start1 size2))
             (equal (bits (bits x start2 size2) start1 size1 )
                    (bits x
                          (+ start1 start2)
                          (min size1 (- size2 start1)))))
    :hints (("Goal"
             :use ((:instance 4vec-part-select-of-4vec-part-select-1))
             :in-theory (e/d () ())))))

(encapsulate
  nil
  ;; bits of sbits lemmas

  ;; throw and error if we cannot catch all the bits-of-sbits terms
  (def-rw-opener-error
    bits-of-sbits_opener-error
    (bits (sbits sbits-start sbits-size new-val old-val) bits-start bits-size))

  (progn
    ;; below are no syntaxp lemmas. Should be left disabled for rp-rewriter but
    ;; can be used to prove some static lemmas.

    ;;case 1: sbits start later and end before bits'
    (defthmd bits-of-sbits-1-no-syntaxp
      (implies
       (and (natp start)
            (natp s-start)
            (natp size)
            (natp s-size)
            (< start s-start)
            (< (+ s-start s-size)
               (+ start size)))
       (equal
        (bits (sbits s-start s-size val old-val) start size)
        (4vec-concat$ (- s-start start)
                      (bits old-val start (- s-start start)  )
                      (4vec-concat$ s-size
                                    (bits val 0 s-size )
                                    (bits old-val
                                          (+ s-start s-size)
                                          (- (+ start size) (+ s-start s-size)))))))
      :hints (("Goal"
               :use ((:instance 4vec-select-of-4vec-part-install-1))
               :in-theory (e/d (4vec-concat$)
                               (CONVERT-4VEC-CONCAT-TO-4VEC-CONCAT$)))))

    ;;case 2: sbits starts earlier or at the same point but its end comes before bits
    (defthmd bits-of-sbits-2-no-syntaxp
      (implies (and (natp start)
                    (natp size)
                    (natp s-start)
                    (natp s-size)
                    (<= s-start start)
                    (< start (+ s-start s-size))
                    (< (+ s-start s-size)
                       (+ start size)))
               (equal (bits (sbits s-start s-size val old-val) start size)
                      (4vec-concat$
                       (+ s-size s-start (- start))
                       (bits val
                             (- start s-start)
                             (+ s-size s-start (- start)) )
                       (bits old-val
                             (+ s-start s-size)
                             (+ size start (- (+ s-start s-size)))))))
      :hints (("Goal"
               :use ((:instance 4vec-select-of-4vec-part-install-2))
               :in-theory (e/d (4vec-concat$)
                               (CONVERT-4VEC-CONCAT-TO-4VEC-CONCAT$)))))

    ;;case 3: sbits starts later but its end comes at the same time or later
    (defthmd bits-of-sbits-3-no-syntaxp
      (implies (and  (natp start)
                     (natp size)
                     (natp s-start)
                     (natp s-size)
                     (< start s-start)
                     (< s-start (+ start size))
                     (<= (+ start size)
                         (+ s-start s-size)))
               (equal (bits (sbits s-start s-size val old-val) start size )
                      (4vec-concat$
                       (- s-start start)
                       (bits old-val start (- s-start start) )
                       (bits val 0 (+ start size (- s-start)) ))))
      :hints (("Goal"
               :use ((:instance 4vec-select-of-4vec-part-install-3))
               :in-theory (e/d (4vec-concat$)
                               (CONVERT-4VEC-CONCAT-TO-4VEC-CONCAT$)))))

    ;; case 4: sbits cover the whole range. => bits is subset
    (defthmd bits-of-sbits-4-no-syntaxp
      (implies (and (<= s-start start)
                    (natp start)
                    (natp size)
                    (natp s-start)
                    (natp s-size)
                    (<= (+ start size)
                        (+ s-start s-size)))
               (equal (bits (sbits s-start s-size val old-val) start size)
                      (bits val
                            (- start s-start)
                            size
                            )))
      :hints (("Goal"
               :use ((:instance 4vec-select-of-4vec-part-install-4))
               :in-theory (e/d ()
                               (CONVERT-4VEC-CONCAT-TO-4VEC-CONCAT$)))))

    ;;case 5: sbits is out of range:
    (defthmd bits-of-sbits-5-no-syntaxp
      (implies (and (natp start)
                    (natp size)
                    (natp s-start)
                    (natp s-size)
                    (or (<= (+ start size) s-start)
                        (<= (+ s-start s-size) start)))
               (equal (bits (sbits s-start s-size val old-val) start size )
                      (bits old-val start size )))
      :hints (("Goal"
               :use ((:instance 4vec-select-of-4vec-part-install-5))
               :in-theory (e/d () ())))))

  ;; covered in the meta function, so it will be disabled in bits-sbits-meta.lisp
  (def-rp-rule :disabled-for-rp t
    bits-of-sbits-1
    (implies
     (and (natp start)
          (natp s-start)
          (natp size)
          (natp s-size)
          (< start s-start)
          (< (+ s-start s-size)
             (+ start size))
          (syntaxp (and (or (quotep start)
                            (integerp start))
                        (or (quotep size)
                            (integerp size))
                        (or (quotep s-size)
                            (integerp s-size)))))
     (equal
      (bits (sbits s-start s-size val old-val) start size )
      (4vec-concat$ (- s-start start)
                    (bits old-val start (- s-start start)  )
                    (4vec-concat$ s-size
                                  (bits val 0 s-size )
                                  (bits old-val
                                        (+ s-start s-size)
                                        (- (+ start size) (+ s-start s-size))
                                        )))))
    :hints (("Goal"
             :use ((:instance bits-of-sbits-1-no-syntaxp))
             :in-theory (e/d () ()))))

  ;; covered in the meta function, so it will be disabled in bits-sbits-meta.lisp
  (def-rp-rule :disabled-for-rp t
    bits-of-sbits-2
    (implies (and (natp start)
                  (natp size)
                  (natp s-start)
                  (natp s-size)
                  (<= s-start start)
                  (< start (+ s-start s-size))
                  (< (+ s-start s-size)
                     (+ start size))
                  (syntaxp (and (or (quotep start)
                                    (integerp start))
                                (or (quotep size)
                                    (integerp size))
                                (or (quotep s-size)
                                    (integerp s-size)))))
             (equal (bits (sbits s-start s-size val old-val) start size )
                    (4vec-concat$
                     (+ s-size s-start (- start))
                     (bits val
                           (- start s-start)
                           (+ s-size s-start (- start)) )
                     (bits old-val
                           (+ s-start s-size)
                           (+ size start (- (+ s-start s-size)))
                           ))))
    :hints (("Goal"
             :use ((:instance bits-of-sbits-2-no-syntaxp))
             :in-theory (e/d () ()))))

  ;; covered in the meta function, so it will be disabled in bits-sbits-meta.lisp
  (def-rp-rule :disabled-for-rp t
    bits-of-sbits-3
    (implies (and  (natp start)
                   (natp size)
                   (natp s-start)
                   (natp s-size)
                   (< start s-start)
                   (< s-start (+ start size))
                   (<= (+ start size)
                       (+ s-start s-size))
                   (syntaxp (and (or (quotep start)
                                     (integerp start))
                                 (or (quotep size)
                                     (integerp size))
                                 (or (quotep s-size)
                                     (integerp s-size)))))
             (equal (bits (sbits s-start s-size val old-val)
                          start size )
                    (4vec-concat$
                     (- s-start start)
                     (bits old-val start (- s-start start) )
                     (bits val
                           0 (+ start size (- s-start)) ))))
    :hints (("Goal"
             :use ((:instance bits-of-sbits-3-no-syntaxp))
             :in-theory (e/d () ()))))

  ;; covered in the meta function, so it will be disabled in bits-sbits-meta.lisp
  (def-rp-rule :disabled-for-rp t
    bits-of-sbits-4
    (implies (and (<= s-start start)
                  (natp start)
                  (natp size)
                  (natp s-start)
                  (natp s-size)
                  (<= (+ start size)
                      (+ s-start s-size))
                  (syntaxp (and (or (quotep start)
                                    (integerp start))
                                (or (quotep size)
                                    (integerp size))
                                (or (quotep s-size)
                                    (integerp s-size)))))
             (equal (bits (sbits s-start s-size val old-val) start size )
                    (bits val
                          (- start s-start)
                          size
                          )))
    :hints (("Goal"
             :use ((:instance bits-of-sbits-4-no-syntaxp))
             :in-theory (e/d () ()))))

  ;; covered in the meta function, so it will be disabled in bits-sbits-meta.lisp
  (def-rp-rule :disabled-for-rp t
    bits-of-sbits-5
    (implies (and (natp start)
                  (natp size)
                  (natp s-start)
                  (natp s-size)
                  (or (<= (+ start size) s-start)
                      (<= (+ s-start s-size) start))
                  (syntaxp (and (or (quotep start)
                                    (integerp start))
                                (or (quotep size)
                                    (integerp size))
                                (or (quotep s-size)
                                    (integerp s-size)))))
             (equal (bits (sbits s-start s-size val old-val) start size )
                    (bits old-val start size )))
    :hints (("Goal"
             :use ((:instance bits-of-sbits-5-no-syntaxp))
             :in-theory (e/d () ())))))

(encapsulate
  nil

  ;; other bits-of lemmas
  (def-rp-rule bits-0-1-of-4vec-reduction-and
    (implies
     (and (integerp amount)
          (> amount 1))
     (equal (bits (sv::4vec-reduction-and
                   (SV::4VEC-SIGN-EXT amount
                                      term))
                  0 1)
            (sv::4vec-bitand
             (bits term 0 1)
             (bits (sv::4vec-reduction-and
                    (SV::4VEC-SIGN-EXT (1- amount)
                                       (4vec-rsh 1 term)))
                   0 1))))
    :hints (("Goal"
             :use ((:instance 4vec-part-select-of-4vec-reduction-and))
             :in-theory (e/d () (4vec-part-select-of-4vec-reduction-and)))))

  (add-svex-simplify-rule bits-0-1-of-4vec-reduction-and)

  (def-rp-rule bits-0-1-of-4vec-reduction-and-when-amount=1
    (implies t
             (equal (bits (sv::4vec-reduction-and
                           (SV::4VEC-SIGN-EXT 1 term))
                          0 1)
                    (sv::3vec-fix (bits term 0 1))))
    :hints (("Goal"
             :use ((:instance 4vec-part-select-of-4vec-reduction-and-when-amount=1))
             :in-theory (e/d ()
                             (4vec-part-select-of-4vec-reduction-and-when-amount=1)))))

  (add-svex-simplify-rule bits-0-1-of-4vec-reduction-and-when-amount=1)

  (def-rp-rule bits-of-0
    (implies (and (natp start)
                  (natp size))
             (equal (bits 0 start size)
                    0))
    :hints (("Goal"
             :in-theory (e/d (bits
                              4vec-part-select
                              SV::4VEC->UPPER
                              4VEC-CONCAT$
                              sv::4vec->lower)
                             (convert-4vec-concat-to-4vec-concat$)))))

  (add-svex-simplify-rule bits-of-0))

(encapsulate
  nil
  (local
   (use-arithmetic-5 t))

  (def-rp-rule :disabled t
    4vec-zero-ext-is-bits
    (equal (4vec-zero-ext n x)
           (bits x 0 n))
    :hints (("Goal"
             :in-theory (e/d (4VEC-PART-SELECT
                              4VEC-ZERO-EXT
                              4VEC-RSH
                              4VEC-SHIFT-CORE)
                             (4VEC-ZERO-EXT-IS-4VEC-CONCAT))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; TYPE LEMMAS:
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; generic type information:
(progn
  (def-rp-rule :disabled-for-acl2 t
    bitp-implies-natp
    (implies (bitp x)
             (natp x)))

  (def-rp-rule :disabled-for-acl2 t
    natp-implies-integerp
    (implies (natp x)
             (integerp x)))

  (def-rp-rule integerp-implies-4vecp
    (implies (integerp x)
             (4vec-p x))
    :hints (("Goal"
             :in-theory (e/d (4vec-p) ())))))

(encapsulate
  nil
  ;; 4vec$ types

  (def-rp-rule 4vec-p-4vec-bitand$
    (4vec-p (4vec-bitand$ size x y))
    :hints (("Goal"
             :in-theory (e/d (4vec-bitand$)
                             ()))))

  (def-rp-rule 4vec-p-4vec-bitxor$
    (4vec-p (4vec-bitxor$ size x y))
    :hints (("Goal"
             :in-theory (e/d (4vec-bitxor$)
                             ()))))

  (def-rp-rule 4vec-p-4vec-bitor$
    (4vec-p (4vec-bitor$ size x y))
    :hints (("Goal"
             :in-theory (e/d (4vec-bitor$)
                             ())))))

(encapsulate
  nil

  ;; 4vec-concat types
  (local
   (use-arithmetic-5 t))

  (def-rp-rule 4vec-p-4vec-concat$
    (4vec-p (4vec-concat$ size x y))
    :hints (("Goal"
             :in-theory (e/d (4vec-concat$)
                             ()))))

  (add-svex-simplify-rule 4vec-p-4vec-concat$)

  (def-rp-rule :disabled t
    integerp-4vec-concat$-slower
    (implies (and (integerp (bits x 0 size))
                  (integerp y)
                  (natp size))
             (integerp (4vec-concat$ size x y)))
    :hints (("goal"
             :in-theory (e/d (4vec-concat$
                              4vec-concat
                              4vec-part-select
                              4vec
                              sv::4vec->lower
                              sv::4vec->upper)
                             (convert-4vec-concat-to-4vec-concat$
                              (:rewrite natp-implies-integerp)
                              (:rewrite bitp-implies-natp)
                              (:definition bitp)
                              (:rewrite acl2::cancel-mod-+)
                              (:rewrite acl2::mod-x-y-=-x-y . 1)
                              (:rewrite acl2::|(integerp (- x))|)
                              (:rewrite acl2::|(equal (if a b c) x)|)
                              (:rewrite acl2::prefer-positive-addends-equal)
                              (:rewrite acl2::mod-x-y-=-x+y . 1)
                              (:rewrite acl2::mod-zero . 3)
                              (:type-prescription
                               acl2::expt-type-prescription-nonpositive-base-odd-exponent)
                              (:type-prescription
                               acl2::expt-type-prescription-nonpositive-base-even-exponent))))))

  (add-svex-simplify-rule integerp-4vec-concat$-slower :disabled t)

  (def-rp-rule integerp-4vec-concat$
    (implies (and (integerp x)
                  (integerp y)
                  (natp size))
             (integerp (4vec-concat$ size x y)))
    :hints (("Goal"
             :in-theory (e/d (4vec-concat$
                              4VEC-CONCAT
                              4vec
                              SV::4VEC->LOWER
                              sv::4vec->upper)
                             (convert-4vec-concat-to-4vec-concat$)))))

  (add-svex-simplify-rule integerp-4vec-concat$)

  (def-rp-rule natp-4vec-concat$
    (implies (and (integerp x)
                  (natp y)
                  (natp size))
             (natp (4vec-concat$ size x y)))
    :hints (("Goal"
             :in-theory (e/d (4vec-concat$
                              4VEC-CONCAT
                              4vec
                              SV::4VEC->LOWER
                              sv::4vec->upper)
                             (convert-4vec-concat-to-4vec-concat$)))))

  (add-svex-simplify-rule natp-4vec-concat$)

  (def-rp-rule bitp-4vec-concat$
    (implies (and (integerp x))
             (bitp (4vec-concat$ 1 x 0)))
    :hints (("goal"
             :in-theory (e/d (4vec-concat$
                              4vec-concat
                              4vec
                              sv::4vec->lower
                              4vec-part-select
                              sv::4vec->upper)
                             (convert-4vec-concat-to-4vec-concat$)))))
  (add-svex-simplify-rule bitp-4vec-concat$))

(encapsulate
  nil
  ;; bits types

  (local
   (use-arithmetic-5 t))

  (def-rp-rule 4vec-p-bits
    (4vec-p (bits val start size ))
    :hints (("Goal"
             :in-theory (e/d (bits)
                             ()))))

  (add-svex-simplify-rule 4vec-p-bits)

  (def-rp-rule integerp-4vec-part-select
    (implies (and (integerp x)
                  (natp start)
                  (natp size))
             (integerp (4vec-part-select start size x)))
    :hints (("Goal"
             :in-theory (e/d (bits
                              SV::4VEC->UPPER
                              4VEC
                              4VEC-SHIFT-CORE
                              SV::4VEC->LOWER
                              4VEC-CONCAT
                              4VEC-RSH
                              4VEC-PART-SELECT)
                             (CONVERT-4VEC-CONCAT-TO-4VEC-CONCAT$)))))

  (add-svex-simplify-rule integerp-4vec-part-select)

  (def-rp-rule integerp-bits
    (implies (and (integerp x)
                  (natp size)
                  (natp start))
             (integerp (bits x start size)))
    :hints (("Goal"
             :in-theory (e/d (bits)
                             (CONVERT-4VEC-CONCAT-TO-4VEC-CONCAT$)))))

  (add-svex-simplify-rule integerp-bits)

  (def-rp-rule natp-4vec-part-select-better
    (implies (and (integerp x)
                  (natp start)
                  (natp size))
             (natp (4vec-part-select start size x)))
    :hints (("Goal"
             :in-theory (e/d (bits
                              SV::4VEC->UPPER
                              4VEC
                              4VEC-SHIFT-CORE
                              SV::4VEC->LOWER
                              4VEC-CONCAT
                              4VEC-RSH
                              4VEC-PART-SELECT)
                             (CONVERT-4VEC-CONCAT-TO-4VEC-CONCAT$)))))

  (def-rp-rule natp-bits
    (implies (and (integerp x)
                  (natp size)
                  (natp start))
             (natp (bits x start size)))
    :hints (("Goal"
             :in-theory (e/d (bits)
                             (CONVERT-4VEC-CONCAT-TO-4VEC-CONCAT$)))))

  (def-rp-rule bitp-bits-size=1
    (implies (and (integerp x)
                  (natp start))
             (bitp (bits x start 1)))
    :hints (("Goal"
             :in-theory (e/d (bits
                              SV::4VEC->LOWER
                              4VEC-RSH
                              4VEC-PART-SELECT
                              4VEC-CONCAT
                              4VEC-SHIFT-CORE
                              SV::4VEC->UPPER)
                             (bitp
                              convert-4vec-concat-to-4vec-concat$)))))

  (add-svex-simplify-rule bitp-bits-size=1)

  (def-rp-rule bit$-of-negated-bit
    (implies (and (bitp x)
                  (natp start))
             (equal (bits (- x) start 1 )
                    x))
    :hints (("Goal"
             :do-not '(preprocess)
             :expand ((4VEC-PART-SELECT START 1 0)
                      (SV::4VEC->UPPER START)
                      (SV::4VEC->LOWER START))
             :use ((:instance 4vec-part-select-of-negated-bit))
             :in-theory (e/d ()
                             (
                              4vec-part-select-of-negated-bit
                              convert-4vec-concat-to-4vec-concat$
                              )))))
  (defthm bits-of-bitp-size=posp-start=0
    (implies (and (bitp val)
                  (posp size))
             (equal (bits val 0 size)
                    val))
    :hints (("Goal"
             :in-theory (e/d (bits
                              4VEC-PART-SELECT
                              SV::4VEC->UPPER
                              sv::4vec->lower
                              4VEC-CONCAT
                              4VEC-CONCAT$)
                             (
                              ))))))

(def-rp-rule 
  equal-of-bits-to-a-constant
  (implies (and (syntaxp (and :rewriting-main-term
                              (or (and (consp x)
                                       (quotep x))
                                  (sv::4vec-p x))))
                (natp x)
                (natp size)
                (> size 1)
                (integerp y)
                (natp start))
           (and (equal (equal (svl::bits y start size) x)
                       (and (equal (svl::bits y start 1)
                                   (svl::bits x 0 1))
                            (equal (sv::4vec-rsh 1 (svl::bits y start size))
                                   (sv::4vec-rsh 1 x))))
                (equal (equal x (svl::bits y start size))
                       (and (equal (svl::bits y start 1)
                                   (svl::bits x 0 1))
                            (equal (sv::4vec-rsh 1 (svl::bits y start size))
                                   (sv::4vec-rsh 1 x))))))
  :hints (("Goal"
           :cases ((< 1 size))
           :use ((:instance 4vec-concat-of-part-select-and-rsh
                            (y (svl::bits y start size))
                            (size 1))
                 (:instance 4vec-concat-of-part-select-and-rsh
                            (y x)
                            (size 1))
                 (:instance EQUAL-OF-4VEC-CONCAT-WITH-SIZE=1
                            (k (bits y start 1))
                            (l (sv::4vec-rsh 1 (svl::bits y start size)))))
           :in-theory (e/d ()
                           (4vec
                            4VEC-CONCAT-OF-FIRST-BIT-AND-THE-REST
                            EQUAL-OF-4VEC-CONCAT-WITH-SIZE=1
                            4vec-concat-of-part-select-and-rsh
                            ;;4VEC-CONCAT$-OF-SIZE=1-TERM2=0
                            )))))

(encapsulate
  nil

  (local
   (use-arithmetic-5 t))

  (def-rp-rule 4vec-p-4vec-bitnot
    (and
     (4vec-p (4vec-bitnot x))
     (4vec-p (4vec-bitnot$ size x)))
    :hints (("Goal"
             :in-theory (e/d (bits
                              4VEC-BITNOT$)
                             ()))))

  (add-svex-simplify-rule 4vec-p-4vec-bitnot)

  (def-rp-rule integerp-4vec-bitnot
    (implies (and (integerp x))
             (integerp (4vec-bitnot x)))
    :hints (("Goal"
             :in-theory (e/d (4vec-bitnot
                              SV::3VEC-FIX
                              SV::4VEC->LOWER
                              SV::4VEC->UPPER
                              4vec
                              SV::3VEC-BITNOT) ()))))

  (add-svex-simplify-rule integerp-4vec-bitnot)

  (def-rp-rule integerp-4vec-bitnot$
    (implies (and (integerp x)
                  (natp size))
             (integerp (4vec-bitnot$ size x)))
    :hints (("Goal"
             :use ((:instance natp-bits
                              (start 0)
                              (size size)
                              (x (4VEC-BITNOT X))))
             :in-theory (e/d (bits
                              4VEC-BITNOT$)
                             ()))))

  (add-svex-simplify-rule integerp-4vec-bitnot$)

  (def-rp-rule natp-4vec-bitnot$
    (implies (and (integerp x)
                  (natp size))
             (natp (4vec-bitnot$ size x)))
    :hints (("Goal"
             :use ((:instance natp-bits
                              (start 0)
                              (size size)
                              (x (4VEC-BITNOT X))))
             :in-theory (e/d (bits
                              4VEC-BITNOT$)
                             ()))))

  (def-rp-rule bitp-of-4vec-bitnot
    (implies (and (integerp x)
                  (natp start))
             (bitp (bits (4vec-bitnot x) start 1 )))
    :hints (("Goal"
             :do-not '(preprocess)
             :in-theory (e/d (bitp
                              4vec-bitnot$
                              SV::4VEC->UPPER
                              SV::4VEC->LOWER
                              4VEC-CONCAT
                              4VEC-PART-SELECT
                              4vec-bitnot
                              SV::3VEC-BITNOT
                              SV::3VEC-FIX
                              4vec
                              bits
                              4VEC-RSH
                              4VEC-SHIFT-CORE)
                             (convert-4vec-concat-to-4vec-concat$
                              ;;4vec-concat$-of-size=1-term2=0
                              )))))

  (def-rp-rule bitp-of-4vec-bitnot$
    (implies (and (integerp x)
                  (natp start)
                  (natp size))
             (bitp (bits (4vec-bitnot$ size x) start 1 )))
    :hints (("Goal"
             :do-not '(preprocess)
             :cases ((< START SIZE))
             :use ((:instance bitp-bits-size=1
                              (x (4VEC-BITNOT X)))
                   (:instance 4VEC-PART-SELECT-OF-4VEC-BITNOT
                              (size 1)))
             :in-theory (e/d (bitp
                              4vec-bitnot$
                              SV::4VEC->UPPER
                              SV::4VEC->LOWER
                              4VEC-CONCAT
                              SV::3VEC-BITNOT
                              SV::3VEC-FIX
                              4vec
                              bits
                              4VEC-RSH
                              4VEC-SHIFT-CORE)
                             (convert-4vec-concat-to-4vec-concat$
                              bitp
                              ;;4vec-concat$-of-size=1-term2=0
                              )))))

  (def-rp-rule bitp-of-4vec-bitnot$-2
    (implies (and (integerp x))
             (bitp (4vec-bitnot$ 1 x)))
    :hints (("Goal"
             :do-not '(preprocess)
             :cases ((< START SIZE))
             :use ((:instance bitp-bits-size=1
                              (x (4VEC-BITNOT X)))
                   (:instance 4VEC-PART-SELECT-OF-4VEC-BITNOT
                              (size 1)))
             :in-theory (e/d (bitp
                              4vec-bitnot$
                              SV::4VEC->UPPER
                              SV::4VEC->LOWER
                              4VEC-CONCAT
                              SV::3VEC-BITNOT
                              SV::3VEC-FIX
                              4vec
                              bits
                              4VEC-RSH
                              4VEC-SHIFT-CORE)
                             (convert-4vec-concat-to-4vec-concat$
                              bitp
                              ;;4vec-concat$-of-size=1-term2=0
                              )))))

  (add-svex-simplify-rule bitp-of-4vec-bitnot$-2)

  (defthmd 4vec-bitnot-of-4vec-concat$-side-cond
    (implies (and (integerp x)
                  (integerp y)
                  (natp size))
             (and (integerp (4vec-concat$ size
                                          (4vec-bitnot$ size (bits x 0 size))
                                          (4vec-bitnot y)))
                  (integerp (4vec-bitnot$ size (bits x 0 size)))
                  (integerp (4vec-bitnot y))
                  (integerp (bits x 0 size))))
    :hints (("Goal"
             :in-theory (e/d () ()))))

  (rp-attach-sc
   4vec-bitnot-of-4vec-concat$
   4vec-bitnot-of-4vec-concat$-side-cond))

(def-rp-rule 4vec-fix-of-functions
  (and (equal (4vec-fix (4vec-bitnot s))
              (4vec-bitnot s))
       (equal (4vec-fix (sv::4vec-symwildeq s s2))
              (sv::4vec-symwildeq s s2))
       (equal (4vec-fix (bits val start size ))
              (bits val start size ))
       (equal (4vec-fix (sbits start size new old))
              (sbits start size new old))
       (equal (4vec-fix (4vec-bitnot$ size val))
              (4vec-bitnot$ size val))
       (equal (4vec-fix (4vec-concat$ size val1 val2))
              (4vec-concat$ size val1 val2))))

(add-svex-simplify-rule 4vec-fix-of-functions)

(def-rp-rule 4vec-fix-wog-of-functions
  (and (equal (4vec-fix-wog (4vec-bitnot s))
              (4vec-bitnot s))
       (equal (4vec-fix-wog (bits val start size ))
              (bits val start size ))
       (equal (4vec-fix-wog (sbits start size new old))
              (sbits start size new old))
       (equal (4vec-fix-wog (4vec-bitnot$ size val))
              (4vec-bitnot$ size val))
       (equal (4vec-fix-wog (4vec-concat$ size val1 val2))
              (4vec-concat$ size val1 val2))))

(add-svex-simplify-rule 4vec-fix-wog-of-functions)

(def-rp-rule 4vec-p-of-all-4vec-fncs
  #!SV
  (and (4vec-p (4vec-bitand x y))
       (4vec-p (4vec-bitor x y))
       (4vec-p (4vec-bitxor x y))
       (4vec-p (4vec-fix x))
       (4vec-p (4vec-bit-extract x y))
       (4vec-p (4vec-bitnot x))
       (4vec-p (3vec-fix x))
       (4vec-p (4vec-res x y))
       (4vec-p (4vec-resor x y))
       (4vec-p (4vec-resand x y))
       (4vec-p (4vec-override x y))
       (4vec-p (4vec-onset x))
       (4vec-p (4vec-offset x))
       (4vec-p (4vec-reduction-and x))
       (4vec-p (4vec-reduction-or x))
       (4vec-p (4vec-parity x))
       (4vec-p (4vec-zero-ext x y))
       (4vec-p (4vec-sign-ext x y))
       (4vec-p (4vec-concat x y z))
       (4vec-p (4vec-rev-blocks x y z))
       (4vec-p (4vec-rsh x y))
       (4vec-p (4vec-lsh x y))
       (4vec-p (4vec-plus x y))
       (4vec-p (4vec-minus x y))
       (4vec-p (4vec-uminus x))
       (4vec-p (4vec-times x y))
       (4vec-p (4vec-quotient x y))
       (4vec-p (4vec-remainder x y))
       (4vec-p (4vec-xdet x))
;(4vec-p (4vec-cuontones x))
       (4vec-p (4vec-onehot x))
       (4vec-p (4vec-onehot x))
       (4vec-p (4vec-onehot0 x))
       (4vec-p (4vec-< x y))
       (4vec-p (4vec-== x y))
       (4vec-p (4vec-=== x y))
       (4vec-p (4vec-wildeq x y))
       (4vec-p (4vec-wildeq-safe x y))
       (4vec-p (4vec-symwildeq x y))
       (4vec-p (4vec-clog2 x))
       (4vec-p (4vec-pow x y))
       (4vec-p (4vec-? x y z))
       (4vec-p (4vec-?* x y z))
       (4vec-p (4vec-bit? x y z))
       (4vec-p (4vec-part-select x y z))
       (4vec-p (4vec-part-install x y z m))))

(add-svex-simplify-rule 4vec-p-of-all-4vec-fncs)

(rp::add-rp-rule 4vec-p-of-sbits)
(rp::add-rp-rule 4vec-p-of-bits)
(rp::add-rp-rule 4vec-p-of-4vec-concat$)

(add-svex-simplify-rule 4vec-p-of-sbits)
(add-svex-simplify-rule 4vec-p-of-bits)
(add-svex-simplify-rule 4vec-p-of-4vec-concat$)
;;(rp::add-rp-rule svl::svl-env-p-of-svl-env)

(def-rp-rule concat-of-rsh-with-0-to-bits
  (implies (and (natp start)
                (natp size))
           (equal (4vec-concat$ size (4vec-rsh start term) 0)
                  (bits term start size)))
  :hints (("Goal"
           :in-theory (e/d (4vec-concat$
                            4VEC-RSH
                            4VEC-CONCAT
                            4vec-part-select
                            SV::4VEC->UPPER
                            SV::4VEC->LOWER
                            bits)
                           ()))))

(add-svex-simplify-rule concat-of-rsh-with-0-to-bits)

(encapsulate
  nil

  (local
   (use-arithmetic-5 t))

  (def-rp-rule equal-of-4vec-concat$
    (implies t;(and (bitp a))
             (equal (equal (4vec-concat$ 1 a x)
                           (4vec-concat$ 1 a y))
                    (equal (4vec-fix x) (4vec-fix y))))
    :hints (("goal"
             :do-not '(preprocess)
             :in-theory (e/d (4vec-concat$
                              bitp
                              4vec
                              4vec-p
                              4vec-concat
                              sv::4vec->lower
                              logapp
                              loghead
                              ifix
                              4vec-fix
                              sv::4vec->upper)
                             (convert-4vec-concat-to-4vec-concat$))))))

#|(in-theory (enable 4vec-part-install-is-sbits
                   4vec-zero-ext-is-bits))||#

(rp::enable-rules '(4vec-part-install-is-sbits
                    4vec-zero-ext-is-bits))

(def-rp-rule :disabled-for-acl2 t
  4vec-part-select-is-bits
  (implies t
           (equal (4vec-part-select start size x)
                  (bits x start size)))
  :hints (("Goal"
           :in-theory (e/d (bits) ()))))

(deftheory bits-sbits-no-syntaxp
  '(bits-of-lsh-1-no-syntaxp
    bits-of-lsh-2-no-syntaxp
    bits-of-lsh-3-no-syntaxp
    bits-of-rsh-no-syntaxp
    bits-of-concat-1-no-syntaxp
    bits-of-concat-2-no-syntaxp
    bits-of-concat-3-no-syntaxp
    sbits-of-concat-no-syntaxp
    bits-of-sbits-1-no-syntaxp
    bits-of-sbits-2-no-syntaxp
    bits-of-sbits-3-no-syntaxp
    bits-of-sbits-4-no-syntaxp
    bits-of-sbits-5-no-syntaxp))

(encapsulate
  nil
  (local
   (use-arithmetic-5 t))

  (def-rp-rule :disabled-for-acl2 t
    logbit-to-bits-without-hyps
    (implies t
             (equal (acl2::logbit index x)
                    (bits (ifix x) (nfix index) 1)))
    :hints (("Goal"
             :in-theory (e/d (4vec-part-select
                              SV::4VEC->UPPER
                              SV::4VEC->LOWER
                              4VEC-RSH
                              4VEC-ZERO-EXT
                              4VEC-SHIFT-CORE)
                             (;;4VEC-CONCAT$-OF-SIZE=1-TERM2=0
                              4VEC-ZERO-EXT-IS-4VEC-CONCAT)))))
  
  (def-rp-rule :disabled-for-acl2 t
    logbit-to-bits
    (implies (and (natp index)
                  (integerp x))
             (equal (acl2::logbit index x)
                    (bits x index 1)))
    :hints (("Goal"
             :in-theory (e/d (4vec-part-select
                              SV::4VEC->UPPER
                              SV::4VEC->LOWER
                              4VEC-RSH
                              4VEC-ZERO-EXT
                              4VEC-SHIFT-CORE)
                             (;;4VEC-CONCAT$-OF-SIZE=1-TERM2=0
                              4VEC-ZERO-EXT-IS-4VEC-CONCAT)))))

  (defthm logbit-to-bits-side-cond
    (implies (and (natp index)
                  (integerp x))
             (integerp (bits x index 1)))
    :rule-classes nil)

  (rp-attach-sc logbit-to-bits
                logbit-to-bits-side-cond))

(def-rp-rule 4vec-parity-of-bitp
  (implies (bitp x)
           (equal (sv::4vec-parity x)
                  (- x)))
  :hints (("Goal"
           :in-theory (e/d (bitp) ()))))

(def-rp-rule 4vec-parity-of-bits-to-4vec-bitxor
  (implies (and (integerp x)
                (natp start))
           (and (equal (sv::4vec-parity (bits x start 2))
                       (- (sv::4vec-bitxor (bits x start 1)
                                           (bits x (1+ start) 1))))
                (equal (sv::4vec-parity (bits x start 1))
                       (- (bits x start 1)))))
  :hints (("Goal"
           :do-not-induct t
           :use ((:instance 4vec-parity-of-4vec-part-select-to-4vec-bitxor)))))

(def-rp-rule 4vec-res-of-4vec-concat$-when-dont-care
  (implies
   (and (natp size)
        (equal (bits y 0 size) (bits (sv::4vec-x) 0 size)))
   (and (equal (sv::4vec-res (svl::4vec-concat$ size x rest) y)
               (svl::4vec-concat size
                                 (sv::4vec-x)
                                 (sv::4vec-res rest (sv::4vec-rsh size y))))
        (equal (sv::4vec-res y (svl::4vec-concat$ size x rest))
               (svl::4vec-concat size
                                 (sv::4vec-x)
                                 (sv::4vec-res rest (sv::4vec-rsh size
                                                                  y))))))
  :hints (("Goal"
           :use ((:instance 4vec-res-of-4vec-concat-when-dont-care))
           :in-theory (e/d (4VEC-CONCAT$)
                           (4vec-res-of-4vec-concat-when-dont-care)))))

(add-svex-simplify-rule 4vec-res-of-4vec-concat$-when-dont-care)

(def-rp-rule 4vec-res-of-4vec-concat$-when-z
  (implies
   (and (natp size)
        (equal (bits y 0 size) (bits (sv::4vec-z) 0 size)))
   (and (equal (sv::4vec-res (svl::4vec-concat$ size x rest) y)
               (svl::4vec-concat size
                                 x
                                 (sv::4vec-res rest (sv::4vec-rsh size y))))
        (equal (sv::4vec-res y (svl::4vec-concat$ size x rest))
               (svl::4vec-concat size
                                 x
                                 (sv::4vec-res rest (sv::4vec-rsh size
                                                                  y))))))
  :hints (("Goal"
           :use ((:instance 4vec-res-of-4vec-concat-when-z))
           :in-theory (e/d* (4VEC-CONCAT$)
                            (4vec-res-of-4vec-concat-when-z)))))

(add-svex-simplify-rule 4vec-res-of-4vec-concat$-when-z)

(def-rp-rule bits-of-4vec-res
  (implies (natp start)
           (equal (bits (sv::4vec-res x y) start size)
                  (sv::4vec-res (bits x start size)
                                (bits y start size))))
  :hints (("Goal"
           :use ((:instance 4vec-part-select-of-4vec-res))
           :in-theory (e/d (bits)
                           (4vec-part-select-of-4vec-res)))))

(add-svex-simplify-rule bits-of-4vec-res)

(def-rp-rule bits-of-4vec-bit?!
  (implies (and (natp start)
                (natp size))
           (equal (bits (sv::4vec-bit?! test then else) start size)
                  (sv::4vec-bit?! (bits test start size)
                                  (bits then start size)
                                  (bits else start size))))
  :hints (("Goal"
           :use ((:instance 4vec-part-select-of-4vec-bit?!))
           :in-theory (e/d (bits)
                           (4vec-part-select-of-4vec-bit?!)))))

(add-svex-simplify-rule bits-of-4vec-bit?!)

(def-rp-rule bits-of-4vec-bit?
  (implies (and (natp start)
                (natp size))
           (equal (bits (sv::4vec-bit? test then else) start size)
                  (sv::4vec-bit? (bits test start size)
                                  (bits then start size)
                                  (bits else start size))))
  :hints (("Goal"
           :use ((:instance 4vec-part-select-of-4vec-bit?))
           :in-theory (e/d (bits)
                           (4vec-part-select-of-4vec-bit?)))))

(add-svex-simplify-rule bits-of-4vec-bit?)

(progn
  (def-rp-rule 4vec-concat$-same-var-merge
    (implies (and (natp csize1)
                  (natp csize2)
                  (natp start1)
                  (natp start2)
                  (natp size2)
                  (equal start2 (+ start1 csize1)))
             (equal (svl::4vec-concat$ csize1
                                       (svl::bits x start1 csize1)
                                       (svl::4vec-concat$ csize2
                                                          (svl::bits x start2 size2)
                                                          other))
                    (svl::4vec-concat$ (+ csize1 csize2) (svl::bits x start1 (+
                                                                              csize1 size2))

                                       other)))
    :hints (("Goal"
             :use ((:instance 4vec-concat-same-var-merge))
             :in-theory (e/d (4VEC-CONCAT$)
                             (4vec-concat-same-var-merge)))))
  (add-svex-simplify-rule 4vec-concat$-same-var-merge))

(progn
  (def-rp-rule 4vec-concat$-same-var-merge-2
    (implies (and (natp csize1)
                  (natp start1)
                  (natp start2)
                  (natp size2)
                  (equal start2 (+ start1 csize1)))
             (equal (svl::4vec-concat$ csize1
                                       (svl::bits x start1 csize1)
                                       (svl::bits x start2 size2))
                    (svl::bits x start1 (+ csize1 size2))))
    :hints (("Goal"
             :use ((:instance 4vec-concat-same-var-merge-2))
             :in-theory (e/d (4VEC-CONCAT$)
                             (4vec-concat-same-var-merge-2)))))
  (add-svex-simplify-rule 4vec-concat$-same-var-merge-2))

(progn
  (def-rp-rule 4vec-concat$-same-var-merge-with-4vec-bitnot$
    (implies (and (natp csize1)
                  (natp csize2)
                  (natp start1)
                  (natp start2)
                  (integerp x)
                  (equal start2 (+ start1 csize1)))
             (equal (svl::4vec-concat$ csize1 (svl::4vec-bitnot$ csize1 (svl::bits x start1 csize1))
                                       (svl::4vec-concat$
                                        csize2 (svl::4vec-bitnot$ csize2 (svl::bits x start2 csize2))
                                        other))
                    (svl::4vec-concat$ (+ csize1 csize2) (svl::4vec-bitnot$
                                                          (+ csize1 csize2)
                                                          (svl::bits x start1 (+ csize1 csize2)))
                                       other)))
    :hints (("Goal"
             :use ((:instance 4vec-concat-same-var-merge-with-bitnot))
             :in-theory (e/d (4VEC-CONCAT$) (4vec-concat-same-var-merge-with-bitnot)))))
  (add-svex-simplify-rule 4vec-concat$-same-var-merge-with-4vec-bitnot$))


(progn
  (defthmd bits-of--4vec-plus-propagate
    (implies (and (natp start)
                  (natp size)
                  (integerp x)
                  (integerp y))
             (equal (bits (4vec-plus x y) start size)
                    (bits
                     (4vec-plus$ (+ start size)
                                 (bits x 0 (+ start size))
                                 (bits y 0 (+ start size)))
                     start size)))
    :hints (("Goal"
             :do-not-induct t
             :use ((:instance 4vec-part-select-of-4vec-plus-propagate))
             :in-theory (e/d (bits)
                             (4vec-part-select-of-4vec-plus-propagate
                              )))))
  (defthm bits-of--4vec-plus-propagate-side-cond
    (implies (and (integerp x)
                  (integerp y))
             (and (integerp x)
                  (integerp y)))
    :rule-classes nil)
  (rp-attach-sc bits-of--4vec-plus-propagate
                ;; in case it takes a long time to calculate that x and y are
                ;; integerp, attach their side-cond.
                bits-of--4vec-plus-propagate-side-cond)
  (add-svex-simplify-rule bits-of--4vec-plus-propagate))

(progn
  (defthmd bits-of-4vec-plus$
    (implies (and (syntaxp (and (quotep start)
                                (quotep size)
                                (quotep size2)))
                  (natp start)
                  (natp size)
                  (natp size2)
                  (implies (not (= start 0)) ;; put this hyp here so it doesn't 
                           (not (equal size2 (+ start size)))))
             (equal (bits (4vec-plus$ size2 x y) start size)
                    (cond ((<= size2 start)
                           0)
                          ((< size2 (+ start size))
                           (bits (4vec-plus$ size2 x y) start (- size2 start)))
                          ((> size2 (+ start size))
                           (bits (4vec-plus x y) start size) ;; trigger
                           ;; bits-of--4vec-plus-propagate again. 
                           )
                          ((= start 0)
                           (4vec-plus$ size2 x y))
                          (t t)))) ;; should never come to this case
    :hints (("Goal"
             :cases ((= size 0)
                     (= size2 0))
             :expand ((4VEC-PART-SELECT START SIZE 0))
             :in-theory (e/d (4vec-plus$
                              SV::4VEC->UPPER
                              SV::4VEC->LOWER
                              BITS)
                             ()))))
  (add-svex-simplify-rule bits-of-4vec-plus$))
                         
                         
           
(progn
  (def-rp-rule bits-with-zero-size
    (implies (integerp start)
             (equal (svl::bits x start 0)
                    0))
    :hints (("goal"
             :in-theory (e/d (svl::bits
                              sv::4vec->upper
                              sv::4vec->lower
                              sv::4vec-part-select)
                             ()))))
  
  (add-svex-simplify-rule bits-with-zero-size))


(progn
  (def-rp-rule :disabled-for-acl2 t
    logcar-to-bits
    (implies (integerp x)
             (equal (acl2::logcar x)
                    (svl::bits x 0 1)))
    :hints (("goal"
             :in-theory (e/d (svl::bits
                              sv::4vec-concat
                              sv::4vec->upper
                              sv::4vec->lower
                              sv::4vec-part-select)
                             (svl::equal-of-4vec-concat-with-size=1)))))

  (def-rp-rule :disabled-for-acl2 t
    logcdr-to-4vec-rsh
    (implies (integerp x)
             (equal (acl2::logcdr x)
                    (sv::4vec-rsh 1 x)))
    :hints (("goal"
             :in-theory (e/d (sv::4vec-rsh
                              sv::4vec->upper
                              sv::4vec->lower
                              sv::4vec-shift-core)
                             ()))))

  (add-svex-simplify-rule logcar-to-bits)
  (add-svex-simplify-rule logcdr-to-4vec-rsh))

(encapsulate
  nil

  (local
   (use-arithmetic-5 t))

  (def-rp-rule :disabled-for-acl2 t
    logbitp-to-bits-without-hyps
    (equal (acl2::logbitp index x)
           (equal (svl::bits (ifix x) (nfix index) 1)
                  1))
    :hints (("Goal"
             :in-theory (e/d (SV::4VEC-PART-SELECT
                              svl::bits
                              SV::4VEC->UPPER
                              SV::4VEC->LOWER
                              SV::4VEC-SHIFT-CORE
                              SV::4VEC-CONCAT
                              SV::4VEC-RSH)
                             (SVL::EQUAL-OF-4VEC-CONCAT-WITH-SIZE=1)))))
  
  (def-rp-rule :disabled-for-acl2 t
    logbitp-to-bits
    (implies (and (integerp x)
                  (natp index))
             (equal (acl2::logbitp index x)
                    (equal (svl::bits x index 1)
                           1)))
    :hints (("Goal"
             :in-theory (e/d (SV::4VEC-PART-SELECT
                              svl::bits
                              SV::4VEC->UPPER
                              SV::4VEC->LOWER
                              SV::4VEC-SHIFT-CORE
                              SV::4VEC-CONCAT
                              SV::4VEC-RSH)
                             (SVL::EQUAL-OF-4VEC-CONCAT-WITH-SIZE=1)))))

  (add-svex-simplify-rule logbitp-to-bits))


(def-rp-rule :disabled-for-acl2 t
  logcons-to-logapp
  (implies t
           (equal (acl2::logcons x y)
                  (logapp 1 (ACL2::BFIX x) y))))

(svl::add-svex-simplify-rule logcons-to-logapp)

(def-rp-rule ACL2::BFIX-opener
  (implies (bitp x)
           (equal (ACL2::BFIX x) x)))

(def-rp-rule :disabled-for-acl2 t
  postiive-ash-to-logapp
  (implies (natp size)
           (equal (ash x size)
                  (logapp size 0 x))))

(svl::add-svex-simplify-rule postiive-ash-to-logapp)

;; #!SVL
;; (encapsulate
;;   nil

;;   (local
;;    (in-theory (enable SV::4VEC->UPPER
;;                       SV::4VEC
;;                       SV::4VEC->lower)))
  
;;   (def-rp-rule :disabled-for-acl2 t
;;     logand-to-4vec-bitand
;;     (implies (and (integerp x)
;;                   (integerp y))
;;              (equal (logand x y)
;;                     (sv::4vec-bitand x y)))
;;     :hints (("Goal"
;;              :in-theory (e/d (sv::4vec-bitand
;;                               sv::3vec-bitand)
;;                              (logand)))))
;;   (def-rp-rule integerp-of-4vec-bitand
;;     (implies (and (integerp x)
;;                   (integerp y))
;;              (integerp (sv::4vec-bitand x y)))
;;     :hints (("Goal"
;;              :in-theory (e/d (sv::4vec-bitand
;;                               sv::3vec-bitand)
;;                              (logand)))))

;;   (rp-attach-sc logand-to-4vec-bitand
;;                 integerp-of-4vec-bitand)

;;   (add-svex-simplify-rule logand-to-4vec-bitand)

;;   (def-rp-rule :disabled-for-acl2 t
;;     logior-to-4vec-bitor
;;     (implies (and (integerp x)
;;                   (integerp y))
;;              (equal (logior x y)
;;                     (sv::4vec-bitor x y)))
;;     :hints (("Goal"
;;              :in-theory (e/d (sv::4vec-bitor
;;                               sv::3vec-bitor)
;;                              (logior)))))
;;   (def-rp-rule integerp-of-4vec-bitor
;;     (implies (and (integerp x)
;;                   (integerp y))
;;              (integerp (sv::4vec-bitor x y)))
;;     :hints (("Goal"
;;              :in-theory (e/d (sv::4vec-bitor
;;                               sv::3vec-bitor)
;;                              (logior)))))

;;   (rp-attach-sc logior-to-4vec-bitor
;;                 integerp-of-4vec-bitor)

;;   (add-svex-simplify-rule logior-to-4vec-bitor)

;;   (def-rp-rule :disabled-for-acl2 t
;;     logxor-to-4vec-bitxor
;;     (implies (and (integerp x)
;;                   (integerp y))
;;              (equal (logxor x y)
;;                     (sv::4vec-bitxor x y)))
;;     :hints (("Goal"
;;              :in-theory (e/d (sv::4vec-bitxor
;;                               sv::3vec-bitxor)
;;                              (logxor)))))
;;   (def-rp-rule integerp-of-4vec-bitxor
;;     (implies (and (integerp x)
;;                   (integerp y))
;;              (integerp (sv::4vec-bitxor x y)))
;;     :hints (("Goal"
;;              :in-theory (e/d (sv::4vec-bitxor
;;                               sv::3vec-bitxor)
;;                              (logxor)))))

;;   (rp-attach-sc logxor-to-4vec-bitxor
;;                 integerp-of-4vec-bitxor)

;;   (add-svex-simplify-rule logxor-to-4vec-bitxor)

  
;;   (def-rp-rule :disabled-for-acl2 t
;;     lognor-to-4vec-bitnor
;;     (implies (and (integerp x))
;;              (equal (lognot x)
;;                     (sv::4vec-bitnot x)))
;;     :hints (("goal"
;;              :in-theory (e/d (sv::4vec-bitnot
;;                               sv::3vec-bitnot)
;;                              (lognot)))))
  
;;   (def-rp-rule integerp-of-4vec-bitnot
;;     (implies (and (integerp x))
;;              (integerp (sv::4vec-bitnot x)))
;;     :hints (("Goal"
;;              :in-theory (e/d (sv::4vec-bitnot
;;                               sv::3vec-bitnot)
;;                              (logior)))))

;;   (rp-attach-sc lognot-to-4vec-bitnot
;;                 integerp-of-4vec-bitnot)

;;   (add-svex-simplify-rule lognot-to-4vec-bitnot))


(rp::def-rp-rule unary--of-unary--
  (implies (acl2-numberp x)
           (equal (- (- x))
                  x)))

(svl::add-svex-simplify-rule unary--of-unary--)

(rp::def-rp-rule integerp-of-unary--
  (implies (integerp x)
                (integerp (- x))) 
  :hints (("Goal"
           :in-theory (e/d () ()))))

(svl::add-svex-simplify-rule integerp-of-unary--)

(rp::def-rp-rule integerp-implies-acl2-numberp
  (implies (integerp x)
           (acl2-numberp x)))

(svl::add-svex-simplify-rule integerp-implies-acl2-numberp)


