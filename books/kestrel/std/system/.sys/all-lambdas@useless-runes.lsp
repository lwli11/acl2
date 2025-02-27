(ALL-LAMBDAS
 (492 205 (:REWRITE DEFAULT-+-2))
 (288 205 (:REWRITE DEFAULT-+-1))
 (165 3 (:REWRITE ACL2-COUNT-WHEN-MEMBER))
 (144 36 (:DEFINITION INTEGER-ABS))
 (144 18 (:DEFINITION LENGTH))
 (126 6 (:REWRITE SUBSETP-CAR-MEMBER))
 (90 18 (:DEFINITION LEN))
 (87 3 (:DEFINITION MEMBER-EQUAL))
 (84 12 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (60 43 (:REWRITE DEFAULT-<-2))
 (47 43 (:REWRITE DEFAULT-<-1))
 (36 36 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (36 36 (:REWRITE DEFAULT-UNARY-MINUS))
 (20 20 (:LINEAR ACL2-COUNT-WHEN-MEMBER))
 (18 18 (:TYPE-PRESCRIPTION LEN))
 (18 18 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (18 18 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (18 18 (:REWRITE SUBSETP-TRANS2))
 (18 18 (:REWRITE SUBSETP-TRANS))
 (18 18 (:REWRITE DEFAULT-REALPART))
 (18 18 (:REWRITE DEFAULT-NUMERATOR))
 (18 18 (:REWRITE DEFAULT-IMAGPART))
 (18 18 (:REWRITE DEFAULT-DENOMINATOR))
 (18 18 (:REWRITE DEFAULT-COERCE-2))
 (18 18 (:REWRITE DEFAULT-COERCE-1))
 (15 15 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (6 6 (:TYPE-PRESCRIPTION ADD-TO-SET-EQUAL))
 (6 6 (:REWRITE SUBSETP-MEMBER . 2))
 (6 6 (:REWRITE SUBSETP-MEMBER . 1))
 (5 5 (:LINEAR ACL2-COUNT-CAR-CDR-LINEAR))
 )
(ALL-LAMBDAS-FLAG
 (634 273 (:REWRITE DEFAULT-+-2))
 (383 273 (:REWRITE DEFAULT-+-1))
 (200 50 (:DEFINITION INTEGER-ABS))
 (200 25 (:DEFINITION LENGTH))
 (125 25 (:DEFINITION LEN))
 (93 4 (:DEFINITION MEMBER-EQUAL))
 (84 12 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
 (79 59 (:REWRITE DEFAULT-<-2))
 (65 59 (:REWRITE DEFAULT-<-1))
 (50 50 (:REWRITE DEFAULT-UNARY-MINUS))
 (25 25 (:TYPE-PRESCRIPTION LEN))
 (25 25 (:REWRITE DEFAULT-REALPART))
 (25 25 (:REWRITE DEFAULT-NUMERATOR))
 (25 25 (:REWRITE DEFAULT-IMAGPART))
 (25 25 (:REWRITE DEFAULT-DENOMINATOR))
 (25 25 (:REWRITE DEFAULT-COERCE-2))
 (25 25 (:REWRITE DEFAULT-COERCE-1))
 (22 22 (:LINEAR ACL2-COUNT-WHEN-MEMBER))
 (19 19 (:REWRITE SUBSETP-TRANS2))
 (19 19 (:REWRITE SUBSETP-TRANS))
 (18 18 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (18 18 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (8 8 (:REWRITE SUBSETP-MEMBER . 2))
 (8 8 (:REWRITE SUBSETP-MEMBER . 1))
 (4 2 (:TYPE-PRESCRIPTION RETURN-LAST))
 (2 2 (:TYPE-PRESCRIPTION THROW-NONEXEC-ERROR))
 (1 1 (:REWRITE MEMBER-SELF))
 )
(FLAG::FLAG-EQUIV-LEMMA)
(ALL-LAMBDAS-FLAG-EQUIVALENCES)
(FLAG-LEMMA-FOR-RETURN-TYPE-OF-ALL-LAMBDAS.FINAL-ANS
 (963 963 (:REWRITE DEFAULT-CAR))
 (744 124 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (592 36 (:DEFINITION MEMBER-EQUAL))
 (548 80 (:REWRITE SUBSETP-CAR-MEMBER))
 (502 251 (:REWRITE DEFAULT-+-2))
 (361 361 (:REWRITE SUBSETP-TRANS2))
 (361 361 (:REWRITE SUBSETP-TRANS))
 (336 333 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (333 333 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (251 251 (:REWRITE DEFAULT-+-1))
 (248 248 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (248 124 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (150 147 (:REWRITE PSEUDO-LAMBDA-LISTP-WHEN-NOT-CONSP))
 (139 5 (:REWRITE SUBSETP-OF-CONS))
 (132 14 (:REWRITE PSEUDO-LAMBDAP-WHEN-MEMBER-EQUAL-OF-PSEUDO-LAMBDA-LISTP))
 (128 128 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (124 124 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (124 124 (:REWRITE SET::IN-SET))
 (123 123 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (103 7 (:REWRITE PSEUDO-LAMBDAP-OF-CAR-WHEN-PSEUDO-LAMBDA-LISTP))
 (75 75 (:REWRITE SUBSETP-MEMBER . 2))
 (62 62 (:REWRITE DEFAULT-COERCE-2))
 (62 62 (:REWRITE DEFAULT-COERCE-1))
 (60 60 (:REWRITE SUBSETP-MEMBER . 4))
 (60 60 (:REWRITE INTERSECTP-MEMBER . 3))
 (60 60 (:REWRITE INTERSECTP-MEMBER . 2))
 (52 52 (:REWRITE MEMBER-WHEN-ATOM))
 )
(RETURN-TYPE-OF-ALL-LAMBDAS.FINAL-ANS)
(RETURN-TYPE-OF-ALL-LAMBDAS-LST.FINAL-ANS)
(ALL-LAMBDAS
 (387 387 (:REWRITE DEFAULT-CDR))
 (363 7 (:DEFINITION ALL-LAMBDAS))
 (359 359 (:REWRITE DEFAULT-CAR))
 (318 53 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (317 19 (:DEFINITION MEMBER-EQUAL))
 (311 41 (:REWRITE SUBSETP-CAR-MEMBER))
 (202 101 (:REWRITE DEFAULT-+-2))
 (108 3 (:REWRITE MEMBER-OF-CONS))
 (106 106 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (106 53 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (101 101 (:REWRITE DEFAULT-+-1))
 (100 4 (:REWRITE SUBSETP-OF-CONS))
 (61 61 (:REWRITE SUBSETP-TRANS2))
 (61 61 (:REWRITE SUBSETP-TRANS))
 (55 52 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (55 52 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (53 53 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (53 53 (:REWRITE SET::IN-SET))
 (50 6 (:REWRITE PSEUDO-LAMBDAP-OF-CAR-WHEN-PSEUDO-LAMBDA-LISTP))
 (41 41 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (41 41 (:REWRITE SUBSETP-MEMBER . 2))
 (41 41 (:REWRITE SUBSETP-MEMBER . 1))
 (37 37 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (33 33 (:REWRITE SUBSETP-MEMBER . 4))
 (33 33 (:REWRITE SUBSETP-MEMBER . 3))
 (33 33 (:REWRITE INTERSECTP-MEMBER . 3))
 (33 33 (:REWRITE INTERSECTP-MEMBER . 2))
 (33 30 (:REWRITE MEMBER-WHEN-ATOM))
 (27 24 (:REWRITE PSEUDO-LAMBDA-LISTP-WHEN-NOT-CONSP))
 (21 3 (:REWRITE SUBSETP-CONS-2))
 (20 20 (:REWRITE DEFAULT-COERCE-2))
 (20 20 (:REWRITE DEFAULT-COERCE-1))
 (12 12 (:REWRITE PSEUDO-LAMBDAP-WHEN-MEMBER-EQUAL-OF-PSEUDO-LAMBDA-LISTP))
 )
