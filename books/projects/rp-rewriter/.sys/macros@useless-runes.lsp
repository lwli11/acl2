(RP::STRLIST-TO-STR
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(RP::SYM-APP-FNC)
(RP::SA-LST)
(RP::GET-DIGIT-COUNT
 (590 10 (:REWRITE DEFAULT-PLUS-1))
 (588 10 (:REWRITE DEFAULT-PLUS-2))
 (537 537 (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
 (537 537 (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
 (537 537 (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
 (299 23 (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
 (207 23 (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
 (207 23 (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
 (207 23 (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
 (192 2 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (115 23 (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
 (115 23 (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
 (115 23 (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
 (115 23 (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 2))
 (115 23 (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
 (115 23 (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
 (115 23 (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
 (115 23 (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
 (115 23 (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2))
 (68 1 (:REWRITE FLOOR-ZERO . 3))
 (53 1 (:REWRITE CANCEL-FLOOR-+))
 (31 1 (:REWRITE FLOOR-X-Y-=-1 . 2))
 (30 30 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (30 30 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (30 30 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (30 30 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (30 1 (:REWRITE FLOOR-ZERO . 4))
 (27 4 (:REWRITE INTEGERP-MINUS-X))
 (26 22 (:REWRITE DEFAULT-TIMES-2))
 (22 22 (:REWRITE DEFAULT-TIMES-1))
 (22 1 (:REWRITE FLOOR-=-X/Y . 3))
 (22 1 (:REWRITE FLOOR-=-X/Y . 2))
 (20 8 (:REWRITE DEFAULT-LESS-THAN-1))
 (17 2 (:REWRITE |(* (- x) y)|))
 (14 6 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (11 1 (:REWRITE DEFAULT-FLOOR-RATIO))
 (10 10 (:REWRITE THE-FLOOR-BELOW))
 (10 8 (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (10 8 (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (10 2 (:REWRITE DEFAULT-MINUS))
 (9 9 (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (9 2 (:REWRITE |(- (* c x))|))
 (8 8 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (8 8 (:REWRITE DEFAULT-LESS-THAN-2))
 (7 7 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (7 7 (:REWRITE INTEGERP-<-CONSTANT))
 (7 7 (:REWRITE CONSTANT-<-INTEGERP))
 (7 7 (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (7 7 (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (7 7 (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (7 7 (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (7 7 (:REWRITE |(< c (- x))|))
 (7 7 (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (7 7 (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (7 7 (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (7 7 (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (7 7 (:REWRITE |(< (/ x) (/ y))|))
 (7 7 (:REWRITE |(< (- x) c)|))
 (7 7 (:REWRITE |(< (- x) (- y))|))
 (6 6 (:REWRITE SIMPLIFY-SUMS-<))
 (5 5 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (5 1 (:REWRITE FLOOR-ZERO . 5))
 (5 1 (:REWRITE FLOOR-ZERO . 2))
 (5 1 (:REWRITE FLOOR-X-Y-=-1 . 3))
 (5 1 (:REWRITE FLOOR-X-Y-=--1 . 3))
 (5 1 (:REWRITE FLOOR-X-Y-=--1 . 2))
 (5 1 (:REWRITE FLOOR-CANCEL-*-REWRITING-GOAL-LITERAL))
 (5 1 (:REWRITE FLOOR-CANCEL-*-CONST))
 (5 1 (:REWRITE |(floor (* x (/ y)) z) rewriting-goal-literal|))
 (4 4 (:TYPE-PRESCRIPTION ABS))
 (3 3 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (3 3 (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (3 3 (:REWRITE REDUCE-INTEGERP-+))
 (3 3 (:REWRITE |(< (/ x) 0)|))
 (3 3 (:REWRITE |(< (* x y) 0)|))
 (3 3 (:META META-INTEGERP-CORRECT))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE FLOOR-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
 (1 1 (:REWRITE DEFAULT-FLOOR-2))
 (1 1 (:REWRITE DEFAULT-FLOOR-1))
 (1 1 (:REWRITE |(floor x (- y))| . 2))
 (1 1 (:REWRITE |(floor x (- y))| . 1))
 (1 1 (:REWRITE |(floor x (* y (/ z))) rewriting-goal-literal|))
 (1 1 (:REWRITE |(floor x (* y (/ z))) not rewriting-goal-literal|))
 (1 1 (:REWRITE |(floor (- x) y)| . 2))
 (1 1 (:REWRITE |(floor (- x) y)| . 1))
 (1 1 (:REWRITE |(floor (* x (/ y)) z) not rewriting-goal-literal|))
 (1 1 (:REWRITE |(<= (/ x) y) with (< x 0)|))
 (1 1 (:REWRITE |(<= (/ x) y) with (< 0 x)|))
 (1 1 (:REWRITE |(< x (/ y)) with (< y 0)|))
 (1 1 (:REWRITE |(< 0 (* x y))|))
 (1 1 (:REWRITE |(< (* x y) 0) rationalp (* x y)|))
 (1 1 (:REWRITE |(< (* (/ x) y) 1) with (< x 0)|))
 (1 1 (:REWRITE |(< (* (/ x) y) 1) with (< 0 x)|))
 )
(RP::SAS-FNC)
(RP::SAS-FNC-ZP)
(RP::SAS2)
(RP::CREATE-EX-CP-FNC-AUX)
(RP::CREATE-EX-CP-FNC)
(RP::CLEAR-RP-WRAPPERS
 (177 97 (:REWRITE DEFAULT-+-2))
 (126 97 (:REWRITE DEFAULT-+-1))
 (112 8 (:DEFINITION LENGTH))
 (88 8 (:DEFINITION LEN))
 (74 50 (:REWRITE DEFAULT-CDR))
 (64 16 (:DEFINITION INTEGER-ABS))
 (26 26 (:REWRITE DEFAULT-CAR))
 (24 24 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (24 16 (:REWRITE STR::CONSP-OF-EXPLODE))
 (20 18 (:REWRITE DEFAULT-<-2))
 (20 18 (:REWRITE DEFAULT-<-1))
 (16 16 (:REWRITE DEFAULT-UNARY-MINUS))
 (16 8 (:REWRITE STR::COERCE-TO-LIST-REMOVAL))
 (8 8 (:TYPE-PRESCRIPTION LEN))
 (8 8 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (8 8 (:REWRITE DEFAULT-REALPART))
 (8 8 (:REWRITE DEFAULT-NUMERATOR))
 (8 8 (:REWRITE DEFAULT-IMAGPART))
 (8 8 (:REWRITE DEFAULT-DENOMINATOR))
 )
(RP::GET-VARS-AUX)
(RP::FLAG-GET-VARS-AUX
 (316 152 (:REWRITE DEFAULT-+-2))
 (224 16 (:DEFINITION LENGTH))
 (212 152 (:REWRITE DEFAULT-+-1))
 (176 16 (:DEFINITION LEN))
 (128 32 (:REWRITE COMMUTATIVITY-OF-+))
 (128 32 (:DEFINITION INTEGER-ABS))
 (95 47 (:REWRITE DEFAULT-CDR))
 (48 48 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (48 32 (:REWRITE STR::CONSP-OF-EXPLODE))
 (44 44 (:REWRITE FOLD-CONSTS-IN-+))
 (41 36 (:REWRITE DEFAULT-<-2))
 (40 36 (:REWRITE DEFAULT-<-1))
 (32 32 (:REWRITE DEFAULT-UNARY-MINUS))
 (32 16 (:REWRITE STR::COERCE-TO-LIST-REMOVAL))
 (31 31 (:REWRITE DEFAULT-CAR))
 (16 16 (:TYPE-PRESCRIPTION LEN))
 (16 16 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (16 16 (:REWRITE DEFAULT-REALPART))
 (16 16 (:REWRITE DEFAULT-NUMERATOR))
 (16 16 (:REWRITE DEFAULT-IMAGPART))
 (16 16 (:REWRITE DEFAULT-DENOMINATOR))
 (12 2 (:TYPE-PRESCRIPTION RETURN-LAST))
 (2 2 (:TYPE-PRESCRIPTION THROW-NONEXEC-ERROR))
 )
(FLAG::FLAG-EQUIV-LEMMA)
(RP::FLAG-GET-VARS-AUX-EQUIVALENCES)
(RP::FLAG-LEMMA-FOR-TRUE-LISTP-GET-VARS-AUX
 (32 32 (:REWRITE DEFAULT-CDR))
 (25 25 (:REWRITE DEFAULT-CAR))
 (20 10 (:DEFINITION TRUE-LISTP))
 )
(RP::TRUE-LISTP-GET-VARS-AUX)
(RP::TRUE-LISTP-GET-VARS-AUX-SUBTERMS)
(RP::GET-VARS-AUX
 (7 7 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (4 4 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (4 4 (:REWRITE DEFAULT-CAR))
 (4 2 (:DEFINITION TRUE-LISTP))
 )
(RP::GET-ALL-VARS)
(RP::CLEAR-IRRELEVANT-HYP)
(RP::FETCH-NEW-THEORY-STEP1)
(RP::SORTED-SET-DIFFERENCE
 (89 42 (:REWRITE DEFAULT-+-2))
 (57 42 (:REWRITE DEFAULT-+-1))
 (26 26 (:REWRITE DEFAULT-CDR))
 (10 10 (:REWRITE DEFAULT-CAR))
 (9 3 (:REWRITE DEFAULT-<-2))
 (9 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE LEXORDER-TRANSITIVE))
 )
(RP::FETCH-NEW-THEORY-STEP2)
(RP::PRESERVE-CURRENT-THEORY-STEP1)
(RP::PRESERVE-CURRENT-THEORY-STEP2)
(RP::CREATE-CASE-MATCH-MACRO-FN)
