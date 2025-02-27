(GL::PSEUDO-REWRITE-RULE-P)
(GL::PSEUDO-REWRITE-RULE-P-IMPLIES
 (131 131 (:REWRITE DEFAULT-CDR))
 (100 20 (:DEFINITION LEN))
 (56 56 (:REWRITE DEFAULT-CAR))
 (40 20 (:REWRITE DEFAULT-+-2))
 (20 20 (:REWRITE DEFAULT-+-1))
 (16 4 (:DEFINITION SYMBOL-LISTP))
 (10 10 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (8 8 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (8 8 (:REWRITE FN-CHECK-DEF-FORMALS))
 (8 8 (:REWRITE DEFAULT-COERCE-2))
 (8 8 (:REWRITE DEFAULT-COERCE-1))
 (8 4 (:DEFINITION TRUE-LISTP))
 (5 5 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 )
(GL::MEXTRACT-GOOD-REWRITE-RULESP)
(GL::MEXTRACT-GOOD-REWRITE-RULESP-OF-CONS
 (253 253 (:REWRITE DEFAULT-CDR))
 (96 96 (:REWRITE DEFAULT-CAR))
 (10 5 (:REWRITE MEXTRACT-EV-OF-TYPESPEC-CHECK-CALL))
 (10 5 (:REWRITE MEXTRACT-EV-OF-QUOTE))
 (10 5 (:REWRITE MEXTRACT-EV-OF-NOT-CALL))
 (10 5 (:REWRITE MEXTRACT-EV-OF-LAMBDA))
 (10 5 (:REWRITE MEXTRACT-EV-OF-IMPLIES-CALL))
 (10 5 (:REWRITE MEXTRACT-EV-OF-IFF-CALL))
 (10 5 (:REWRITE MEXTRACT-EV-OF-IF-CALL))
 (10 5 (:REWRITE MEXTRACT-EV-OF-EQUAL-CALL))
 (5 5 (:REWRITE MEXTRACT-EV-OF-VARIABLE))
 )
(GL::MEXTRACT-GOOD-REWRITE-RULESP-OF-CDR
 (20 20 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE MEXTRACT-EV-OF-TYPESPEC-CHECK-CALL))
 (2 1 (:REWRITE MEXTRACT-EV-OF-QUOTE))
 (2 1 (:REWRITE MEXTRACT-EV-OF-NOT-CALL))
 (2 1 (:REWRITE MEXTRACT-EV-OF-LAMBDA))
 (2 1 (:REWRITE MEXTRACT-EV-OF-IMPLIES-CALL))
 (2 1 (:REWRITE MEXTRACT-EV-OF-IFF-CALL))
 (2 1 (:REWRITE MEXTRACT-EV-OF-IF-CALL))
 (2 1 (:REWRITE MEXTRACT-EV-OF-EQUAL-CALL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-VARIABLE))
 )
(GL::MEXTRACT-EV-OF-CAR-WHEN-GOOD-REWRITE-RULESP
 (37 21 (:REWRITE DEFAULT-CAR))
 (17 3 (:REWRITE MEXTRACT-EV-OF-TYPESPEC-CHECK-CALL))
 (17 3 (:REWRITE MEXTRACT-EV-OF-QUOTE))
 (17 3 (:REWRITE MEXTRACT-EV-OF-NOT-CALL))
 (17 3 (:REWRITE MEXTRACT-EV-OF-IMPLIES-CALL))
 (17 3 (:REWRITE MEXTRACT-EV-OF-IFF-CALL))
 (17 3 (:REWRITE MEXTRACT-EV-OF-IF-CALL))
 (17 3 (:REWRITE MEXTRACT-EV-OF-EQUAL-CALL))
 (15 3 (:REWRITE MEXTRACT-EV-OF-LAMBDA))
 (6 3 (:REWRITE MEXTRACT-EV-OF-VARIABLE))
 (3 3 (:REWRITE MEXTRACT-LEMMA-TERM))
 )
(GL::MEXTRACT-GOOD-REWRITE-RULESP-BADGUY)
(GL::MEXTRACT-GOOD-REWRITE-RULESP-BY-BADGUY
 (13332 13332 (:REWRITE DEFAULT-CDR))
 (5486 5486 (:REWRITE DEFAULT-CAR))
 (2008 67 (:REWRITE GL::MEXTRACT-GOOD-REWRITE-RULESP-OF-CDR))
 (630 336 (:REWRITE MEXTRACT-EV-OF-TYPESPEC-CHECK-CALL))
 (630 336 (:REWRITE MEXTRACT-EV-OF-NOT-CALL))
 (630 336 (:REWRITE MEXTRACT-EV-OF-LAMBDA))
 (630 336 (:REWRITE MEXTRACT-EV-OF-IFF-CALL))
 (630 336 (:REWRITE MEXTRACT-EV-OF-IF-CALL))
 (630 336 (:REWRITE MEXTRACT-EV-OF-EQUAL-CALL))
 (308 308 (:REWRITE MEXTRACT-EV-OF-VARIABLE))
 (145 145 (:REWRITE MEXTRACT-EV-FN-GET-DEF))
 (145 145 (:REWRITE MEXTRACT-EV-FN-CHECK-DEF))
 (69 69 (:REWRITE MEXTRACT-EV-CONJOIN-ATOM))
 (55 55 (:REWRITE MEXTRACT-LEMMA))
 (1 1 (:REWRITE FN-CHECK-DEF-FORMALS))
 )
(GL::MEXTRACT-GOOD-REWRITE-RULESP-OF-LEMMAS
 (11 1 (:DEFINITION FGETPROP))
 (7 7 (:REWRITE DEFAULT-CDR))
 (7 7 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE MEXTRACT-EV-OF-VARIABLE))
 (1 1 (:REWRITE MEXTRACT-EV-OF-TYPESPEC-CHECK-CALL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-QUOTE))
 (1 1 (:REWRITE MEXTRACT-EV-OF-NOT-CALL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-LAMBDA))
 (1 1 (:REWRITE MEXTRACT-EV-OF-IMPLIES-CALL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-IFF-CALL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-IF-CALL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-EQUAL-CALL))
 )
(GL::PSEUDO-REWRITE-RULE-LISTP)
(GL::PSEUDO-REWRITE-RULE-LISTP-OF-CONS
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(GL::PSEUDO-REWRITE-RULE-LISTP-OF-CDR
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(GL::PSEUDO-REWRITE-RULE-P-OF-CAR
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(GL::PSEUDO-REWRITE-TABLE-P)
(GL::PSEUDO-REWRITE-TABLE-P-OF-CONS
 (15 5 (:REWRITE GL::PSEUDO-REWRITE-RULE-LISTP-OF-CDR))
 (14 14 (:REWRITE DEFAULT-CAR))
 (8 8 (:REWRITE DEFAULT-CDR))
 )
(GL::LOOKUP-WHEN-PSEUDO-REWRITE-TABLE-P
 (50 50 (:REWRITE DEFAULT-CAR))
 (36 12 (:REWRITE GL::PSEUDO-REWRITE-RULE-LISTP-OF-CDR))
 (33 18 (:REWRITE DEFAULT-CDR))
 (15 15 (:TYPE-PRESCRIPTION HONS-ASSOC-EQUAL))
 )
(GL::MEXTRACT-GOOD-REWRITE-RULE-TABLEP)
(GL::MEXTRACT-GOOD-REWRITE-RULE-TABLEP-OF-CONS
 (18 6 (:REWRITE GL::MEXTRACT-GOOD-REWRITE-RULESP-OF-CDR))
 (14 14 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 )
(GL::LOOKUP-WHEN-MEXTRACT-GOOD-REWRITE-TABLE-P
 (43 22 (:REWRITE DEFAULT-CDR))
 (42 14 (:REWRITE GL::MEXTRACT-GOOD-REWRITE-RULESP-OF-CDR))
 (40 40 (:REWRITE DEFAULT-CAR))
 (21 21 (:TYPE-PRESCRIPTION HONS-ASSOC-EQUAL))
 )
(GL::FILTER-REWRITE-RULES
 (12 4 (:REWRITE GL::PSEUDO-REWRITE-RULE-P-OF-CAR))
 (12 4 (:DEFINITION MEMBER-EQUAL))
 (9 9 (:REWRITE DEFAULT-CAR))
 (8 8 (:TYPE-PRESCRIPTION GL::PSEUDO-REWRITE-RULE-LISTP))
 (5 5 (:REWRITE DEFAULT-CDR))
 (2 1 (:DEFINITION TRUE-LISTP))
 )
(GL::PSEUDO-REWRITE-RULE-LISTP-OF-FILTER-REWRITE-RULES
 (37 13 (:REWRITE GL::PSEUDO-REWRITE-RULE-P-OF-CAR))
 (28 28 (:REWRITE DEFAULT-CAR))
 (11 11 (:REWRITE DEFAULT-CDR))
 )
(GL::MEXTRACT-GOOD-REWRITE-RULESP-OF-FILTER-REWRITE-RULES
 (87 25 (:REWRITE GL::PSEUDO-REWRITE-RULE-P-OF-CAR))
 (62 43 (:REWRITE MEXTRACT-EV-OF-TYPESPEC-CHECK-CALL))
 (62 43 (:REWRITE MEXTRACT-EV-OF-NOT-CALL))
 (62 43 (:REWRITE MEXTRACT-EV-OF-LAMBDA))
 (62 43 (:REWRITE MEXTRACT-EV-OF-IFF-CALL))
 (62 43 (:REWRITE MEXTRACT-EV-OF-IF-CALL))
 (62 43 (:REWRITE MEXTRACT-EV-OF-EQUAL-CALL))
 (58 58 (:TYPE-PRESCRIPTION GL::PSEUDO-REWRITE-RULE-LISTP))
 (38 38 (:REWRITE MEXTRACT-EV-FN-GET-DEF))
 (38 38 (:REWRITE MEXTRACT-EV-FN-CHECK-DEF))
 (34 34 (:REWRITE MEXTRACT-EV-OF-VARIABLE))
 (14 14 (:REWRITE MEXTRACT-EV-CONJOIN-ATOM))
 (12 4 (:REWRITE GL::PSEUDO-REWRITE-RULE-LISTP-OF-CDR))
 (3 3 (:REWRITE MEXTRACT-LEMMA))
 )
(GL::RUNE-TABLE-TO-REWRITE-TABLE
 (64 64 (:REWRITE DEFAULT-CAR))
 (21 21 (:REWRITE DEFAULT-CDR))
 (11 1 (:DEFINITION FGETPROP))
 )
(GL::PSEUDO-REWRITE-TABLE-P-OF-RUNE-TABLE-TO-REWRITE-TABLE
 (130 130 (:REWRITE DEFAULT-CAR))
 (110 10 (:DEFINITION FGETPROP))
 (65 65 (:REWRITE DEFAULT-CDR))
 )
(GL::MEXTRACT-GOOD-REWRITE-RULE-TABLEP-OF-RUNE-TABLE-TO-REWRITE-TABLE
 (87 87 (:REWRITE DEFAULT-CAR))
 (77 7 (:DEFINITION FGETPROP))
 (55 55 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE MEXTRACT-EV-OF-VARIABLE))
 (8 8 (:REWRITE MEXTRACT-EV-OF-TYPESPEC-CHECK-CALL))
 (8 8 (:REWRITE MEXTRACT-EV-OF-QUOTE))
 (8 8 (:REWRITE MEXTRACT-EV-OF-NOT-CALL))
 (8 8 (:REWRITE MEXTRACT-EV-OF-LAMBDA))
 (8 8 (:REWRITE MEXTRACT-EV-OF-IMPLIES-CALL))
 (8 8 (:REWRITE MEXTRACT-EV-OF-IFF-CALL))
 (8 8 (:REWRITE MEXTRACT-EV-OF-IF-CALL))
 (8 8 (:REWRITE MEXTRACT-EV-OF-EQUAL-CALL))
 )
(GL::PSEUDO-REWRITE-TABLE-P-OF-FAST-ALIST-FORK
 (330 330 (:REWRITE DEFAULT-CAR))
 (144 144 (:REWRITE DEFAULT-CDR))
 (10 4 (:REWRITE GL::PSEUDO-REWRITE-RULE-LISTP-OF-CDR))
 )
(GL::MEXTRACT-GOOD-REWRITE-RULE-TABLEP-OF-FAST-ALIST-FORK
 (259 259 (:REWRITE DEFAULT-CAR))
 (118 118 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE CAR-CONS))
 (10 4 (:REWRITE GL::MEXTRACT-GOOD-REWRITE-RULESP-OF-CDR))
 )
(GL::CDR-LAST-WHEN-PSEUDO-REWRITE-TABLE-P
 (40 29 (:REWRITE DEFAULT-CDR))
 (28 28 (:REWRITE DEFAULT-CAR))
 (21 7 (:REWRITE GL::PSEUDO-REWRITE-RULE-LISTP-OF-CDR))
 )
(GL::ATOM-OF-CDR-LAST
 (21 13 (:REWRITE DEFAULT-CDR))
 (12 4 (:REWRITE GL::CDR-LAST-WHEN-PSEUDO-REWRITE-TABLE-P))
 (8 8 (:TYPE-PRESCRIPTION GL::PSEUDO-REWRITE-TABLE-P))
 )
(GL::MEXTRACT-GOOD-REWRITE-RULE-TABLEP-WHEN-ATOM)
(GL::SORT-BRANCH-MERGE-RULES-BY-FUNCTION
 (113 109 (:REWRITE DEFAULT-CDR))
 (34 33 (:REWRITE DEFAULT-CAR))
 (7 7 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 )
(GL::PSEUDO-REWRITE-TABLE-P-OF-SORT-BRANCH-MERGE-RULES-BY-FUNCTION
 (515 502 (:REWRITE DEFAULT-CDR))
 (381 380 (:REWRITE DEFAULT-CAR))
 (41 6 (:DEFINITION HONS-ASSOC-EQUAL))
 (8 8 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (5 5 (:DEFINITION HONS-EQUAL))
 (3 1 (:DEFINITION LAST))
 )
(GL::MEXTRACT-GOOD-REWRITE-RULE-TABLEP-OF-SORT-BRANCH-MERGE-RULES-BY-FUNCTION
 (700 55 (:DEFINITION HONS-ASSOC-EQUAL))
 (140 28 (:DEFINITION LAST))
 (67 44 (:REWRITE MEXTRACT-EV-OF-TYPESPEC-CHECK-CALL))
 (67 44 (:REWRITE MEXTRACT-EV-OF-NOT-CALL))
 (67 44 (:REWRITE MEXTRACT-EV-OF-LAMBDA))
 (67 44 (:REWRITE MEXTRACT-EV-OF-IFF-CALL))
 (67 44 (:REWRITE MEXTRACT-EV-OF-IF-CALL))
 (67 44 (:REWRITE MEXTRACT-EV-OF-EQUAL-CALL))
 (43 43 (:DEFINITION HONS-EQUAL))
 (40 40 (:REWRITE MEXTRACT-EV-FN-GET-DEF))
 (40 40 (:REWRITE MEXTRACT-EV-FN-CHECK-DEF))
 (35 35 (:REWRITE MEXTRACT-EV-OF-VARIABLE))
 (24 8 (:REWRITE GL::CDR-LAST-WHEN-PSEUDO-REWRITE-TABLE-P))
 (22 22 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (18 6 (:TYPE-PRESCRIPTION FAST-ALIST-FORK))
 (16 16 (:TYPE-PRESCRIPTION GL::PSEUDO-REWRITE-TABLE-P))
 (13 13 (:REWRITE MEXTRACT-EV-CONJOIN-ATOM))
 (3 3 (:REWRITE MEXTRACT-LEMMA))
 )
(GL::BRANCH-MERGE-REWRITE-TABLE)
(GL::PSEUDO-REWRITE-TABLE-P-OF-BRANCH-MERGE-REWRITE-TABLE)
(GL::MEXTRACT-GOOD-REWRITE-RULE-TABLEP-OF-BRANCH-MERGE-REWRITE-TABLE
 (11 11 (:REWRITE DEFAULT-CDR))
 (11 11 (:REWRITE DEFAULT-CAR))
 (11 1 (:DEFINITION FGETPROP))
 (10 2 (:DEFINITION ASSOC-EQUAL))
 (4 2 (:DEFINITION NTH))
 (1 1 (:REWRITE MEXTRACT-EV-OF-VARIABLE))
 (1 1 (:REWRITE MEXTRACT-EV-OF-TYPESPEC-CHECK-CALL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-QUOTE))
 (1 1 (:REWRITE MEXTRACT-EV-OF-NOT-CALL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-LAMBDA))
 (1 1 (:REWRITE MEXTRACT-EV-OF-IMPLIES-CALL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-IFF-CALL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-IF-CALL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-EQUAL-CALL))
 )
(GL::FN-BRANCH-MERGE-RULES)
(GL::PSEUDO-REWRITE-RULE-LISTP-OF-FN-BRANCH-MERGE-RULES
 (8 1 (:DEFINITION HONS-ASSOC-EQUAL))
 (6 3 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-CAR))
 (3 3 (:TYPE-PRESCRIPTION HONS-ASSOC-EQUAL))
 (1 1 (:DEFINITION HONS-EQUAL))
 )
(GL::MEXTRACT-GOOD-REWRITE-RULESP-OF-FN-BRANCH-MERGE-RULES
 (12 9 (:REWRITE DEFAULT-CDR))
 (10 10 (:REWRITE DEFAULT-CAR))
 (10 2 (:DEFINITION ASSOC-EQUAL))
 (8 1 (:DEFINITION HONS-ASSOC-EQUAL))
 (4 2 (:DEFINITION NTH))
 (3 3 (:TYPE-PRESCRIPTION HONS-ASSOC-EQUAL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-VARIABLE))
 (1 1 (:REWRITE MEXTRACT-EV-OF-TYPESPEC-CHECK-CALL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-QUOTE))
 (1 1 (:REWRITE MEXTRACT-EV-OF-NOT-CALL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-LAMBDA))
 (1 1 (:REWRITE MEXTRACT-EV-OF-IMPLIES-CALL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-IFF-CALL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-IF-CALL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-EQUAL-CALL))
 (1 1 (:DEFINITION HONS-EQUAL))
 )
(GL::FN-REWRITE-RULES
 (24 24 (:REWRITE DEFAULT-CAR))
 (16 13 (:REWRITE DEFAULT-CDR))
 )
(GL::PSEUDO-REWRITE-RULE-LISTP-OF-FN-REWRITE-RULES)
(GL::MEXTRACT-GOOD-REWRITE-RULESP-OF-FN-REWRITE-RULES
 (17 14 (:REWRITE DEFAULT-CDR))
 (15 15 (:REWRITE DEFAULT-CAR))
 (11 1 (:DEFINITION FGETPROP))
 (10 2 (:DEFINITION ASSOC-EQUAL))
 (8 1 (:DEFINITION HONS-ASSOC-EQUAL))
 (4 2 (:DEFINITION NTH))
 (3 3 (:TYPE-PRESCRIPTION HONS-ASSOC-EQUAL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-VARIABLE))
 (1 1 (:REWRITE MEXTRACT-EV-OF-TYPESPEC-CHECK-CALL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-QUOTE))
 (1 1 (:REWRITE MEXTRACT-EV-OF-NOT-CALL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-LAMBDA))
 (1 1 (:REWRITE MEXTRACT-EV-OF-IMPLIES-CALL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-IFF-CALL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-IF-CALL))
 (1 1 (:REWRITE MEXTRACT-EV-OF-EQUAL-CALL))
 (1 1 (:DEFINITION HONS-EQUAL))
 )
