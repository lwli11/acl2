(BETA-REDUCE-FULL-CORRECT-FOR-GEN-EVAL
 (65 34 (:REWRITE DEFAULT-CAR))
 (44 24 (:REWRITE DEFAULT-CDR))
 (39 39 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 2))
 (39 39 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 1))
 (39 39 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 2))
 (39 39 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 1))
 (34 2 (:DEFINITION PAIRLIS$))
 (26 2 (:DEFINITION ASSOC-EQUAL))
 (24 10 (:REWRITE GEN-EVAL-OF-IF-CALL))
 (18 6 (:REWRITE GEN-EVAL-LST-OF-ATOM))
 (16 2 (:DEFINITION KWOTE-LST))
 (3 3 (:REWRITE CAR-CONS))
 (2 2 (:DEFINITION KWOTE))
 )
(BETA-REDUCE-FULL-LIST-CORRECT-FOR-GEN-EVAL)
(INTRODUCE-VAR)
(BETA-REDUCE-INTRODUCE-VARS
 (432 2 (:DEFINITION PSEUDO-TERMP))
 (210 9 (:DEFINITION LENGTH))
 (179 13 (:DEFINITION LEN))
 (105 38 (:REWRITE DEFAULT-+-2))
 (100 43 (:REWRITE DEFAULT-CDR))
 (64 40 (:REWRITE DEFAULT-CAR))
 (60 38 (:REWRITE DEFAULT-+-1))
 (57 57 (:TYPE-PRESCRIPTION ACL2-COUNT-OF-CONSP-POSITIVE))
 (43 43 (:TYPE-PRESCRIPTION LEN))
 (42 42 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 2))
 (42 42 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 1))
 (42 42 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 2))
 (42 42 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 1))
 (40 7 (:REWRITE PSEUDO-TERMP-CAR))
 (32 4 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (31 2 (:REWRITE PSEUDO-TERMP-CADR-FROM-PSEUDO-TERM-LISTP))
 (31 2 (:DEFINITION TRUE-LISTP))
 (30 6 (:REWRITE COMMUTATIVITY-OF-+))
 (24 6 (:DEFINITION INTEGER-ABS))
 (21 21 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (21 14 (:REWRITE STR::CONSP-OF-EXPLODE))
 (17 2 (:DEFINITION SYMBOL-LISTP))
 (14 14 (:REWRITE PSEUDO-TERM-LISTP-OF-ATOM))
 (14 7 (:REWRITE STR::COERCE-TO-LIST-REMOVAL))
 (11 11 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (11 7 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (9 7 (:REWRITE DEFAULT-<-1))
 (8 8 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (8 8 (:REWRITE FOLD-CONSTS-IN-+))
 (8 4 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (8 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (7 7 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (6 6 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (6 6 (:REWRITE VL::STRINGP-OF-CAR-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P))
 (6 6 (:REWRITE VL::STRINGP-OF-CAR-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (4 4 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (4 4 (:REWRITE SET::IN-SET))
 (4 4 (:LINEAR LEN-WHEN-PREFIXP))
 (3 3 (:REWRITE DEFAULT-REALPART))
 (3 3 (:REWRITE DEFAULT-NUMERATOR))
 (3 3 (:REWRITE DEFAULT-IMAGPART))
 (3 3 (:REWRITE DEFAULT-DENOMINATOR))
 )
(LEN-OF-BETA-REDUCE-INTRODUCE-VARS-LIST
 (48 48 (:LINEAR LEN-WHEN-PREFIXP))
 (48 24 (:REWRITE DEFAULT-+-2))
 (40 39 (:REWRITE DEFAULT-CDR))
 (30 30 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 2))
 (30 30 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 1))
 (30 30 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 2))
 (30 30 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 1))
 (24 24 (:REWRITE DEFAULT-+-1))
 (15 15 (:REWRITE DEFAULT-CAR))
 (12 1 (:DEFINITION BETA-REDUCE-INTRODUCE-VARS))
 (4 1 (:DEFINITION BETA-REDUCE-FULL))
 )
(FLAG-LEMMA-FOR-BETA-REDUCE-INTRODUCE-VARS-CORRECT
 (1269 42 (:REWRITE PSEUDO-TERMP-CADR-FROM-PSEUDO-TERM-LISTP))
 (804 139 (:REWRITE PSEUDO-TERMP-OPENER))
 (677 419 (:REWRITE DEFAULT-CDR))
 (649 413 (:REWRITE DEFAULT-CAR))
 (385 385 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 2))
 (385 385 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 1))
 (385 385 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 2))
 (385 385 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 1))
 (288 36 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (214 214 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (168 84 (:REWRITE DEFAULT-+-2))
 (122 14 (:DEFINITION SYMBOL-LISTP))
 (115 115 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (95 23 (:REWRITE GEN-EVAL-OF-IF-CALL))
 (84 84 (:REWRITE DEFAULT-+-1))
 (78 78 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (78 52 (:REWRITE STR::CONSP-OF-EXPLODE))
 (72 72 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (72 36 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (72 36 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (40 5 (:DEFINITION KWOTE-LST))
 (36 36 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (36 36 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (36 36 (:REWRITE SET::IN-SET))
 (35 35 (:TYPE-PRESCRIPTION KWOTE-LST))
 (34 2 (:DEFINITION PAIRLIS$))
 (32 32 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (32 32 (:LINEAR LEN-WHEN-PREFIXP))
 (26 26 (:REWRITE VL::STRINGP-OF-CAR-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P))
 (26 26 (:REWRITE VL::STRINGP-OF-CAR-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P))
 (26 26 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (26 2 (:DEFINITION ASSOC-EQUAL))
 (21 3 (:DEFINITION BETA-REDUCE-FULL-LIST))
 (5 5 (:DEFINITION KWOTE))
 )
(BETA-REDUCE-INTRODUCE-VARS-CORRECT)
(BETA-REDUCE-INTRODUCE-VARS-LIST-CORRECT)
(FLAG-LEMMA-FOR-PSEUDO-TERMP-BETA-REDUCE-INTRODUCE-VARS
 (1416 47 (:REWRITE PSEUDO-TERMP-CADR-FROM-PSEUDO-TERM-LISTP))
 (808 482 (:REWRITE DEFAULT-CDR))
 (715 446 (:REWRITE DEFAULT-CAR))
 (395 395 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 2))
 (395 395 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 1))
 (395 395 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 2))
 (395 395 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 1))
 (388 48 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (274 274 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (222 111 (:REWRITE DEFAULT-+-2))
 (145 145 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (111 111 (:REWRITE DEFAULT-+-1))
 (102 102 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (102 68 (:REWRITE STR::CONSP-OF-EXPLODE))
 (96 96 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (96 48 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (96 48 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (48 48 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (48 48 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (48 48 (:REWRITE SET::IN-SET))
 (36 36 (:REWRITE VL::STRINGP-OF-CAR-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P))
 (36 36 (:REWRITE VL::STRINGP-OF-CAR-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P))
 (34 34 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (32 32 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (32 32 (:LINEAR LEN-WHEN-PREFIXP))
 (21 3 (:DEFINITION BETA-REDUCE-FULL-LIST))
 )
(PSEUDO-TERMP-BETA-REDUCE-INTRODUCE-VARS)
(PSEUDO-TERM-LISTP-BETA-REDUCE-INTRODUCE-VARS-LIST)
(SCAN-TERM-FOR-INTRODUCE-VAR
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(NAMES-FOR-INTRODUCE-VAR-TO-AVOID)
(STRING-LISTP-OF-NAMES-FOR-INTRODUCE-VAR-TO-AVOID
 (66 6 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-SYMBOL-NAME))
 (54 6 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (31 30 (:REWRITE DEFAULT-CAR))
 (30 30 (:TYPE-PRESCRIPTION STRINGP-SYMBOL-PACKAGE-NAME))
 (30 18 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (24 12 (:REWRITE SYMBOL-PACKAGE-NAME-PKG-WITNESS-NAME))
 (15 14 (:REWRITE DEFAULT-CDR))
 (14 14 (:REWRITE VL::STRINGP-OF-CAR-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P))
 (14 14 (:REWRITE VL::STRINGP-OF-CAR-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P))
 (12 12 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (12 12 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 2))
 (12 12 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 1))
 (12 12 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 2))
 (12 12 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 1))
 (12 6 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (9 9 (:REWRITE DEFAULT-SYMBOL-NAME))
 (6 6 (:REWRITE DEFAULT-PKG-IMPORTS))
 )
(UNIQUIFY-INTRODUCE-VAR-ALIST
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 1))
 (1 1 (:REWRITE DEFAULT-SYMBOL-NAME))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(VL-NAMEDB-P-OF-UNIQUIFY-INTRODUCE-VAR-ALIST
 (120 12 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (43 43 (:REWRITE DEFAULT-CAR))
 (36 36 (:TYPE-PRESCRIPTION SYMBOLP-PKG-WITNESS))
 (36 12 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (35 35 (:REWRITE DEFAULT-CDR))
 (24 24 (:TYPE-PRESCRIPTION VL::STRINGP-OF-VL-NAMEDB-PLAIN-NAME.FRESH-NAME))
 (24 24 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (24 12 (:REWRITE SYMBOL-PACKAGE-NAME-PKG-WITNESS-NAME))
 (24 12 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (17 17 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 2))
 (17 17 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 1))
 (17 17 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 2))
 (17 17 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 1))
 (12 12 (:REWRITE DEFAULT-PKG-IMPORTS))
 (9 9 (:REWRITE DEFAULT-SYMBOL-NAME))
 )
(SCAN-FOR-INTRODUCE-VAR)
(INTRODUCE-VARS-CP)
(EVAL-DISJOIN-OF-BETA-REDUCE-INTRODUCE-VARS-LIST
 (1602 5 (:DEFINITION PSEUDO-TERMP))
 (1118 42 (:REWRITE PSEUDO-TERM-LISTP-CDR))
 (427 35 (:DEFINITION LEN))
 (360 15 (:DEFINITION LENGTH))
 (294 174 (:REWRITE DEFAULT-CDR))
 (258 163 (:REWRITE DEFAULT-CAR))
 (250 250 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 2))
 (250 250 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 1))
 (250 250 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 2))
 (250 250 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 1))
 (222 21 (:REWRITE PSEUDO-TERMP-CAR))
 (163 41 (:REWRITE PSEUDO-TERMP-OPENER))
 (150 30 (:REWRITE GEN-EVAL-OF-QUOTE))
 (150 30 (:REWRITE GEN-EVAL-OF-LAMBDA))
 (150 30 (:REWRITE GEN-EVAL-OF-IF-CALL))
 (131 9 (:REWRITE PSEUDO-TERMP-CADR-FROM-PSEUDO-TERM-LISTP))
 (112 14 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (110 7 (:DEFINITION TRUE-LISTP))
 (94 94 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (70 35 (:REWRITE DEFAULT-+-2))
 (61 7 (:DEFINITION SYMBOL-LISTP))
 (45 30 (:REWRITE GEN-EVAL-DISJOIN-ATOM))
 (42 42 (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
 (42 28 (:REWRITE STR::CONSP-OF-EXPLODE))
 (38 38 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (36 3 (:DEFINITION BETA-REDUCE-INTRODUCE-VARS))
 (35 35 (:REWRITE DEFAULT-+-1))
 (30 30 (:REWRITE GEN-EVAL-OF-VARIABLE))
 (28 28 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (28 14 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (28 14 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (23 23 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (20 10 (:REWRITE STR::COERCE-TO-LIST-REMOVAL))
 (16 16 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (16 16 (:LINEAR LEN-WHEN-PREFIXP))
 (14 14 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (14 14 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (14 14 (:REWRITE VL::STRINGP-OF-CAR-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P))
 (14 14 (:REWRITE VL::STRINGP-OF-CAR-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P))
 (14 14 (:REWRITE SET::IN-SET))
 (14 14 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (12 3 (:DEFINITION BETA-REDUCE-FULL))
 )
(INTRODUCE-VARS-CP-CORRECT
 (63 9 (:DEFINITION BETA-REDUCE-INTRODUCE-VARS-LIST))
 (52 4 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (35 1 (:DEFINITION PSEUDO-TERM-LISTP))
 (32 4 (:REWRITE ALISTP-WHEN-HONS-DUPLICITY-ALIST-P))
 (28 28 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 2))
 (28 28 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 1))
 (28 28 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 2))
 (28 28 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 1))
 (20 4 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (20 4 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (20 4 (:REWRITE HONS-DUPLICITY-ALIST-P-WHEN-NOT-CONSP))
 (16 16 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (15 3 (:REWRITE GEN-EVAL-OF-QUOTE))
 (15 3 (:REWRITE GEN-EVAL-OF-LAMBDA))
 (15 3 (:REWRITE GEN-EVAL-OF-IF-CALL))
 (13 13 (:REWRITE DEFAULT-CAR))
 (12 12 (:REWRITE DEFAULT-CDR))
 (8 8 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (8 8 (:TYPE-PRESCRIPTION HONS-DUPLICITY-ALIST-P))
 (8 8 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (8 4 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (8 4 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (7 2 (:REWRITE PSEUDO-TERMP-OPENER))
 (7 1 (:REWRITE PSEUDO-TERM-LISTP-CDR))
 (6 1 (:REWRITE PSEUDO-TERMP-LIST-CDR))
 (6 1 (:REWRITE PSEUDO-TERMP-CAR))
 (4 4 (:TYPE-PRESCRIPTION PSEUDO-TERMP))
 (4 4 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (4 4 (:REWRITE PSEUDO-TERM-LISTP-OF-ATOM))
 (4 2 (:REWRITE GEN-EVAL-CONJOIN-CLAUSES-ATOM))
 (3 3 (:REWRITE GEN-EVAL-OF-VARIABLE))
 (2 2 (:TYPE-PRESCRIPTION SIMPLE-GENERALIZE-CP))
 (2 2 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (1 1 (:REWRITE GEN-EVAL-DISJOIN-ATOM))
 )
(RUN)
(ST-GET)
(MAKE-VAR-FOR-ST-GET-OF-INTRODUCE-VAR)
(MOVE-INTRODUCE-VARS-OVER-ST-GET
 (3 3 (:TYPE-PRESCRIPTION INTRODUCE-VAR))
 )
(PROP)
(EXAMPLE)
