(FLAG-ALL-VARS1
 (216 104 (:REWRITE DEFAULT-+-2))
 (145 104 (:REWRITE DEFAULT-+-1))
 (88 22 (:REWRITE COMMUTATIVITY-OF-+))
 (88 22 (:DEFINITION INTEGER-ABS))
 (88 11 (:DEFINITION LENGTH))
 (55 11 (:DEFINITION LEN))
 (32 32 (:REWRITE DEFAULT-CDR))
 (30 30 (:REWRITE FOLD-CONSTS-IN-+))
 (29 25 (:REWRITE DEFAULT-<-2))
 (28 25 (:REWRITE DEFAULT-<-1))
 (22 22 (:REWRITE DEFAULT-UNARY-MINUS))
 (21 21 (:REWRITE DEFAULT-CAR))
 (11 11 (:TYPE-PRESCRIPTION LEN))
 (11 11 (:REWRITE DEFAULT-REALPART))
 (11 11 (:REWRITE DEFAULT-NUMERATOR))
 (11 11 (:REWRITE DEFAULT-IMAGPART))
 (11 11 (:REWRITE DEFAULT-DENOMINATOR))
 (11 11 (:REWRITE DEFAULT-COERCE-2))
 (11 11 (:REWRITE DEFAULT-COERCE-1))
 (8 2 (:TYPE-PRESCRIPTION RETURN-LAST))
 (6 6 (:TYPE-PRESCRIPTION ADD-TO-SET-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION THROW-NONEXEC-ERROR))
 )
(FLAG::FLAG-EQUIV-LEMMA)
(FLAG-ALL-VARS1-EQUIVALENCES)
(FLAG-LEMMA-FOR-TRUE-LISTP-OF-ALL-VARS1
 (39 39 (:REWRITE DEFAULT-CDR))
 (23 23 (:REWRITE DEFAULT-CAR))
 (18 6 (:DEFINITION MEMBER-EQUAL))
 )
(TRUE-LISTP-OF-ALL-VARS1)
(TRUE-LISTP-OF-ALL-VARS1-LST)
(TRUE-LISTP-OF-ALL-VARS1-TYPE)
(TRUE-LISTP-OF-ALL-VARS1-LST-TYPE)
(FLAG-LEMMA-FOR-SYMBOL-LISTP-OF-ALL-VARS1
 (128 12 (:DEFINITION LENGTH))
 (116 116 (:REWRITE DEFAULT-CDR))
 (111 111 (:REWRITE DEFAULT-CAR))
 (100 20 (:DEFINITION LEN))
 (44 44 (:TYPE-PRESCRIPTION LEN))
 (40 20 (:REWRITE DEFAULT-+-2))
 (32 8 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-ALL-VARS1-LST-TYPE))
 (28 14 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-ALL-VARS1-TYPE))
 (22 22 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (21 7 (:DEFINITION MEMBER-EQUAL))
 (20 20 (:REWRITE DEFAULT-+-1))
 (18 18 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (18 18 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (8 8 (:REWRITE DEFAULT-COERCE-2))
 (8 8 (:REWRITE DEFAULT-COERCE-1))
 (8 4 (:DEFINITION TRUE-LISTP))
 )
(SYMBOL-LISTP-OF-ALL-VARS1)
(SYMBOL-LISTP-OF-ALL-VARS1-LST)
(SYMBOL-LISTP-OF-ALL-VARS
 (70 1 (:DEFINITION PSEUDO-TERMP))
 (32 3 (:DEFINITION LENGTH))
 (25 5 (:DEFINITION LEN))
 (17 17 (:REWRITE DEFAULT-CDR))
 (14 14 (:REWRITE DEFAULT-CAR))
 (11 11 (:TYPE-PRESCRIPTION LEN))
 (10 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (5 1 (:DEFINITION ALL-VARS1))
 (3 1 (:DEFINITION SYMBOL-LISTP))
 (2 2 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 (2 1 (:DEFINITION TRUE-LISTP))
 (2 1 (:DEFINITION ADD-TO-SET-EQUAL))
 (1 1 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (1 1 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (1 1 (:DEFINITION MEMBER-EQUAL))
 )
(TRUE-LISTP-OF-ALL-VARS)
