(BAG::NEQ)
(BAG::FOO)
(BAG::FIND-MEMBERP-LITERAL-THAT-SHOWS-A-AND-B-DIFFER-FN
 (2430 60 (:REWRITE LIST::EQUAL-OF-IF-HACK))
 (1890 240 (:DEFINITION LEN))
 (1113 1113 (:REWRITE LIST::LEN-FW-TO-CONSP))
 (1080 90 (:LINEAR LIST::LEN-LINEAR))
 (930 480 (:REWRITE LIST::LEN-OF-NON-CONSP))
 (871 841 (:REWRITE DEFAULT-CDR))
 (664 574 (:REWRITE DEFAULT-CAR))
 (530 254 (:REWRITE LIST::EQUAL-OF-BOOLEANS-REWRITE))
 (480 240 (:REWRITE DEFAULT-+-2))
 (254 254 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (254 254 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (240 240 (:REWRITE DEFAULT-+-1))
 (180 90 (:LINEAR LIST::LEN-WHEN-CONSP-LINEAR))
 (120 30 (:DEFINITION TRUE-LISTP))
 (120 30 (:DEFINITION SYMBOL-LISTP))
 (96 96 (:TYPE-PRESCRIPTION BOOLEANP))
 (90 90 (:LINEAR SYN::LEN-IMPLIES-ACL2-LEN))
 (86 86 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (80 80 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (60 60 (:REWRITE LIST::TRUE-LISTP-OF-NON-CONSP-CHEAP))
 (60 60 (:REWRITE DEFAULT-COERCE-2))
 (60 60 (:REWRITE DEFAULT-COERCE-1))
 (24 24 (:REWRITE BAG::HACK-ERIC))
 )
(BAG::FIND-MEMBERP-LITERAL-THAT-SHOWS-A-AND-B-DIFFER-IRRELEVANT
 (263 263 (:REWRITE DEFAULT-CDR))
 (168 168 (:REWRITE DEFAULT-CAR))
 (120 57 (:REWRITE LIST::EQUAL-OF-BOOLEANS-REWRITE))
 (58 58 (:REWRITE BAG::HACK-ERIC))
 (57 57 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (57 57 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (57 4 (:REWRITE LIST::EQUAL-OF-IF-HACK))
 (47 47 (:TYPE-PRESCRIPTION BOOLEANP))
 (46 46 (:REWRITE LIST::LEN-FW-TO-CONSP))
 )
(BAG::METAFUNCTION-TO-REWRITE-EQUAL-TO-NIL
 (324 8 (:REWRITE LIST::EQUAL-OF-IF-HACK))
 (252 32 (:DEFINITION LEN))
 (220 12 (:DEFINITION LENGTH))
 (192 192 (:TYPE-PRESCRIPTION LEN))
 (144 12 (:LINEAR LIST::LEN-LINEAR))
 (141 141 (:REWRITE LIST::LEN-FW-TO-CONSP))
 (124 64 (:REWRITE LIST::LEN-OF-NON-CONSP))
 (105 101 (:REWRITE DEFAULT-CDR))
 (80 68 (:REWRITE DEFAULT-CAR))
 (64 32 (:REWRITE DEFAULT-+-2))
 (62 27 (:REWRITE LIST::EQUAL-OF-BOOLEANS-REWRITE))
 (32 32 (:REWRITE DEFAULT-+-1))
 (27 27 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (27 27 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (24 12 (:LINEAR LIST::LEN-WHEN-CONSP-LINEAR))
 (18 18 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (18 6 (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1))
 (16 16 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (16 4 (:DEFINITION TRUE-LISTP))
 (16 4 (:DEFINITION SYMBOL-LISTP))
 (12 12 (:LINEAR SYN::LEN-IMPLIES-ACL2-LEN))
 (11 11 (:TYPE-PRESCRIPTION BOOLEANP))
 (8 8 (:REWRITE LIST::TRUE-LISTP-OF-NON-CONSP-CHEAP))
 (8 8 (:REWRITE DEFAULT-COERCE-2))
 (8 8 (:REWRITE DEFAULT-COERCE-1))
 (4 4 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 )
(BAG::HYP-FOR-METAFUNCTION-TO-REWRITE-EQUAL-TO-NIL
 (324 8 (:REWRITE LIST::EQUAL-OF-IF-HACK))
 (252 32 (:DEFINITION LEN))
 (220 12 (:DEFINITION LENGTH))
 (192 192 (:TYPE-PRESCRIPTION LEN))
 (144 12 (:LINEAR LIST::LEN-LINEAR))
 (141 141 (:REWRITE LIST::LEN-FW-TO-CONSP))
 (124 64 (:REWRITE LIST::LEN-OF-NON-CONSP))
 (114 110 (:REWRITE DEFAULT-CDR))
 (80 68 (:REWRITE DEFAULT-CAR))
 (64 32 (:REWRITE DEFAULT-+-2))
 (62 27 (:REWRITE LIST::EQUAL-OF-BOOLEANS-REWRITE))
 (32 32 (:REWRITE DEFAULT-+-1))
 (27 27 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (27 27 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (24 12 (:LINEAR LIST::LEN-WHEN-CONSP-LINEAR))
 (18 18 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (18 6 (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1))
 (16 16 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (16 4 (:DEFINITION TRUE-LISTP))
 (16 4 (:DEFINITION SYMBOL-LISTP))
 (12 12 (:LINEAR SYN::LEN-IMPLIES-ACL2-LEN))
 (11 11 (:TYPE-PRESCRIPTION BOOLEANP))
 (8 8 (:REWRITE LIST::TRUE-LISTP-OF-NON-CONSP-CHEAP))
 (8 8 (:REWRITE DEFAULT-COERCE-2))
 (8 8 (:REWRITE DEFAULT-COERCE-1))
 (4 4 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 )
(APPLY-FOR-DEFEVALUATOR)
(BAG::EV3)
(EVAL-LIST-KWOTE-LST)
(TRUE-LIST-FIX-EV-LST)
(EV-COMMUTES-CAR)
(EV-LST-COMMUTES-CDR)
(BAG::EV3-CONSTRAINT-0)
(BAG::EV3-CONSTRAINT-1)
(BAG::EV3-CONSTRAINT-2)
(BAG::EV3-CONSTRAINT-3)
(BAG::EV3-CONSTRAINT-4)
(BAG::EV3-CONSTRAINT-5)
(BAG::EV3-CONSTRAINT-6)
(BAG::EV3-CONSTRAINT-7)
(BAG::EV3-CONSTRAINT-8)
(BAG::EV3-CONSTRAINT-9)
(BAG::EV3-CONSTRAINT-10)
(BAG::EV3-CONSTRAINT-11)
(BAG::EV3-CONSTRAINT-12)
(BAG::EV3-CONSTRAINT-13)
(BAG::SYNTACTIC-MEMBERSHIP-META-RULE-HELPER
 (737 16 (:DEFINITION BAG::MEMBERP))
 (607 40 (:REWRITE BAG::MEMBERP-WHEN-NOT-MEMBERP-OF-CDR-CHEAP))
 (362 362 (:REWRITE LIST::LEN-FW-TO-CONSP))
 (270 190 (:REWRITE DEFAULT-CDR))
 (227 15 (:REWRITE BAG::SUBBAGP-CDR-LEMMA))
 (140 108 (:REWRITE DEFAULT-CAR))
 (122 54 (:REWRITE LIST::EQUAL-OF-BOOLEANS-REWRITE))
 (105 6 (:REWRITE BAG::SUBBAGP-IMPLIES-MEMBERSHIP))
 (87 6 (:REWRITE BAG::SUBBAGP-OF-CDR))
 (80 40 (:REWRITE BAG::MEMBERP-OF-CDR-CHEAP))
 (78 6 (:REWRITE BAG::MEMBERP-CAR-WHEN-DISJOINT))
 (54 54 (:TYPE-PRESCRIPTION BOOLEANP))
 (54 54 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (54 54 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (54 6 (:REWRITE BAG::NON-UNIQUE-NOT-SUBBAGP-OF-UNIQUE))
 (49 28 (:REWRITE BAG::EV3-CONSTRAINT-13))
 (49 28 (:REWRITE BAG::EV3-CONSTRAINT-12))
 (49 28 (:REWRITE BAG::EV3-CONSTRAINT-11))
 (48 15 (:REWRITE BAG::SUBBAGP-WHEN-CDR-IS-NON-CONSP))
 (45 24 (:REWRITE BAG::EV3-CONSTRAINT-8))
 (45 24 (:REWRITE BAG::EV3-CONSTRAINT-3))
 (44 44 (:REWRITE BAG::NON-MEMBERP-COMPUTATION))
 (44 44 (:REWRITE BAG::MEMBERP-COMPUTATION))
 (44 44 (:META BAG::META-RULE-TO-SIMPLIFY-CONS-AND-APPEND-NEST))
 (43 43 (:REWRITE BAG::MEMBERP-OF-REMOVE-BAG-MEANS-MEMBERP))
 (43 43 (:REWRITE BAG::MEMBERP-OF-REMOVE-ALL))
 (43 43 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINTNESS))
 (43 43 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINT-OF-CONS-TWO))
 (43 43 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINT-OF-CONS-ONE))
 (40 40 (:REWRITE BAG::MEMBERP-OF-REMOVE-1))
 (40 40 (:REWRITE BAG::MEMBERP-OF-NON-CONSP-CHEAP))
 (33 15 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-TWO-CHEAP))
 (33 3 (:REWRITE BAG::DISJOINT-CDR-FROM-DISJOINT))
 (24 24 (:REWRITE BAG::HACK-ERIC))
 (23 1 (:REWRITE LIST::APPEND-EQUAL-SELF-ONE))
 (22 22 (:REWRITE BAG::EV3-CONSTRAINT-1))
 (21 21 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (18 18 (:REWRITE BAG::BIND-SUBBAGP-REMOVE-BAG))
 (18 6 (:REWRITE LIST::EQUAL-CAR-DIFFERENTIAL))
 (16 8 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (16 8 (:TYPE-PRESCRIPTION LIST::APPEND-TRUE-LISTP-TYPE-PRESCRIPTION-BETTER))
 (15 15 (:REWRITE BAG::SUBBAGP-REMOVE-BAG))
 (15 15 (:REWRITE BAG::SUBBAGP-REMOVE))
 (15 15 (:REWRITE BAG::SUBBAGP-OF-REMOVE-1-IMPLIES-SUBBAGP))
 (15 15 (:REWRITE BAG::SUBBAGP-CHAINING))
 (12 12 (:TYPE-PRESCRIPTION BAG::UNIQUE))
 (12 6 (:REWRITE BAG::MEMBERP-CAR-WHEN-DISJOINT-CHEAP))
 (11 7 (:REWRITE BAG::DISJOINT-OF-NON-CONSP-TWO))
 (11 1 (:REWRITE LIST::FINAL-CDR-WHEN-TRUE-LISTP))
 (9 6 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-TWO))
 (9 6 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-ONE))
 (8 8 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (8 8 (:TYPE-PRESCRIPTION LIST::APPEND-CONSP-TYPE-TWO))
 (8 8 (:TYPE-PRESCRIPTION LIST::APPEND-CONSP-TYPE-ONE))
 (7 7 (:REWRITE BAG::SUBBAGP-DISJOINT-COMMUTE))
 (7 7 (:REWRITE BAG::SUBBAGP-DISJOINT))
 (7 7 (:REWRITE BAG::DISJOINT-OTHER-MEMBERP))
 (7 7 (:REWRITE BAG::DISJOINT-FROM-COMMON-UNIQUENSS))
 (7 7 (:REWRITE BAG::DISJOINT-COMPUTATION))
 (7 1 (:DEFINITION TRUE-LISTP))
 (6 6 (:REWRITE BAG::UNIQUE-SUBBAGP-UNIQUE-FREE))
 (6 6 (:REWRITE BAG::UNIQUE-OF-NON-CONSP-CHEAP))
 (6 6 (:REWRITE BAG::UNIQUE-IF-PERM-OF-SOMETHING-UNIQUE))
 (6 6 (:REWRITE BAG::UNIQUE-COMPUTATION))
 (6 6 (:REWRITE BAG::SUBBAGP-UNIQUENESS))
 (6 6 (:REWRITE BAG::SUBBAGP-OF-NON-CONSP-ONE-CHEAP))
 (6 6 (:REWRITE BAG::SUBBAGP-NIL-FROM-<-OF-COUNTS))
 (6 6 (:REWRITE BAG::SUBBAGP-FALSE-FROM-WITNESS))
 (6 6 (:REWRITE BAG::*TRIGGER*-SYNTAX-EV-SYNTAX-SUBBAGP))
 (6 3 (:REWRITE BAG::DISJOINT-CDR-FROM-DISJOINT-CHEAP))
 (4 2 (:REWRITE LIST::APPEND-OF-NON-CONSP-ONE))
 (4 1 (:REWRITE LIST::APPEND-EQUAL-SELF-TWO))
 (3 3 (:TYPE-PRESCRIPTION LIST::FINAL-CDR))
 (2 2 (:REWRITE LIST::TRUE-LISTP-OF-NON-CONSP-CHEAP))
 (2 1 (:REWRITE LIST::FINAL-CDR-WHEN-NON-CONSP))
 (2 1 (:REWRITE LIST::FINAL-CDR-WHEN-CDR-NOT-CONSP))
 )
(BAG::HELPER-BOZO
 (297 297 (:REWRITE DEFAULT-CDR))
 (294 294 (:REWRITE DEFAULT-CAR))
 (251 251 (:REWRITE LIST::LEN-FW-TO-CONSP))
 (243 128 (:REWRITE LIST::EQUAL-OF-BOOLEANS-REWRITE))
 (140 34 (:REWRITE BAG::EV3-CONSTRAINT-9))
 (140 34 (:REWRITE BAG::EV3-CONSTRAINT-13))
 (140 34 (:REWRITE BAG::EV3-CONSTRAINT-12))
 (140 34 (:REWRITE BAG::EV3-CONSTRAINT-11))
 (140 34 (:REWRITE BAG::EV3-CONSTRAINT-10))
 (138 32 (:REWRITE BAG::EV3-CONSTRAINT-2))
 (128 128 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (128 128 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (115 115 (:TYPE-PRESCRIPTION BOOLEANP))
 (98 32 (:REWRITE BAG::EV3-CONSTRAINT-3))
 (56 32 (:REWRITE BAG::EV3-CONSTRAINT-1))
 (42 4 (:REWRITE BAG::MEMBERP-WHEN-NOT-MEMBERP-OF-CDR-CHEAP))
 (40 40 (:REWRITE BAG::HACK-ERIC))
 (8 4 (:REWRITE BAG::MEMBERP-OF-CDR-CHEAP))
 (4 4 (:REWRITE BAG::NON-MEMBERP-COMPUTATION))
 (4 4 (:REWRITE BAG::MEMBERP-SUBBAGP))
 (4 4 (:REWRITE BAG::MEMBERP-OF-REMOVE-BAG-MEANS-MEMBERP))
 (4 4 (:REWRITE BAG::MEMBERP-OF-REMOVE-ALL))
 (4 4 (:REWRITE BAG::MEMBERP-OF-REMOVE-1))
 (4 4 (:REWRITE BAG::MEMBERP-OF-NON-CONSP-CHEAP))
 (4 4 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINTNESS))
 (4 4 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINT-OF-CONS-TWO))
 (4 4 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINT-OF-CONS-ONE))
 (4 4 (:REWRITE BAG::MEMBERP-COMPUTATION))
 (4 4 (:META BAG::SYNTACTIC-MEMBERSHIP-META-RULE))
 (4 4 (:META BAG::META-RULE-TO-SIMPLIFY-CONS-AND-APPEND-NEST))
 (2 1 (:REWRITE BAG::DISJOINT-OF-NON-CONSP-TWO))
 (1 1 (:REWRITE BAG::SUBBAGP-DISJOINT-COMMUTE))
 (1 1 (:REWRITE BAG::SUBBAGP-DISJOINT))
 (1 1 (:REWRITE BAG::DISJOINT-OTHER-MEMBERP))
 (1 1 (:REWRITE BAG::DISJOINT-FROM-COMMON-UNIQUENSS))
 (1 1 (:REWRITE BAG::DISJOINT-COMPUTATION))
 )
(BAG::META-RULE-TO-REWRITE-EQUAL-TO-NIL
 (2859 2565 (:REWRITE DEFAULT-CDR))
 (1412 1412 (:REWRITE LIST::LEN-FW-TO-CONSP))
 (733 573 (:REWRITE DEFAULT-CAR))
 (433 158 (:REWRITE BAG::EV3-CONSTRAINT-12))
 (389 177 (:REWRITE LIST::EQUAL-OF-BOOLEANS-REWRITE))
 (381 134 (:REWRITE BAG::EV3-CONSTRAINT-9))
 (381 134 (:REWRITE BAG::EV3-CONSTRAINT-8))
 (381 134 (:REWRITE BAG::EV3-CONSTRAINT-10))
 (301 134 (:REWRITE BAG::EV3-CONSTRAINT-3))
 (177 177 (:TYPE-PRESCRIPTION BOOLEANP))
 (177 177 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (177 177 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (148 148 (:REWRITE LIST::TRUE-LISTP-OF-NON-CONSP-CHEAP))
 (24 24 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (12 12 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 )
(BAG::NEQ-TEST-1)
(BAG::NEQ-TEST-2)
(BAG::NEQ-TEST-2-ALT)
(BAG::FIND-NEGATED-MEMBERP-LITERAL-IN-CLAUSE)
(BAG::FIND-TWO-MEMBERP-LITERALS-THAT-TELL-YOU-THAT-A-AND-B-DIFFER)
(BAG::METAFUNCTION-FOR-TWO-MEMBERP-LITERALS-BLAH)
(BAG::HYP-METAFUNCTION-FOR-TWO-MEMBERP-LITERALS-BLAH)
(BAG::CONS-IFF)
(BAG::HELPER3
 (265 265 (:REWRITE LIST::LEN-FW-TO-CONSP))
 (177 177 (:REWRITE DEFAULT-CAR))
 (175 175 (:REWRITE DEFAULT-CDR))
 (129 37 (:REWRITE BAG::EV3-CONSTRAINT-9))
 (129 37 (:REWRITE BAG::EV3-CONSTRAINT-13))
 (129 37 (:REWRITE BAG::EV3-CONSTRAINT-12))
 (129 37 (:REWRITE BAG::EV3-CONSTRAINT-11))
 (129 37 (:REWRITE BAG::EV3-CONSTRAINT-10))
 (128 36 (:REWRITE BAG::EV3-CONSTRAINT-2))
 (118 36 (:REWRITE BAG::EV3-CONSTRAINT-3))
 (86 56 (:REWRITE LIST::EQUAL-OF-BOOLEANS-REWRITE))
 (63 6 (:REWRITE BAG::MEMBERP-WHEN-NOT-MEMBERP-OF-CDR-CHEAP))
 (56 56 (:META BAG::META-RULE-TO-REWRITE-EQUAL-TO-NIL))
 (56 56 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (56 56 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (30 30 (:TYPE-PRESCRIPTION BOOLEANP))
 (12 6 (:REWRITE BAG::MEMBERP-OF-CDR-CHEAP))
 (6 6 (:REWRITE BAG::NON-MEMBERP-COMPUTATION))
 (6 6 (:REWRITE BAG::MEMBERP-SUBBAGP))
 (6 6 (:REWRITE BAG::MEMBERP-OF-REMOVE-BAG-MEANS-MEMBERP))
 (6 6 (:REWRITE BAG::MEMBERP-OF-REMOVE-ALL))
 (6 6 (:REWRITE BAG::MEMBERP-OF-REMOVE-1))
 (6 6 (:REWRITE BAG::MEMBERP-OF-NON-CONSP-CHEAP))
 (6 6 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINTNESS))
 (6 6 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINT-OF-CONS-TWO))
 (6 6 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINT-OF-CONS-ONE))
 (6 6 (:REWRITE BAG::MEMBERP-COMPUTATION))
 (6 6 (:REWRITE BAG::BIND-MEMBERP-REMOVE-BAG))
 (6 6 (:META BAG::SYNTACTIC-MEMBERSHIP-META-RULE))
 (6 6 (:META BAG::META-RULE-TO-SIMPLIFY-CONS-AND-APPEND-NEST))
 )
(BAG::SYNTACTIC-MEMBERSHIP-META-RULE-HELPER-2
 (1309 1309 (:REWRITE DEFAULT-CDR))
 (801 801 (:REWRITE DEFAULT-CAR))
 (613 391 (:REWRITE LIST::EQUAL-OF-BOOLEANS-REWRITE))
 (575 575 (:REWRITE LIST::LEN-FW-TO-CONSP))
 (522 58 (:REWRITE LIST::EQUAL-CAR-DIFFERENTIAL))
 (391 391 (:META BAG::META-RULE-TO-REWRITE-EQUAL-TO-NIL))
 (391 391 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (391 391 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (222 222 (:TYPE-PRESCRIPTION BOOLEANP))
 (184 44 (:REWRITE BAG::EV3-CONSTRAINT-13))
 (172 40 (:REWRITE BAG::EV3-CONSTRAINT-9))
 (172 40 (:REWRITE BAG::EV3-CONSTRAINT-10))
 (150 4 (:DEFINITION BAG::MEMBERP))
 (144 10 (:REWRITE BAG::MEMBERP-WHEN-NOT-MEMBERP-OF-CDR-CHEAP))
 (110 38 (:REWRITE BAG::EV3-CONSTRAINT-3))
 (60 36 (:REWRITE BAG::EV3-CONSTRAINT-1))
 (20 10 (:REWRITE BAG::MEMBERP-OF-CDR-CHEAP))
 (10 10 (:REWRITE BAG::NON-MEMBERP-COMPUTATION))
 (10 10 (:REWRITE BAG::MEMBERP-SUBBAGP))
 (10 10 (:REWRITE BAG::MEMBERP-OF-REMOVE-BAG-MEANS-MEMBERP))
 (10 10 (:REWRITE BAG::MEMBERP-OF-REMOVE-ALL))
 (10 10 (:REWRITE BAG::MEMBERP-OF-REMOVE-1))
 (10 10 (:REWRITE BAG::MEMBERP-OF-NON-CONSP-CHEAP))
 (10 10 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINTNESS))
 (10 10 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINT-OF-CONS-TWO))
 (10 10 (:REWRITE BAG::MEMBERP-FALSE-FROM-DISJOINT-OF-CONS-ONE))
 (10 10 (:REWRITE BAG::MEMBERP-COMPUTATION))
 (10 10 (:REWRITE BAG::BIND-MEMBERP-REMOVE-BAG))
 (10 10 (:META BAG::SYNTACTIC-MEMBERSHIP-META-RULE))
 (10 10 (:META BAG::META-RULE-TO-SIMPLIFY-CONS-AND-APPEND-NEST))
 (4 4 (:REWRITE BAG::HELPER-BOZO))
 )
(BAG::META-RULE-FOR-TWO-MEMBERP-LITERALS
 (2576 2337 (:REWRITE DEFAULT-CDR))
 (692 692 (:REWRITE LIST::LEN-FW-TO-CONSP))
 (456 340 (:REWRITE DEFAULT-CAR))
 (153 80 (:REWRITE LIST::EQUAL-OF-BOOLEANS-REWRITE))
 (140 140 (:REWRITE LIST::TRUE-LISTP-OF-NON-CONSP-CHEAP))
 (128 14 (:REWRITE LIST::EQUAL-CAR-DIFFERENTIAL))
 (101 43 (:REWRITE BAG::EV3-CONSTRAINT-9))
 (101 43 (:REWRITE BAG::EV3-CONSTRAINT-8))
 (101 43 (:REWRITE BAG::EV3-CONSTRAINT-12))
 (101 43 (:REWRITE BAG::EV3-CONSTRAINT-11))
 (101 43 (:REWRITE BAG::EV3-CONSTRAINT-10))
 (80 80 (:META BAG::META-RULE-TO-REWRITE-EQUAL-TO-NIL))
 (80 80 (:META CANCEL_TIMES-EQUAL-CORRECT))
 (80 80 (:META CANCEL_PLUS-EQUAL-CORRECT))
 (79 43 (:REWRITE BAG::EV3-CONSTRAINT-3))
 (59 59 (:TYPE-PRESCRIPTION BOOLEANP))
 (56 14 (:DEFINITION BAG::FIND-NEGATED-MEMBERP-LITERAL-IN-CLAUSE))
 (38 36 (:REWRITE BAG::EV3-CONSTRAINT-1))
 (20 20 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (10 10 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (9 9 (:REWRITE BAG::HELPER-BOZO))
 (4 4 (:REWRITE BAG::CONS-IFF))
 )
(BAG::TEST-META-RULE-FOR-TWO-MEMBERP-LITERALS)
