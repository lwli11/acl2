(RP::CASESPLITTER-AUX
 (705 13 (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
 (682 11 (:DEFINITION QUOTEP))
 (650 4 (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
 (646 2 (:DEFINITION APPLY$-BADGEP))
 (394 2 (:DEFINITION SUBSETP-EQUAL))
 (368 28 (:DEFINITION MEMBER-EQUAL))
 (234 14 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
 (223 223 (:REWRITE DEFAULT-CDR))
 (182 13 (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
 (101 101 (:REWRITE DEFAULT-CAR))
 (63 63 (:META RP::BINARY-OR**/AND**-GUARD-META-CORRECT))
 (62 62 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (58 18 (:REWRITE RP::IS-IF-RP-TERMP))
 (50 2 (:DEFINITION TRUE-LISTP))
 (42 42 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
 (41 41 (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
 (40 4 (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
 (38 4 (:DEFINITION NATP))
 (32 10 (:REWRITE RP::RP-TERMP-CADR))
 (32 4 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (28 28 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
 (26 8 (:REWRITE RP::RP-TERMP-CADDR))
 (26 8 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
 (25 8 (:REWRITE RP::RP-TERMP-SINGLE-STEP-3))
 (22 22 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
 (16 8 (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
 (14 14 (:TYPE-PRESCRIPTION LEN))
 (14 2 (:DEFINITION LEN))
 (13 13 (:TYPE-PRESCRIPTION QUOTEP))
 (13 6 (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
 (12 6 (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
 (12 2 (:REWRITE RP::NOT-INCLUDE-RP))
 (12 2 (:DEFINITION ALL-NILS))
 (10 10 (:TYPE-PRESCRIPTION RP::EX-FROM-SYNP))
 (10 10 (:TYPE-PRESCRIPTION ALL-NILS))
 (10 2 (:DEFINITION WEAK-APPLY$-BADGE-P))
 (9 9 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (8 8 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (8 8 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (8 8 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (8 4 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (8 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (8 2 (:DEFINITION RP::INCLUDE-FNC))
 (6 6 (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
 (6 6 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (4 4 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (4 4 (:REWRITE SET::IN-SET))
 (4 4 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (4 4 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (4 4 (:LINEAR LEN-WHEN-PREFIXP))
 (4 2 (:REWRITE DEFAULT-+-2))
 (4 2 (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
 (4 2 (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
 (2 2 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
 (2 2 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(RP::RP-TERMP-OF-CASESPLITTER-AUX
 (1625 10 (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
 (1615 5 (:DEFINITION APPLY$-BADGEP))
 (985 5 (:DEFINITION SUBSETP-EQUAL))
 (920 70 (:DEFINITION MEMBER-EQUAL))
 (802 746 (:REWRITE DEFAULT-CDR))
 (585 35 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
 (554 483 (:REWRITE DEFAULT-CAR))
 (550 54 (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
 (516 137 (:REWRITE RP::IS-IF-RP-TERMP))
 (273 273 (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
 (264 71 (:REWRITE RP::RP-TERMP-CADR))
 (263 66 (:REWRITE RP::RP-TERMP-CADDR))
 (229 229 (:META RP::BINARY-OR**/AND**-GUARD-META-CORRECT))
 (225 66 (:REWRITE RP::RP-TERMP-SINGLE-STEP-3))
 (196 31 (:REWRITE RP::NOT-INCLUDE-RP))
 (155 155 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (136 29 (:DEFINITION RP::INCLUDE-FNC))
 (125 5 (:DEFINITION TRUE-LISTP))
 (105 105 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
 (100 10 (:REWRITE RP::RP-TERM-LISTP-IS-TRUE-LISTP))
 (95 10 (:DEFINITION NATP))
 (80 10 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (70 70 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
 (57 57 (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
 (55 55 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
 (46 46 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (40 20 (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
 (35 35 (:TYPE-PRESCRIPTION LEN))
 (35 5 (:DEFINITION LEN))
 (30 15 (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
 (30 5 (:DEFINITION ALL-NILS))
 (29 29 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
 (25 25 (:TYPE-PRESCRIPTION ALL-NILS))
 (25 5 (:DEFINITION WEAK-APPLY$-BADGE-P))
 (20 20 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (20 20 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (20 20 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (20 10 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (20 10 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (15 15 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (10 10 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (10 10 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (10 10 (:REWRITE SET::IN-SET))
 (10 10 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (10 10 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (10 10 (:LINEAR LEN-WHEN-PREFIXP))
 (10 5 (:REWRITE DEFAULT-+-2))
 (10 5 (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
 (10 5 (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
 (5 5 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (5 5 (:REWRITE DEFAULT-+-1))
 (4 4 (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
 (4 4 (:TYPE-PRESCRIPTION RP::IS-IF$INLINE))
 )
(RP::CASESPLITTER
 (414 1 (:DEFINITION TRUE-LISTP))
 (357 3 (:DEFINITION RP::RP-TERM-LISTP))
 (293 2 (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
 (291 1 (:DEFINITION APPLY$-BADGEP))
 (197 1 (:DEFINITION SUBSETP-EQUAL))
 (184 14 (:DEFINITION MEMBER-EQUAL))
 (141 141 (:REWRITE DEFAULT-CDR))
 (117 7 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
 (89 6 (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
 (61 61 (:REWRITE DEFAULT-CAR))
 (52 4 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (38 19 (:DEFINITION NTH))
 (37 37 (:META RP::BINARY-OR**/AND**-GUARD-META-CORRECT))
 (35 11 (:REWRITE RP::IS-IF-RP-TERMP))
 (32 2 (:DEFINITION ALISTP))
 (31 31 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (29 29 (:TYPE-PRESCRIPTION RP::EX-FROM-SYNP))
 (24 3 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (22 22 (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
 (21 21 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
 (20 6 (:REWRITE RP::RP-TERMP-CADR))
 (20 4 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (20 4 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (19 19 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (19 19 (:REWRITE NTH-WHEN-PREFIXP))
 (19 2 (:DEFINITION NATP))
 (17 5 (:REWRITE RP::RP-TERMP-CADDR))
 (15 5 (:REWRITE RP::RP-TERMP-SINGLE-STEP-3))
 (14 14 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
 (13 3 (:REWRITE RP::NOT-INCLUDE-RP))
 (12 2 (:DEFINITION LEN))
 (10 10 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
 (8 8 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (8 8 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (8 4 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (8 4 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (8 2 (:DEFINITION RP::INCLUDE-FNC))
 (7 7 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (6 6 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (6 6 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (6 3 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (6 3 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (6 3 (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
 (6 3 (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
 (6 1 (:DEFINITION ALL-NILS))
 (5 5 (:TYPE-PRESCRIPTION ALL-NILS))
 (5 5 (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
 (5 5 (:REWRITE DEFAULT-<-2))
 (5 5 (:REWRITE DEFAULT-<-1))
 (5 1 (:DEFINITION WEAK-APPLY$-BADGE-P))
 (4 4 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (4 2 (:REWRITE DEFAULT-+-2))
 (4 1 (:REWRITE REV-WHEN-NOT-CONSP))
 (3 3 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (3 3 (:REWRITE SET::IN-SET))
 (2 2 (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
 (2 2 (:TYPE-PRESCRIPTION RP::IS-IF$INLINE))
 (2 2 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
 (2 2 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (2 2 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (2 2 (:LINEAR LEN-WHEN-PREFIXP))
 (2 1 (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
 (2 1 (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
 )
(RP::CASESPLITTER-AUX-CORRECT
 (4279 3984 (:REWRITE DEFAULT-CDR))
 (3610 19 (:DEFINITION RP::EVAL-AND-ALL))
 (3224 18 (:DEFINITION RP::RP-TERMP))
 (3029 2611 (:REWRITE DEFAULT-CAR))
 (2437 4 (:REWRITE RP::RP-EVL-OF-RP-EQUAL2))
 (2228 288 (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
 (2204 38 (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
 (1719 291 (:DEFINITION APPLY$-BADGEP))
 (1607 8 (:REWRITE RP::RP-TERMP-OF-RP-TRANS))
 (1479 33 (:DEFINITION RP::EX-FROM-RP))
 (1257 53 (:REWRITE RP::VALID-SC-CADR))
 (1119 1119 (:META RP::BINARY-OR**/AND**-GUARD-META-CORRECT))
 (1119 8 (:REWRITE RP::RP-EQUAL-IS-SYMMETRIC))
 (1072 59 (:DEFINITION RP::TRANS-LIST))
 (1071 8 (:DEFINITION RP::RP-EQUAL))
 (1032 100 (:DEFINITION RP::INCLUDE-FNC))
 (876 4 (:REWRITE RP::RP-TERMP-OF-CASESPLITTER-AUX))
 (838 4 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-LOOSE))
 (757 53 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
 (743 52 (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
 (672 291 (:DEFINITION WEAK-APPLY$-BADGE-P))
 (653 51 (:DEFINITION RP::IS-SYNP$INLINE))
 (603 4 (:REWRITE RP::RP-EVLT-OF-RP-EQUAL))
 (574 50 (:REWRITE RP::NOT-INCLUDE-RP))
 (553 553 (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
 (544 34 (:REWRITE RP::RP-TERMP-SINGLE-STEP-3))
 (532 4 (:REWRITE RP::RP-EVL-OF-RP-EQUAL))
 (442 34 (:DEFINITION NATP))
 (435 435 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
 (400 3 (:DEFINITION RP::RP-TERM-LISTP))
 (266 266 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
 (242 236 (:REWRITE RP::CONSP-RP-TRANS-LST))
 (230 230 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (195 171 (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
 (171 171 (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
 (170 34 (:REWRITE RP::VALID-SC-CADDR))
 (166 166 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
 (154 68 (:REWRITE RP::IS-IF-RP-TERMP))
 (152 52 (:REWRITE RP::RP-EVL-OF-VARIABLE))
 (138 51 (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
 (131 34 (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
 (114 114 (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
 (108 51 (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
 (93 17 (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
 (78 34 (:REWRITE RP::RP-TERMP-CADDR))
 (78 34 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
 (76 76 (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
 (76 76 (:TYPE-PRESCRIPTION RP::CONTEXT-FROM-RP))
 (76 34 (:REWRITE RP::RP-TERMP-CADR))
 (60 15 (:REWRITE RP::VALID-SC-OF-EX-FROM-RP))
 (55 55 (:TYPE-PRESCRIPTION BOOLEANP))
 (55 53 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-RP-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-DONT-RW-CONTEXT-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-CASESPLIT-FROM-CONTEXT-TRIG-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-BADGE-USERFN-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-APPLY$-USERFN-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-APPLY$-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
 (55 53 (:REWRITE RP::RP-EVL-OF-<-CALL))
 (52 52 (:REWRITE RP::RP-EVL-OF-QUOTE))
 (52 52 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
 (52 52 (:REWRITE RP::RP-EVL-OF-LAMBDA))
 (52 52 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
 (52 52 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
 (51 51 (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
 (51 51 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (40 40 (:TYPE-PRESCRIPTION RP::RP-TERM-LISTP))
 (40 17 (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
 (34 34 (:TYPE-PRESCRIPTION RP::FALIST-CONSISTENT))
 (32 8 (:REWRITE RP::RP-EQUAL-REFLEXIVE))
 (24 24 (:TYPE-PRESCRIPTION RP::RP-EQUAL))
 (19 17 (:REWRITE RP::VALID-SC-CADDDR))
 (17 17 (:TYPE-PRESCRIPTION QUOTEP))
 (17 17 (:REWRITE DEFAULT-<-2))
 (17 17 (:REWRITE DEFAULT-<-1))
 (16 16 (:TYPE-PRESCRIPTION RP::RP-EQUAL-SUBTERMS))
 (16 8 (:REWRITE RP::RP-EQUAL-SUBTERMS-REFLEXIVE))
 (1 1 (:REWRITE RP::RP-EVL-META-EXTRACT-FN-CHECK-DEF))
 )
(RP::CASESPLITTER_VALID
 (15657 6 (:DEFINITION RP::VALID-RULESP))
 (14070 6 (:DEFINITION RP::VALID-RULEP))
 (14052 6 (:DEFINITION RP::VALID-RULEP-SK))
 (14046 6 (:DEFINITION RP::VALID-RULEP-SK-BODY))
 (9544 4 (:REWRITE RP::VALID-RULESP-IMPLIES-RULE-LIST-SYNTAXP))
 (5952 14 (:DEFINITION APPLY$-BADGEP))
 (5682 46 (:LINEAR APPLY$-BADGEP-PROPERTIES . 1))
 (4798 2 (:DEFINITION RP::RULE-LIST-SYNTAXP))
 (4792 120 (:DEFINITION RP::INCLUDE-FNC))
 (3984 6 (:REWRITE RP::RP-EVL-OF-RP-EQUAL))
 (3954 6 (:DEFINITION RP::RP-EQUAL))
 (3880 25 (:DEFINITION RP::EX-FROM-RP))
 (3865 12 (:DEFINITION TRUE-LISTP))
 (3816 12 (:DEFINITION RP::VALID-SC-NT))
 (3804 40 (:REWRITE RP::NOT-INCLUDE-RP))
 (3464 36 (:DEFINITION RP::EVAL-AND-ALL-NT))
 (3140 3110 (:REWRITE DEFAULT-CDR))
 (3140 25 (:DEFINITION RP::RP-TERM-LISTP))
 (3077 211 (:DEFINITION QUOTEP))
 (3028 14 (:DEFINITION SUBSETP-EQUAL))
 (2880 69 (:REWRITE RP::RP-TERMP-IMPLIES-SUBTERMS))
 (2846 196 (:DEFINITION MEMBER-EQUAL))
 (2374 38 (:DEFINITION RP::RP-TERMP))
 (1959 12 (:REWRITE RP::VALID-RULES-SUBSETP))
 (1818 98 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-1))
 (1696 1636 (:REWRITE DEFAULT-CAR))
 (1227 81 (:REWRITE RP::EX-FROM-SYNP-LEMMA1))
 (1210 69 (:REWRITE RP::RP-TERMP-IMPLIES-CDR-LISTP))
 (1065 81 (:DEFINITION RP::IS-SYNP$INLINE))
 (972 60 (:REWRITE RP::VALID-SC-NT-IS-VALID-SC))
 (900 72 (:REWRITE RP::EVAL-AND-ALL-NT-IS-EVAL-AND-ALL))
 (826 826 (:META RP::BINARY-OR**/AND**-GUARD-META-CORRECT))
 (792 84 (:DEFINITION RP::INCLUDE-FNC-SUBTERMS))
 (660 660 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC-SUBTERMS))
 (612 612 (:TYPE-PRESCRIPTION RP::INCLUDE-FNC))
 (578 185 (:REWRITE RP::IS-IF-RP-TERMP))
 (576 6 (:REWRITE RP::RP-EVL-OF-RP-EQUAL2))
 (576 6 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-LOOSE))
 (434 434 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (414 69 (:REWRITE RP::EVL-OF-EXTRACT-FROM-RP-2))
 (404 10 (:DEFINITION RP::RP-TRANS))
 (364 32 (:LINEAR APPLY$-BADGEP-PROPERTIES . 2))
 (337 1 (:DEFINITION RP::VALID-SC))
 (294 294 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-3))
 (278 278 (:REWRITE RP::RP-TERMP-SHOULD-TERM-BE-IN-CONS-LHS))
 (271 28 (:DEFINITION NATP))
 (248 31 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (243 81 (:REWRITE RP::RP-EVL-OF-VARIABLE))
 (230 50 (:REWRITE RP::RP-TERMP-CADDDR))
 (196 196 (:REWRITE MEMBER-EQUAL-NEWVAR-COMPONENTS-2))
 (187 187 (:TYPE-PRESCRIPTION APPLY$-BADGEP))
 (184 70 (:REWRITE RP::RP-TERMP-CADR))
 (182 14 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (180 10 (:DEFINITION RP::TRANS-LIST))
 (173 65 (:REWRITE RP::RP-TERMP-SINGLE-STEP-3))
 (164 65 (:REWRITE RP::RP-TERMP-CADDR))
 (164 65 (:REWRITE RP::IS-RP-PSEUDO-TERMP))
 (162 162 (:TYPE-PRESCRIPTION RP::IS-RP-LOOSE$INLINE))
 (156 156 (:TYPE-PRESCRIPTION RP::EVAL-AND-ALL-NT))
 (156 12 (:REWRITE RP::EVAL-AND-ALL-NT-OF-CONTEXT-FROM-RP))
 (144 126 (:REWRITE RP::ATOM-RP-TERMP-IS-SYMBOLP))
 (144 36 (:DEFINITION RP::RP-RHS$INLINE))
 (144 12 (:REWRITE RP::VALID-SC-NT-SUBTERMS-VALID-SC-SUBTERMS))
 (144 12 (:REWRITE RP::NOT-INCLUDE-EX-FROM-RP))
 (138 1 (:DEFINITION RP::EVAL-AND-ALL))
 (126 126 (:REWRITE SYMBOL-LISTP-IMPLIES-SYMBOLP))
 (116 58 (:DEFINITION NTH))
 (113 17 (:DEFINITION LEN))
 (112 7 (:DEFINITION ALISTP))
 (110 110 (:TYPE-PRESCRIPTION RP::CASESPLITTER-AUX))
 (106 8 (:REWRITE RP::RP-TRANS-IS-TERM-WHEN-LIST-IS-ABSENT))
 (104 104 (:TYPE-PRESCRIPTION RP::VALID-SC-NT))
 (98 49 (:REWRITE APPLY$-BADGEP-PROPERTIES . 3))
 (96 24 (:DEFINITION RP::RP-HYP$INLINE))
 (94 94 (:REWRITE FN-CHECK-DEF-NOT-QUOTE))
 (90 90 (:TYPE-PRESCRIPTION RP::RP-TRANS-LST))
 (87 87 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (84 84 (:TYPE-PRESCRIPTION RP::CONTEXT-FROM-RP))
 (84 42 (:REWRITE APPLY$-BADGEP-PROPERTIES . 1))
 (84 14 (:DEFINITION ALL-NILS))
 (81 81 (:TYPE-PRESCRIPTION QUOTEP))
 (81 81 (:TYPE-PRESCRIPTION RP::IS-SYNP$INLINE))
 (81 81 (:REWRITE RP::RP-EVL-OF-ZP-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-UNARY-/-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-UNARY---CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-TYPESPEC-CHECK-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-SYNP-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-SYMBOLP-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-SYMBOL-PACKAGE-NAME-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-SYMBOL-NAME-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-STRINGP-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-SUBTERMS-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-SUBTERMS-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CNT-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-RP-EQUAL-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-RP-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-RETURN-LAST-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-REALPART-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-RATIONALP-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-QUOTE))
 (81 81 (:REWRITE RP::RP-EVL-OF-NUMERATOR-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-NOT-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-NATP-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-LAMBDA))
 (81 81 (:REWRITE RP::RP-EVL-OF-INTERN-IN-PACKAGE-OF-SYMBOL-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-INTEGERP-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-IMPLIES-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-IMAGPART-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-IFF-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-IF-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-HIDE-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-FORCE-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-FORCE$-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-FALIST-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-EQUAL-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-DONT-RW-CONTEXT-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-DENOMINATOR-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-CONSP-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-CONS-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-COMPLEX-RATIONALP-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-COERCE-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-CODE-CHAR-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-CHARACTERP-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-CHAR-CODE-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-CDR-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-CASESPLIT-FROM-CONTEXT-TRIG-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-CAR-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-BITP-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-BINARY-+-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-BINARY-*-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-BADGE-USERFN-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-BAD-ATOM<=-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-APPLY$-USERFN-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-APPLY$-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-ACL2-NUMBERP-CALL))
 (81 81 (:REWRITE RP::RP-EVL-OF-<-CALL))
 (78 18 (:REWRITE RP::RP-TERMP-CADDDDR))
 (77 77 (:TYPE-PRESCRIPTION RP::EX-FROM-SYNP))
 (72 12 (:REWRITE RP::EX-FROM-RP-LEMMA1))
 (71 14 (:DEFINITION WEAK-APPLY$-BADGE-P))
 (70 70 (:TYPE-PRESCRIPTION ALL-NILS))
 (70 14 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (70 14 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (62 62 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (62 31 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (62 31 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (58 58 (:REWRITE NTH-WHEN-PREFIXP))
 (56 56 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (51 51 (:REWRITE INTEGER-LISTP-IMPLIES-INTEGERP))
 (48 12 (:REWRITE RP::QUOTEP-TERM-WITH-EX-FROM-RP))
 (40 40 (:REWRITE RP::CONSP-RP-TRANS-LST))
 (36 12 (:DEFINITION RP::RP-LHS$INLINE))
 (35 17 (:REWRITE APPLY$-BADGEP-PROPERTIES . 2))
 (34 17 (:REWRITE DEFAULT-+-2))
 (31 31 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (31 31 (:REWRITE SET::IN-SET))
 (30 30 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (30 30 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (30 30 (:LINEAR LEN-WHEN-PREFIXP))
 (28 28 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (28 28 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (28 14 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (28 14 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (26 26 (:REWRITE DEFAULT-<-2))
 (26 26 (:REWRITE DEFAULT-<-1))
 (24 6 (:DEFINITION RP::RP-IFF-FLAG$INLINE))
 (20 20 (:TYPE-PRESCRIPTION RP::EX-FROM-RP-ALL2-LST))
 (18 18 (:TYPE-PRESCRIPTION RP::RULE-SYNTAXP-FN))
 (18 18 (:TYPE-PRESCRIPTION RP::RP-EQUAL))
 (17 17 (:REWRITE LEN-MEMBER-EQUAL-LOOP$-AS))
 (17 17 (:REWRITE DEFAULT-+-1))
 (16 16 (:TYPE-PRESCRIPTION RP::VALID-SC-NT-SUBTERMS))
 (16 4 (:REWRITE REV-WHEN-NOT-CONSP))
 (13 13 (:TYPE-PRESCRIPTION RP::IS-IF$INLINE))
 (12 12 (:TYPE-PRESCRIPTION RP::RP-EQUAL-SUBTERMS))
 (12 6 (:REWRITE RP::RP-EQUAL-SUBTERMS-REFLEXIVE))
 (12 6 (:REWRITE RP::RP-EQUAL-REFLEXIVE))
 (5 3 (:REWRITE RP::VALID-SC-CADR))
 (4 2 (:REWRITE RP::VALID-SC-CADDR))
 (4 1 (:REWRITE RP::VALID-SC-OF-EX-FROM-RP))
 (4 1 (:REWRITE RP::VALID-SC-EX-FROM-RP))
 (3 1 (:REWRITE RP::VALID-SC-CADDDR))
 (2 2 (:TYPE-PRESCRIPTION RP::CASESPLITTER))
 (2 2 (:REWRITE RP::VALID-RULEP-SK-NECC))
 (1 1 (:TYPE-PRESCRIPTION RP::EVAL-AND-ALL))
 (1 1 (:REWRITE RP::VALID-RP-STATEP-NECC))
 (1 1 (:REWRITE RP::VALID-RP-STATE-SYNTAXP-AUX-NECC))
 (1 1 (:REWRITE RP::RP-STATE-PRESERVEDP-IMPLIES-VALID-RP-STATEP))
 )
