(REV)
(REV1)
(LP17-1-LEMMA1
 (338 197 (:REWRITE DEFAULT-CDR))
 (324 6 (:REWRITE APPLY$-CONSP-ARITY-1))
 (154 76 (:REWRITE DEFAULT-+-2))
 (105 76 (:REWRITE DEFAULT-+-1))
 (81 9 (:DEFINITION LENGTH))
 (78 78 (:REWRITE DEFAULT-CAR))
 (72 18 (:REWRITE COMMUTATIVITY-OF-+))
 (72 18 (:DEFINITION INTEGER-ABS))
 (43 30 (:REWRITE DEFAULT-<-1))
 (35 30 (:REWRITE DEFAULT-<-2))
 (28 16 (:REWRITE APPLY$-PRIMITIVE))
 (25 25 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (20 20 (:REWRITE FOLD-CONSTS-IN-+))
 (18 18 (:REWRITE DEFAULT-UNARY-MINUS))
 (15 15 (:TYPE-PRESCRIPTION LEN))
 (12 12 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (9 9 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (9 9 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (9 9 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (9 9 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (9 9 (:REWRITE DEFAULT-REALPART))
 (9 9 (:REWRITE DEFAULT-NUMERATOR))
 (9 9 (:REWRITE DEFAULT-IMAGPART))
 (9 9 (:REWRITE DEFAULT-DENOMINATOR))
 (9 9 (:REWRITE DEFAULT-COERCE-2))
 (9 9 (:REWRITE DEFAULT-COERCE-1))
 )
(LP17-1-LEMMA2
 (131 82 (:REWRITE DEFAULT-CAR))
 (128 79 (:REWRITE DEFAULT-CDR))
 )
(LP17-1-MAIN
 (29 11 (:REWRITE DEFAULT-CDR))
 (16 2 (:DEFINITION REV))
 (10 2 (:DEFINITION BINARY-APPEND))
 (5 5 (:REWRITE DEFAULT-CAR))
 )
(ASSOC-OF-APPEND
 (1526 613 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (815 613 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (613 613 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (23 20 (:REWRITE DEFAULT-CAR))
 (19 16 (:REWRITE DEFAULT-CDR))
 )
(LP17-1-LEMMA-1&2
 (348 207 (:REWRITE DEFAULT-CDR))
 (324 6 (:REWRITE APPLY$-CONSP-ARITY-1))
 (154 76 (:REWRITE DEFAULT-+-2))
 (105 76 (:REWRITE DEFAULT-+-1))
 (91 91 (:REWRITE DEFAULT-CAR))
 (81 9 (:DEFINITION LENGTH))
 (72 18 (:REWRITE COMMUTATIVITY-OF-+))
 (72 18 (:DEFINITION INTEGER-ABS))
 (43 30 (:REWRITE DEFAULT-<-1))
 (35 30 (:REWRITE DEFAULT-<-2))
 (28 16 (:REWRITE APPLY$-PRIMITIVE))
 (25 25 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (20 20 (:REWRITE FOLD-CONSTS-IN-+))
 (18 18 (:REWRITE DEFAULT-UNARY-MINUS))
 (15 15 (:TYPE-PRESCRIPTION LEN))
 (12 12 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (9 9 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (9 9 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (9 9 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (9 9 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (9 9 (:REWRITE DEFAULT-REALPART))
 (9 9 (:REWRITE DEFAULT-NUMERATOR))
 (9 9 (:REWRITE DEFAULT-IMAGPART))
 (9 9 (:REWRITE DEFAULT-DENOMINATOR))
 (9 9 (:REWRITE DEFAULT-COERCE-2))
 (9 9 (:REWRITE DEFAULT-COERCE-1))
 )
(LP17-2
 (487 262 (:REWRITE DEFAULT-CDR))
 (324 6 (:REWRITE APPLY$-CONSP-ARITY-1))
 (154 76 (:REWRITE DEFAULT-+-2))
 (142 9 (:REWRITE TRUE-LIST-LISTP-IMPLIES-TRUE-LISTP-XXX))
 (117 10 (:DEFINITION TRUE-LIST-LISTP))
 (105 76 (:REWRITE DEFAULT-+-1))
 (99 99 (:REWRITE DEFAULT-CAR))
 (81 9 (:DEFINITION LENGTH))
 (72 18 (:REWRITE COMMUTATIVITY-OF-+))
 (72 18 (:DEFINITION INTEGER-ABS))
 (50 10 (:DEFINITION TRUE-LISTP))
 (43 43 (:TYPE-PRESCRIPTION TRUE-LIST-LISTP))
 (43 30 (:REWRITE DEFAULT-<-1))
 (40 40 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (35 30 (:REWRITE DEFAULT-<-2))
 (30 17 (:REWRITE APPLY$-PRIMITIVE))
 (25 25 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (20 20 (:REWRITE FOLD-CONSTS-IN-+))
 (18 18 (:REWRITE DEFAULT-UNARY-MINUS))
 (15 15 (:TYPE-PRESCRIPTION LEN))
 (13 13 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (9 9 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (9 9 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (9 9 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (9 9 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (9 9 (:REWRITE DEFAULT-REALPART))
 (9 9 (:REWRITE DEFAULT-NUMERATOR))
 (9 9 (:REWRITE DEFAULT-IMAGPART))
 (9 9 (:REWRITE DEFAULT-DENOMINATOR))
 (9 9 (:REWRITE DEFAULT-COERCE-2))
 (9 9 (:REWRITE DEFAULT-COERCE-1))
 (9 9 (:REWRITE ALWAYS$-P-LST-IMPLIES-P-ELEMENT-COROLLARY))
 )
(LEN-AC)
(LP17-3-LEMMA1
 (534 11 (:DEFINITION ACL2-COUNT))
 (372 6 (:REWRITE APPLY$-CONSP-ARITY-1))
 (331 190 (:REWRITE DEFAULT-CDR))
 (285 102 (:REWRITE DEFAULT-+-2))
 (132 102 (:REWRITE DEFAULT-+-1))
 (81 9 (:DEFINITION LENGTH))
 (72 18 (:REWRITE COMMUTATIVITY-OF-+))
 (72 18 (:DEFINITION INTEGER-ABS))
 (63 24 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (55 55 (:REWRITE DEFAULT-CAR))
 (42 30 (:REWRITE DEFAULT-<-1))
 (34 30 (:REWRITE DEFAULT-<-2))
 (33 33 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (28 16 (:REWRITE APPLY$-PRIMITIVE))
 (25 25 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (24 24 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (21 21 (:REWRITE FOLD-CONSTS-IN-+))
 (18 18 (:REWRITE DEFAULT-UNARY-MINUS))
 (15 15 (:TYPE-PRESCRIPTION LEN))
 (12 12 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (9 9 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (9 9 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (9 9 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (9 9 (:REWRITE DEFAULT-REALPART))
 (9 9 (:REWRITE DEFAULT-NUMERATOR))
 (9 9 (:REWRITE DEFAULT-IMAGPART))
 (9 9 (:REWRITE DEFAULT-DENOMINATOR))
 (9 9 (:REWRITE DEFAULT-COERCE-2))
 (9 9 (:REWRITE DEFAULT-COERCE-1))
 (3 3 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-3))
 (2 2 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-2))
 (2 2 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-0))
 (1 1 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-1))
 )
(LP17-3-LEMMA2
 (24 14 (:REWRITE DEFAULT-+-2))
 (14 14 (:REWRITE DEFAULT-+-1))
 (8 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (4 4 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE FOLD-CONSTS-IN-+))
 )
(LP17-3-MAIN-VIA-RECIPE
 (27 9 (:REWRITE DEFAULT-CDR))
 (16 4 (:REWRITE DEFAULT-+-2))
 (10 2 (:DEFINITION LEN))
 (5 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (1 1 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (1 1 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 )
(LP17-3-LEMMA-1&2
 (918 21 (:DEFINITION ACL2-COUNT))
 (372 171 (:REWRITE DEFAULT-+-2))
 (352 211 (:REWRITE DEFAULT-CDR))
 (336 6 (:REWRITE APPLY$-CONSP-ARITY-1))
 (224 171 (:REWRITE DEFAULT-+-1))
 (135 15 (:DEFINITION LENGTH))
 (120 30 (:DEFINITION INTEGER-ABS))
 (70 50 (:REWRITE DEFAULT-<-1))
 (66 66 (:REWRITE DEFAULT-CAR))
 (55 50 (:REWRITE DEFAULT-<-2))
 (41 41 (:REWRITE FOLD-CONSTS-IN-+))
 (40 40 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (35 10 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (30 30 (:REWRITE DEFAULT-UNARY-MINUS))
 (28 16 (:REWRITE APPLY$-PRIMITIVE))
 (25 25 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (15 15 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (15 15 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (15 15 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (15 15 (:REWRITE DEFAULT-REALPART))
 (15 15 (:REWRITE DEFAULT-NUMERATOR))
 (15 15 (:REWRITE DEFAULT-IMAGPART))
 (15 15 (:REWRITE DEFAULT-DENOMINATOR))
 (15 15 (:REWRITE DEFAULT-COERCE-2))
 (15 15 (:REWRITE DEFAULT-COERCE-1))
 (12 12 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (10 10 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-3))
 (4 4 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-2))
 (4 4 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-0))
 (2 2 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-1))
 )
(LP17-4
 (403 208 (:REWRITE DEFAULT-CDR))
 (348 6 (:REWRITE APPLY$-CONSP-ARITY-1))
 (115 49 (:REWRITE DEFAULT-+-2))
 (76 76 (:REWRITE DEFAULT-CAR))
 (58 49 (:REWRITE DEFAULT-+-1))
 (34 28 (:REWRITE DEFAULT-<-1))
 (30 17 (:REWRITE APPLY$-PRIMITIVE))
 (28 28 (:REWRITE DEFAULT-<-2))
 (27 3 (:DEFINITION LENGTH))
 (24 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (24 6 (:REWRITE COMMUTATIVITY-OF-+))
 (19 19 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (13 13 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (9 9 (:TYPE-PRESCRIPTION LEN))
 (9 9 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (7 7 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 6 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE ZP-OPEN))
 (3 3 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (3 3 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (3 3 (:REWRITE DEFAULT-REALPART))
 (3 3 (:REWRITE DEFAULT-NUMERATOR))
 (3 3 (:REWRITE DEFAULT-IMAGPART))
 (3 3 (:REWRITE DEFAULT-DENOMINATOR))
 (3 3 (:REWRITE DEFAULT-COERCE-2))
 (3 3 (:REWRITE DEFAULT-COERCE-1))
 )
(COPY-AC)
(LP17-5-LEMMA1
 (360 6 (:REWRITE APPLY$-CONSP-ARITY-1))
 (357 216 (:REWRITE DEFAULT-CDR))
 (154 76 (:REWRITE DEFAULT-+-2))
 (105 76 (:REWRITE DEFAULT-+-1))
 (97 97 (:REWRITE DEFAULT-CAR))
 (81 9 (:DEFINITION LENGTH))
 (72 18 (:REWRITE COMMUTATIVITY-OF-+))
 (72 18 (:DEFINITION INTEGER-ABS))
 (57 19 (:DEFINITION BINARY-APPEND))
 (43 30 (:REWRITE DEFAULT-<-1))
 (35 30 (:REWRITE DEFAULT-<-2))
 (28 16 (:REWRITE APPLY$-PRIMITIVE))
 (25 25 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (20 20 (:REWRITE FOLD-CONSTS-IN-+))
 (18 18 (:REWRITE DEFAULT-UNARY-MINUS))
 (15 15 (:TYPE-PRESCRIPTION LEN))
 (12 12 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (9 9 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (9 9 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (9 9 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (9 9 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (9 9 (:REWRITE DEFAULT-REALPART))
 (9 9 (:REWRITE DEFAULT-NUMERATOR))
 (9 9 (:REWRITE DEFAULT-IMAGPART))
 (9 9 (:REWRITE DEFAULT-DENOMINATOR))
 (9 9 (:REWRITE DEFAULT-COERCE-2))
 (9 9 (:REWRITE DEFAULT-COERCE-1))
 )
(LP17-5-LEMMA2
 (18 13 (:REWRITE DEFAULT-CDR))
 (13 8 (:REWRITE DEFAULT-CAR))
 )
(LP17-5-MAIN
 (26 8 (:REWRITE DEFAULT-CDR))
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(LP17-5-LEMMA-1&2
 (210 141 (:REWRITE DEFAULT-CDR))
 (168 2 (:REWRITE APPLY$-CONSP-ARITY-1))
 (123 54 (:REWRITE DEFAULT-+-2))
 (84 84 (:REWRITE DEFAULT-CAR))
 (78 54 (:REWRITE DEFAULT-+-1))
 (35 20 (:REWRITE DEFAULT-<-1))
 (27 3 (:DEFINITION LENGTH))
 (24 20 (:REWRITE DEFAULT-<-2))
 (24 6 (:REWRITE COMMUTATIVITY-OF-+))
 (24 6 (:DEFINITION INTEGER-ABS))
 (21 21 (:REWRITE FOLD-CONSTS-IN-+))
 (15 15 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (14 8 (:REWRITE APPLY$-PRIMITIVE))
 (6 6 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (3 3 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (3 3 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (3 3 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (3 3 (:REWRITE DEFAULT-REALPART))
 (3 3 (:REWRITE DEFAULT-NUMERATOR))
 (3 3 (:REWRITE DEFAULT-IMAGPART))
 (3 3 (:REWRITE DEFAULT-DENOMINATOR))
 (3 3 (:REWRITE DEFAULT-COERCE-2))
 (3 3 (:REWRITE DEFAULT-COERCE-1))
 (3 3 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-3))
 (2 2 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-2))
 (2 2 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-0))
 (1 1 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-1))
 )
(PLUS-AC)
(LP17-6-LEMMA1
 (372 6 (:REWRITE APPLY$-CONSP-ARITY-1))
 (343 166 (:REWRITE DEFAULT-CDR))
 (165 96 (:REWRITE DEFAULT-+-2))
 (105 96 (:REWRITE DEFAULT-+-1))
 (79 73 (:REWRITE DEFAULT-<-1))
 (73 73 (:REWRITE DEFAULT-<-2))
 (46 46 (:REWRITE DEFAULT-CAR))
 (28 16 (:REWRITE APPLY$-PRIMITIVE))
 (27 3 (:DEFINITION LENGTH))
 (25 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (23 23 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (18 18 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (18 10 (:REWRITE FOLD-CONSTS-IN-+))
 (12 12 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (11 5 (:REWRITE ZP-OPEN))
 (8 8 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 5 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (3 3 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (3 3 (:REWRITE DEFAULT-REALPART))
 (3 3 (:REWRITE DEFAULT-NUMERATOR))
 (3 3 (:REWRITE DEFAULT-IMAGPART))
 (3 3 (:REWRITE DEFAULT-DENOMINATOR))
 (3 3 (:REWRITE DEFAULT-COERCE-2))
 (3 3 (:REWRITE DEFAULT-COERCE-1))
 )
(LP17-6-LEMMA2
 (16 16 (:REWRITE DEFAULT-+-2))
 (16 16 (:REWRITE DEFAULT-+-1))
 (7 7 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (3 3 (:REWRITE ZP-OPEN))
 )
(LP17-6-MAIN
 (24 6 (:REWRITE DEFAULT-CDR))
 (14 5 (:REWRITE DEFAULT-+-1))
 (10 5 (:REWRITE DEFAULT-+-2))
 (6 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 )
(LP17-6-LEMMA-1&2
 (372 6 (:REWRITE APPLY$-CONSP-ARITY-1))
 (343 166 (:REWRITE DEFAULT-CDR))
 (149 80 (:REWRITE DEFAULT-+-2))
 (89 80 (:REWRITE DEFAULT-+-1))
 (77 71 (:REWRITE DEFAULT-<-1))
 (71 71 (:REWRITE DEFAULT-<-2))
 (46 46 (:REWRITE DEFAULT-CAR))
 (28 16 (:REWRITE APPLY$-PRIMITIVE))
 (27 3 (:DEFINITION LENGTH))
 (25 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (24 6 (:REWRITE COMMUTATIVITY-OF-+))
 (23 23 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (18 18 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (12 12 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (8 8 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 5 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (3 3 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (3 3 (:REWRITE DEFAULT-REALPART))
 (3 3 (:REWRITE DEFAULT-NUMERATOR))
 (3 3 (:REWRITE DEFAULT-IMAGPART))
 (3 3 (:REWRITE DEFAULT-DENOMINATOR))
 (3 3 (:REWRITE DEFAULT-COERCE-2))
 (3 3 (:REWRITE DEFAULT-COERCE-1))
 )
(FACT)
(FACT-AC)
(LP17-7-LEMMA1
 (578 308 (:REWRITE DEFAULT-CDR))
 (241 107 (:REWRITE DEFAULT-*-1))
 (191 107 (:REWRITE DEFAULT-*-2))
 (186 138 (:REWRITE DEFAULT-+-2))
 (156 138 (:REWRITE DEFAULT-+-1))
 (136 61 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (125 113 (:REWRITE DEFAULT-<-1))
 (113 113 (:REWRITE DEFAULT-<-2))
 (88 88 (:REWRITE DEFAULT-CAR))
 (61 61 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (60 60 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (54 6 (:DEFINITION LENGTH))
 (52 31 (:REWRITE APPLY$-PRIMITIVE))
 (48 12 (:REWRITE COMMUTATIVITY-OF-+))
 (42 42 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (39 3 (:REWRITE DISTRIBUTIVITY))
 (21 21 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (19 19 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (15 6 (:REWRITE ZP-OPEN))
 (12 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 6 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (6 6 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (6 6 (:REWRITE DEFAULT-REALPART))
 (6 6 (:REWRITE DEFAULT-NUMERATOR))
 (6 6 (:REWRITE DEFAULT-IMAGPART))
 (6 6 (:REWRITE DEFAULT-DENOMINATOR))
 (6 6 (:REWRITE DEFAULT-COERCE-2))
 (6 6 (:REWRITE DEFAULT-COERCE-1))
 )
(LP17-7-LEMMA2
 (26 16 (:REWRITE DEFAULT-*-2))
 (17 16 (:REWRITE DEFAULT-*-1))
 (9 9 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (7 7 (:REWRITE ZP-OPEN))
 (6 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 )
(LP17-7-MAIN
 (24 6 (:REWRITE DEFAULT-CDR))
 (17 5 (:REWRITE DEFAULT-*-2))
 (14 2 (:DEFINITION FACT))
 (6 5 (:REWRITE DEFAULT-*-1))
 (5 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (1 1 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 )
(COMMUTATIVITY2-OF-*
 (25 11 (:REWRITE DEFAULT-*-2))
 (25 11 (:REWRITE DEFAULT-*-1))
 (17 11 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (11 11 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (6 6 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 )
(LP17-7-LEMMA-1&2
 (747 10 (:REWRITE APPLY$-CONSP-ARITY-1))
 (491 263 (:REWRITE DEFAULT-CDR))
 (193 113 (:REWRITE DEFAULT-*-2))
 (154 102 (:REWRITE DEFAULT-+-2))
 (117 102 (:REWRITE DEFAULT-+-1))
 (114 113 (:REWRITE DEFAULT-*-1))
 (93 83 (:REWRITE DEFAULT-<-1))
 (83 83 (:REWRITE DEFAULT-<-2))
 (76 76 (:REWRITE DEFAULT-CAR))
 (46 4 (:REWRITE DISTRIBUTIVITY))
 (45 27 (:REWRITE APPLY$-PRIMITIVE))
 (45 5 (:DEFINITION LENGTH))
 (40 10 (:REWRITE COMMUTATIVITY-OF-+))
 (33 33 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (30 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (24 24 (:TYPE-PRESCRIPTION NONNEGATIVE-PRODUCT))
 (19 19 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (19 13 (:REWRITE FOLD-CONSTS-IN-+))
 (18 18 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (15 15 (:TYPE-PRESCRIPTION LEN))
 (11 11 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (10 10 (:REWRITE DEFAULT-UNARY-MINUS))
 (9 6 (:REWRITE ZP-OPEN))
 (6 6 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (5 5 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (5 5 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (5 5 (:REWRITE DEFAULT-REALPART))
 (5 5 (:REWRITE DEFAULT-NUMERATOR))
 (5 5 (:REWRITE DEFAULT-IMAGPART))
 (5 5 (:REWRITE DEFAULT-DENOMINATOR))
 (5 5 (:REWRITE DEFAULT-COERCE-2))
 (5 5 (:REWRITE DEFAULT-COERCE-1))
 )
(SQ
 (5 5 (:TYPE-PRESCRIPTION NONNEGATIVE-PRODUCT))
 )
(APPLY$-WARRANT-SQ)
(APPLY$-WARRANT-SQ-DEFINITION)
(APPLY$-WARRANT-SQ-NECC)
(APPLY$-SQ
 (2 2 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE APPLY$-PRIMP-BADGE))
 (2 1 (:REWRITE APPLY$-PRIMITIVE))
 )
(SUM-AND-SUM-SQ)
(LP17-8-LEMMA1
 (600 6 (:REWRITE APPLY$-CONSP-ARITY-1))
 (522 212 (:REWRITE DEFAULT-+-1))
 (501 212 (:REWRITE DEFAULT-+-2))
 (468 273 (:REWRITE DEFAULT-CDR))
 (282 163 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (163 163 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (146 146 (:REWRITE DEFAULT-CAR))
 (135 15 (:DEFINITION LENGTH))
 (120 30 (:DEFINITION INTEGER-ABS))
 (104 104 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (87 29 (:REWRITE DEFAULT-*-2))
 (87 29 (:REWRITE DEFAULT-*-1))
 (74 4 (:REWRITE COMMUTATIVITY-2-OF-+))
 (71 50 (:REWRITE DEFAULT-<-1))
 (62 62 (:TYPE-PRESCRIPTION NONNEGATIVE-PRODUCT))
 (56 50 (:REWRITE DEFAULT-<-2))
 (45 45 (:REWRITE FOLD-CONSTS-IN-+))
 (35 35 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (30 30 (:REWRITE DEFAULT-UNARY-MINUS))
 (28 16 (:REWRITE APPLY$-PRIMITIVE))
 (15 15 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (15 15 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (15 15 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (15 15 (:REWRITE DEFAULT-REALPART))
 (15 15 (:REWRITE DEFAULT-NUMERATOR))
 (15 15 (:REWRITE DEFAULT-IMAGPART))
 (15 15 (:REWRITE DEFAULT-DENOMINATOR))
 (15 15 (:REWRITE DEFAULT-COERCE-2))
 (15 15 (:REWRITE DEFAULT-COERCE-1))
 (12 12 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (6 6 (:REWRITE APPLY$-WARRANT-SQ-NECC))
 (3 3 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-3))
 (2 2 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-2))
 (2 2 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-0))
 (1 1 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-1))
 )
(LP17-8-LEMMA2
 (213 121 (:REWRITE DEFAULT-+-2))
 (183 183 (:TYPE-PRESCRIPTION NONNEGATIVE-PRODUCT))
 (138 89 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (115 99 (:REWRITE DEFAULT-CAR))
 (111 95 (:REWRITE DEFAULT-CDR))
 (89 89 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (79 29 (:REWRITE DEFAULT-*-1))
 (49 49 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (32 16 (:REWRITE APPLY$-PRIMITIVE))
 (18 18 (:REWRITE FOLD-CONSTS-IN-+))
 (16 16 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (7 7 (:REWRITE APPLY$-WARRANT-SQ-NECC))
 )
(LP17-8-MAIN
 (118 4 (:DEFINITION SUM$))
 (58 4 (:REWRITE APPLY$-CONSP-ARITY-1))
 (49 22 (:REWRITE DEFAULT-CDR))
 (43 14 (:REWRITE DEFAULT-+-2))
 (42 4 (:REWRITE BETA-REDUCTION))
 (34 14 (:REWRITE DEFAULT-+-1))
 (33 18 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (24 8 (:DEFINITION PAIRLIS$))
 (19 5 (:REWRITE DEFAULT-*-2))
 (18 18 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (16 4 (:DEFINITION THE-NUMBER))
 (15 5 (:REWRITE DEFAULT-*-1))
 (14 14 (:REWRITE DEFAULT-CAR))
 (13 13 (:TYPE-PRESCRIPTION NONNEGATIVE-PRODUCT))
 (9 9 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (8 4 (:REWRITE APPLY$-PRIMITIVE))
 (4 4 (:TYPE-PRESCRIPTION LEN))
 (4 4 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (1 1 (:REWRITE APPLY$-WARRANT-SQ-NECC))
 )
(LP17-8-LEMMA-1&2
 (1071 690 (:REWRITE DEFAULT-CDR))
 (416 2 (:LINEAR ACL2-COUNT-CAR-CDR-LINEAR))
 (408 408 (:REWRITE DEFAULT-CAR))
 (375 216 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (332 332 (:TYPE-PRESCRIPTION NONNEGATIVE-PRODUCT))
 (252 28 (:DEFINITION LENGTH))
 (224 56 (:DEFINITION INTEGER-ABS))
 (217 91 (:REWRITE DEFAULT-*-1))
 (216 216 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (133 133 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (109 82 (:REWRITE DEFAULT-<-1))
 (98 98 (:REWRITE FOLD-CONSTS-IN-+))
 (95 82 (:REWRITE DEFAULT-<-2))
 (88 48 (:REWRITE APPLY$-PRIMITIVE))
 (60 60 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (56 56 (:REWRITE DEFAULT-UNARY-MINUS))
 (48 4 (:REWRITE COMMUTATIVITY-2-OF-+))
 (40 40 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (28 28 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (28 28 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (28 28 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (28 28 (:REWRITE DEFAULT-REALPART))
 (28 28 (:REWRITE DEFAULT-NUMERATOR))
 (28 28 (:REWRITE DEFAULT-IMAGPART))
 (28 28 (:REWRITE DEFAULT-DENOMINATOR))
 (28 28 (:REWRITE DEFAULT-COERCE-2))
 (28 28 (:REWRITE DEFAULT-COERCE-1))
 (8 8 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-3))
 (7 7 (:REWRITE APPLY$-WARRANT-SQ-NECC))
 (6 6 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-2))
 (4 4 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-1))
 (4 4 (:LINEAR MEMBER-EQUAL-ACL2-COUNT-SMALLER-0))
 )
(PARTITION-SYMBOLS)
(RECURSIVE-PARTITION-SYMBOLS)
(LP17-9-LEMMA1
 (701 402 (:REWRITE DEFAULT-CDR))
 (524 256 (:REWRITE DEFAULT-+-2))
 (384 6 (:REWRITE APPLY$-CONSP-ARITY-1))
 (352 256 (:REWRITE DEFAULT-+-1))
 (252 28 (:DEFINITION LENGTH))
 (224 56 (:REWRITE COMMUTATIVITY-OF-+))
 (224 56 (:DEFINITION INTEGER-ABS))
 (206 195 (:REWRITE DEFAULT-CAR))
 (122 87 (:REWRITE DEFAULT-<-1))
 (96 87 (:REWRITE DEFAULT-<-2))
 (68 68 (:REWRITE FOLD-CONSTS-IN-+))
 (56 56 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (56 56 (:REWRITE DEFAULT-UNARY-MINUS))
 (33 19 (:REWRITE APPLY$-PRIMITIVE))
 (32 32 (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
 (28 28 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (28 28 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (28 28 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (28 28 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (28 28 (:REWRITE DEFAULT-REALPART))
 (28 28 (:REWRITE DEFAULT-NUMERATOR))
 (28 28 (:REWRITE DEFAULT-IMAGPART))
 (28 28 (:REWRITE DEFAULT-DENOMINATOR))
 (28 28 (:REWRITE DEFAULT-COERCE-2))
 (28 28 (:REWRITE DEFAULT-COERCE-1))
 (14 14 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 )
(LP17-9-LEMMA2
 (250 221 (:REWRITE DEFAULT-CAR))
 (229 200 (:REWRITE DEFAULT-CDR))
 (80 40 (:REWRITE APPLY$-PRIMITIVE))
 (47 47 (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
 (40 40 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (22 22 (:REWRITE ALWAYS$-P-LST-IMPLIES-P-ELEMENT))
 )
(LP17-9-MAIN
 (244 16 (:REWRITE APPLY$-CONSP-ARITY-1))
 (216 12 (:DEFINITION WHEN$))
 (216 4 (:DEFINITION COLLECT$))
 (212 16 (:REWRITE BETA-REDUCTION))
 (200 32 (:DEFINITION PAIRLIS$))
 (134 89 (:REWRITE DEFAULT-CDR))
 (71 71 (:REWRITE DEFAULT-CAR))
 (40 4 (:DEFINITION REV))
 (32 16 (:REWRITE APPLY$-PRIMITIVE))
 (25 25 (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
 (20 4 (:DEFINITION BINARY-APPEND))
 (16 16 (:TYPE-PRESCRIPTION LEN))
 (16 16 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (12 12 (:REWRITE ALWAYS$-P-LST-IMPLIES-P-ELEMENT))
 (8 8 (:TYPE-PRESCRIPTION WHEN$))
 (8 8 (:TYPE-PRESCRIPTION COLLECT$))
 )
(LP17-9-LEMMA-1&2
 (866 566 (:REWRITE DEFAULT-CDR))
 (524 256 (:REWRITE DEFAULT-+-2))
 (376 364 (:REWRITE DEFAULT-CAR))
 (352 256 (:REWRITE DEFAULT-+-1))
 (252 28 (:DEFINITION LENGTH))
 (224 56 (:REWRITE COMMUTATIVITY-OF-+))
 (224 56 (:DEFINITION INTEGER-ABS))
 (122 87 (:REWRITE DEFAULT-<-1))
 (113 59 (:REWRITE APPLY$-PRIMITIVE))
 (96 87 (:REWRITE DEFAULT-<-2))
 (68 68 (:REWRITE FOLD-CONSTS-IN-+))
 (67 67 (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
 (56 56 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (56 56 (:REWRITE DEFAULT-UNARY-MINUS))
 (54 54 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (28 28 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (28 28 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (28 28 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (28 28 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (28 28 (:REWRITE DEFAULT-REALPART))
 (28 28 (:REWRITE DEFAULT-NUMERATOR))
 (28 28 (:REWRITE DEFAULT-IMAGPART))
 (28 28 (:REWRITE DEFAULT-DENOMINATOR))
 (28 28 (:REWRITE DEFAULT-COERCE-2))
 (28 28 (:REWRITE DEFAULT-COERCE-1))
 (22 22 (:REWRITE ALWAYS$-P-LST-IMPLIES-P-ELEMENT))
 )
(NATS-AC-UP
 (56 52 (:REWRITE DEFAULT-<-2))
 (56 52 (:REWRITE DEFAULT-<-1))
 (42 42 (:REWRITE DEFAULT-+-2))
 (42 42 (:REWRITE DEFAULT-+-1))
 (23 23 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (2 2 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 )
(LP17-10-LEMMA1
 (1110 420 (:REWRITE DEFAULT-CDR))
 (739 8 (:REWRITE APPLY$-CONSP-ARITY-1))
 (289 201 (:REWRITE DEFAULT-<-1))
 (284 227 (:REWRITE DEFAULT-+-2))
 (255 201 (:REWRITE DEFAULT-<-2))
 (228 227 (:REWRITE DEFAULT-+-1))
 (90 18 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (77 76 (:REWRITE DEFAULT-UNARY-MINUS))
 (54 54 (:REWRITE DEFAULT-CAR))
 (52 52 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (35 20 (:REWRITE APPLY$-PRIMITIVE))
 (24 24 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (18 18 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (18 18 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (15 15 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 )
(MINUS-MINUS-N)
(LP17-10-LEMMA2
 (446 398 (:REWRITE DEFAULT-CAR))
 (349 277 (:REWRITE DEFAULT-+-1))
 (343 295 (:REWRITE DEFAULT-CDR))
 (277 277 (:REWRITE DEFAULT-+-2))
 (236 116 (:REWRITE DEFAULT-UNARY-MINUS))
 (206 206 (:REWRITE DEFAULT-<-2))
 (206 206 (:REWRITE DEFAULT-<-1))
 (128 64 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (64 64 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (64 64 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (45 45 (:META RELINK-FANCY-SCION-CORRECT))
 (42 21 (:REWRITE APPLY$-PRIMITIVE))
 (29 29 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (21 21 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (1 1 (:INDUCTION LOOP$-AS-FTB-RULE))
 (1 1 (:INDUCTION LOOP$-AS-CDR-RULE . 1))
 (1 1 (:INDUCTION FROM-TO-BY-DOWN-INDUCTION))
 )
(LP17-10-MAIN
 (108 10 (:DEFINITION FROM-TO-BY-DOWN-OPENER))
 (92 61 (:REWRITE DEFAULT-CDR))
 (72 68 (:REWRITE DEFAULT-CAR))
 (50 10 (:DEFINITION BINARY-APPEND))
 (43 28 (:REWRITE DEFAULT-+-2))
 (43 28 (:REWRITE DEFAULT-+-1))
 (35 13 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (31 22 (:REWRITE DEFAULT-<-2))
 (31 22 (:REWRITE DEFAULT-<-1))
 (26 7 (:REWRITE DEFAULT-UNARY-MINUS))
 (13 13 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (13 13 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (8 8 (:META RELINK-FANCY-SCION-CORRECT))
 (8 4 (:REWRITE APPLY$-PRIMITIVE))
 (4 4 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (1 1 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 )
(LP17-10-LEMMA-1&2
 (2921 1234 (:REWRITE DEFAULT-CDR))
 (779 659 (:REWRITE DEFAULT-+-2))
 (705 659 (:REWRITE DEFAULT-+-1))
 (620 421 (:REWRITE DEFAULT-<-1))
 (538 421 (:REWRITE DEFAULT-<-2))
 (382 372 (:REWRITE DEFAULT-CAR))
 (345 269 (:REWRITE DEFAULT-UNARY-MINUS))
 (275 79 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (114 65 (:REWRITE APPLY$-PRIMITIVE))
 (111 111 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (79 79 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (79 79 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (49 49 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (42 42 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (28 28 (:META RELINK-FANCY-SCION-CORRECT))
 (1 1 (:INDUCTION LOOP$-AS-FTB-RULE))
 (1 1 (:INDUCTION LOOP$-AS-CDR-RULE . 1))
 (1 1 (:INDUCTION FROM-TO-BY-DOWN-INDUCTION))
 )
(MAKE-PAIR)
(APPLY$-WARRANT-MAKE-PAIR)
(APPLY$-WARRANT-MAKE-PAIR-DEFINITION)
(APPLY$-WARRANT-MAKE-PAIR-NECC)
(APPLY$-MAKE-PAIR
 (4 4 (:REWRITE DEFAULT-CAR))
 (2 2 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 1 (:REWRITE APPLY$-PRIMP-BADGE))
 (2 1 (:REWRITE APPLY$-PRIMITIVE))
 )
(ALL-PAIRS-HELPER2
 (56 52 (:REWRITE DEFAULT-<-2))
 (56 52 (:REWRITE DEFAULT-<-1))
 (37 37 (:REWRITE DEFAULT-+-2))
 (37 37 (:REWRITE DEFAULT-+-1))
 (23 23 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (2 2 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 )
(ALL-PAIRS-HELPER1
 (56 52 (:REWRITE DEFAULT-<-2))
 (56 52 (:REWRITE DEFAULT-<-1))
 (37 37 (:REWRITE DEFAULT-+-2))
 (37 37 (:REWRITE DEFAULT-+-1))
 (23 23 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (2 2 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 )
(ALL-PAIRS)
(ALL-PAIRS-DO-LOOP$
 (1559 3 (:DEFINITION DO$))
 (1068 374 (:REWRITE DEFAULT-CDR))
 (962 6 (:REWRITE APPLY$-CONSP-ARITY-1))
 (213 70 (:REWRITE DEFAULT-<-1))
 (185 71 (:REWRITE DEFAULT-CAR))
 (102 62 (:REWRITE DEFAULT-+-2))
 (77 62 (:REWRITE DEFAULT-+-1))
 (75 15 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (72 70 (:REWRITE DEFAULT-<-2))
 (45 5 (:DEFINITION LENGTH))
 (40 10 (:REWRITE COMMUTATIVITY-OF-+))
 (25 25 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (21 21 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (21 12 (:REWRITE APPLY$-PRIMITIVE))
 (20 20 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (15 15 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (11 11 (:TYPE-PRESCRIPTION LEN))
 (10 10 (:REWRITE FOLD-CONSTS-IN-+))
 (10 10 (:REWRITE DEFAULT-UNARY-MINUS))
 (9 9 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (8 8 (:REWRITE APPLY$-WARRANT-MAKE-PAIR-NECC))
 (5 5 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (5 5 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (5 5 (:REWRITE DEFAULT-REALPART))
 (5 5 (:REWRITE DEFAULT-NUMERATOR))
 (5 5 (:REWRITE DEFAULT-IMAGPART))
 (5 5 (:REWRITE DEFAULT-DENOMINATOR))
 (5 5 (:REWRITE DEFAULT-COERCE-2))
 (5 5 (:REWRITE DEFAULT-COERCE-1))
 (4 4 (:REWRITE APPLY$-WARRANT-DO$-NECC))
 )
(APDH2
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(APDH1
 (6 6 (:TYPE-PRESCRIPTION APDH2))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(LP17-11-ADPH2-LEMMA1
 (383 188 (:REWRITE DEFAULT-CDR))
 (360 6 (:REWRITE APPLY$-CONSP-ARITY-1))
 (123 72 (:REWRITE DEFAULT-<-1))
 (83 59 (:REWRITE DEFAULT-+-2))
 (72 72 (:REWRITE DEFAULT-<-2))
 (68 59 (:REWRITE DEFAULT-+-1))
 (46 46 (:REWRITE DEFAULT-CAR))
 (28 16 (:REWRITE APPLY$-PRIMITIVE))
 (27 3 (:DEFINITION LENGTH))
 (25 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (24 6 (:REWRITE COMMUTATIVITY-OF-+))
 (23 23 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (12 12 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (12 8 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (8 8 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 5 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (3 3 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (3 3 (:REWRITE DEFAULT-REALPART))
 (3 3 (:REWRITE DEFAULT-NUMERATOR))
 (3 3 (:REWRITE DEFAULT-IMAGPART))
 (3 3 (:REWRITE DEFAULT-DENOMINATOR))
 (3 3 (:REWRITE DEFAULT-COERCE-2))
 (3 3 (:REWRITE DEFAULT-COERCE-1))
 )
(LP17-11--ADPH1-LEMMA1
 (1426 565 (:REWRITE DEFAULT-CDR))
 (486 81 (:DEFINITION APDH2))
 (457 229 (:REWRITE DEFAULT-<-1))
 (281 233 (:REWRITE DEFAULT-+-2))
 (251 233 (:REWRITE DEFAULT-+-1))
 (229 229 (:REWRITE DEFAULT-<-2))
 (120 24 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (88 88 (:REWRITE DEFAULT-CAR))
 (81 81 (:DEFINITION MAKE-PAIR))
 (54 6 (:DEFINITION LENGTH))
 (52 31 (:REWRITE APPLY$-PRIMITIVE))
 (48 12 (:REWRITE COMMUTATIVITY-OF-+))
 (42 42 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (30 30 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (25 25 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (24 24 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (21 21 (:TYPE-PRESCRIPTION APPLY$-PRIMP))
 (12 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (9 9 (:TYPE-PRESCRIPTION APDH2))
 (7 7 (:TYPE-PRESCRIPTION NATP))
 (7 7 (:REWRITE APPLY$-WARRANT-DO$-NECC))
 (6 6 (:REWRITE INTEGERP==>NUMERATOR-=-X))
 (6 6 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
 (6 6 (:REWRITE DEFAULT-REALPART))
 (6 6 (:REWRITE DEFAULT-NUMERATOR))
 (6 6 (:REWRITE DEFAULT-IMAGPART))
 (6 6 (:REWRITE DEFAULT-DENOMINATOR))
 (6 6 (:REWRITE DEFAULT-COERCE-2))
 (6 6 (:REWRITE DEFAULT-COERCE-1))
 )
(LP17-11-MAIN--SORT-OF
 (64 16 (:REWRITE DEFAULT-CDR))
 (27 9 (:REWRITE DEFAULT-<-1))
 (22 2 (:DEFINITION APDH1))
 (12 2 (:DEFINITION APDH2))
 (12 1 (:REWRITE LP17-11-ADPH2-LEMMA1))
 (10 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (9 9 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-+-2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (2 2 (:REWRITE RATIONAL-LISTP-IMPLIES-RATIONALP))
 (2 2 (:REWRITE ACL2-NUMBER-LISTP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:REWRITE APPLY$-WARRANT-MAKE-PAIR-NECC))
 (1 1 (:REWRITE APPLY$-WARRANT-DO$-NECC))
 )
(LP17-11-MAIN
 (34 2 (:DEFINITION ALL-PAIRS-HELPER1))
 (12 4 (:DEFINITION NFIX))
 (12 2 (:DEFINITION ALL-PAIRS-HELPER2))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (10 2 (:DEFINITION BINARY-APPEND))
 (4 4 (:TYPE-PRESCRIPTION ALL-PAIRS-HELPER2))
 (2 2 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE APPLY$-WARRANT-MAKE-PAIR-NECC))
 (1 1 (:REWRITE APPLY$-WARRANT-DO$-NECC))
 )
