(BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-INNER
 (148 3 (:DEFINITION TAKE))
 (116 14 (:REWRITE SET::IN-TAIL))
 (100 6 (:REWRITE TAKE-OF-TOO-MANY))
 (81 7 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (69 6 (:REWRITE TAKE-OF-LEN-FREE))
 (65 39 (:REWRITE DEFAULT-+-2))
 (65 10 (:REWRITE BITCOIN::EMPTY-BIP32-PATH-SFIX))
 (43 43 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (41 17 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (39 39 (:REWRITE DEFAULT-+-1))
 (33 16 (:REWRITE UBYTE32-LISTP-WHEN-SUBSETP-EQUAL))
 (32 24 (:REWRITE DEFAULT-<-2))
 (29 29 (:REWRITE DEFAULT-CDR))
 (26 7 (:REWRITE SET::NEVER-IN-EMPTY))
 (25 24 (:REWRITE DEFAULT-<-1))
 (24 24 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (23 23 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (23 23 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (21 8 (:REWRITE UBYTE32-LISTP-WHEN-NOT-CONSP))
 (12 6 (:REWRITE TAKE-WHEN-ATOM))
 (12 3 (:REWRITE ZP-OPEN))
 (12 1 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (9 9 (:TYPE-PRESCRIPTION BITCOIN::BIP32-PATH-SFIX))
 (9 3 (:REWRITE FOLD-CONSTS-IN-+))
 (7 1 (:REWRITE UBYTE32-LISTP-OF-CDR-WHEN-UBYTE32-LISTP))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 2 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
 (1 1 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (1 1 (:REWRITE SUBSETP-TRANS2))
 (1 1 (:REWRITE SUBSETP-TRANS))
 )
(BITCOIN::BOOLEANP-OF-BIP32-PATH-SET-CLOSEDP-EXEC-INNER)
(BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-INNER-OF-UBYTE32-LIST-FIX-CUR-PATH
 (1199 21 (:DEFINITION TAKE))
 (854 4 (:REWRITE TAKE-OF-TAKE-SPLIT))
 (719 46 (:REWRITE TAKE-OF-TOO-MANY))
 (584 92 (:DEFINITION LEN))
 (498 42 (:REWRITE TAKE-OF-LEN-FREE))
 (485 53 (:REWRITE SET::IN-TAIL))
 (316 52 (:REWRITE BITCOIN::EMPTY-BIP32-PATH-SFIX))
 (316 24 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (272 180 (:REWRITE DEFAULT-+-2))
 (211 89 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (191 164 (:REWRITE DEFAULT-<-2))
 (187 117 (:REWRITE DEFAULT-CDR))
 (184 184 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (180 180 (:REWRITE DEFAULT-+-1))
 (164 164 (:REWRITE DEFAULT-<-1))
 (145 25 (:REWRITE BITCOIN::BIP32-PATH-SFIX-WHEN-BIP32-PATH-SETP))
 (144 42 (:REWRITE TAKE-WHEN-ATOM))
 (129 13 (:REWRITE BITCOIN::EMPTY-PATH-IN-CLOSED-NONEMPTY-BIP32-PATH-SET))
 (123 123 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (123 123 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (122 122 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (112 25 (:REWRITE ZP-OPEN))
 (101 29 (:REWRITE SET::NEVER-IN-EMPTY))
 (97 4 (:DEFINITION BINARY-APPEND))
 (83 33 (:REWRITE FOLD-CONSTS-IN-+))
 (80 25 (:REWRITE DEFAULT-CAR))
 (48 8 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (44 44 (:TYPE-PRESCRIPTION TRUE-LISTP-TAKE))
 (44 16 (:REWRITE CONSP-OF-TAKE))
 (36 4 (:REWRITE REPEAT-WHEN-ZP))
 (36 4 (:REWRITE COMMUTATIVITY-2-OF-+))
 (32 8 (:REWRITE LEN-OF-TAKE))
 (29 12 (:REWRITE UBYTE32-LISTP-WHEN-NOT-CONSP))
 (29 4 (:REWRITE CAR-OF-TAKE))
 (24 24 (:REWRITE UBYTE32-LISTP-WHEN-SUBSETP-EQUAL))
 (16 4 (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
 (16 4 (:REWRITE BITCOIN::BIP32-PATH-SETP-OF-TAIL-WHEN-BIP32-PATH-SETP))
 (8 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:TYPE-PRESCRIPTION ZP))
 (3 3 (:REWRITE-QUOTED-CONSTANT UBYTE32-LIST-FIX-UNDER-UBYTE32-LIST-EQUIV))
 )
(BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-INNER-UBYTE32-LIST-EQUIV-CONGRUENCE-ON-CUR-PATH)
(BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-INNER-OF-BIP32-PATH-SFIX-ALL-PATHS
 (384 42 (:REWRITE SET::IN-TAIL))
 (251 42 (:REWRITE BITCOIN::EMPTY-BIP32-PATH-SFIX))
 (241 19 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (158 70 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (150 3 (:DEFINITION TAKE))
 (149 149 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (131 15 (:REWRITE UBYTE32-LIST-FIX-WHEN-UBYTE32-LISTP))
 (122 12 (:REWRITE BITCOIN::EMPTY-PATH-IN-CLOSED-NONEMPTY-BIP32-PATH-SET))
 (107 19 (:DEFINITION LEN))
 (99 6 (:REWRITE TAKE-OF-TOO-MANY))
 (88 88 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (80 23 (:REWRITE SET::NEVER-IN-EMPTY))
 (69 6 (:REWRITE TAKE-OF-LEN-FREE))
 (50 31 (:REWRITE DEFAULT-+-2))
 (35 15 (:REWRITE UBYTE32-LISTP-WHEN-NOT-CONSP))
 (31 31 (:REWRITE DEFAULT-+-1))
 (31 22 (:REWRITE DEFAULT-<-2))
 (30 30 (:REWRITE UBYTE32-LISTP-WHEN-SUBSETP-EQUAL))
 (22 22 (:REWRITE DEFAULT-CDR))
 (22 22 (:REWRITE DEFAULT-<-1))
 (18 6 (:DEFINITION NFIX))
 (17 17 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (17 17 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (16 4 (:REWRITE BITCOIN::BIP32-PATH-SETP-OF-TAIL-WHEN-BIP32-PATH-SETP))
 (15 15 (:REWRITE BITCOIN::UBYTE32-LISTP-WHEN-IN-BIP32-PATH-SETP-BINDS-FREE-X))
 (12 6 (:REWRITE TAKE-WHEN-ATOM))
 (12 3 (:REWRITE ZP-OPEN))
 (11 11 (:REWRITE-QUOTED-CONSTANT UBYTE32-LIST-FIX-UNDER-UBYTE32-LIST-EQUIV))
 (9 3 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:TYPE-PRESCRIPTION TRUE-LISTP-TAKE))
 (6 6 (:TYPE-PRESCRIPTION NFIX))
 (3 3 (:REWRITE DEFAULT-CAR))
 )
(BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-INNER-BIP32-PATH-SET-EQUIV-CONGRUENCE-ON-ALL-PATHS)
(BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-OUTER)
(BITCOIN::BOOLEANP-OF-BIP32-PATH-SET-CLOSEDP-EXEC-OUTER)
(BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-OUTER-OF-BIP32-PATH-SFIX-CUR-PATHS
 (236 2 (:DEFINITION BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-INNER))
 (180 2 (:DEFINITION BUTLAST))
 (100 2 (:DEFINITION TAKE))
 (66 4 (:REWRITE TAKE-OF-TOO-MANY))
 (58 10 (:DEFINITION LEN))
 (48 48 (:TYPE-PRESCRIPTION LEN))
 (46 4 (:REWRITE TAKE-OF-LEN-FREE))
 (28 18 (:REWRITE DEFAULT-+-2))
 (22 10 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (18 18 (:REWRITE DEFAULT-+-1))
 (18 3 (:REWRITE BITCOIN::BIP32-PATH-SFIX-WHEN-BIP32-PATH-SETP))
 (16 12 (:REWRITE DEFAULT-<-2))
 (16 4 (:REWRITE SET::IN-TAIL))
 (12 12 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (12 12 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE DEFAULT-<-1))
 (12 4 (:DEFINITION NFIX))
 (10 10 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (8 8 (:TYPE-PRESCRIPTION SET::IN-TYPE))
 (8 8 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (8 8 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (8 4 (:REWRITE TAKE-WHEN-ATOM))
 (8 4 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (8 2 (:REWRITE ZP-OPEN))
 (8 2 (:REWRITE UBYTE32-LIST-FIX-WHEN-UBYTE32-LISTP))
 (6 2 (:REWRITE SET::NEVER-IN-EMPTY))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (6 2 (:REWRITE COMMUTATIVITY-OF-+))
 (4 4 (:TYPE-PRESCRIPTION NFIX))
 (4 4 (:REWRITE-QUOTED-CONSTANT UBYTE32-LIST-FIX-UNDER-UBYTE32-LIST-EQUIV))
 (2 2 (:TYPE-PRESCRIPTION UBYTE32-LISTP))
 (2 2 (:TYPE-PRESCRIPTION BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-INNER))
 (2 2 (:REWRITE BITCOIN::UBYTE32-LISTP-WHEN-IN-BIP32-PATH-SETP-BINDS-FREE-X))
 (2 2 (:REWRITE BITCOIN::UBYTE32-LISTP-OF-HEAD-WHEN-BIP32-PATH-SETP))
 (2 2 (:REWRITE SET::IN-TAIL-OR-HEAD))
 (2 2 (:REWRITE SET::HEAD-WHEN-EMPTY))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:DEFINITION NOT))
 )
(BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-OUTER-BIP32-PATH-SET-EQUIV-CONGRUENCE-ON-CUR-PATHS)
(BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-OUTER-OF-BIP32-PATH-SFIX-ALL-PATHS
 (180 2 (:DEFINITION BUTLAST))
 (100 2 (:DEFINITION TAKE))
 (66 4 (:REWRITE TAKE-OF-TOO-MANY))
 (58 10 (:DEFINITION LEN))
 (48 48 (:TYPE-PRESCRIPTION LEN))
 (46 4 (:REWRITE TAKE-OF-LEN-FREE))
 (30 12 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (28 18 (:REWRITE DEFAULT-+-2))
 (26 8 (:REWRITE SET::IN-TAIL))
 (19 4 (:REWRITE BITCOIN::BIP32-PATH-SFIX-WHEN-BIP32-PATH-SETP))
 (18 18 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (18 18 (:REWRITE DEFAULT-+-1))
 (16 12 (:REWRITE DEFAULT-<-2))
 (14 14 (:TYPE-PRESCRIPTION SET::IN-TYPE))
 (12 12 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE DEFAULT-<-1))
 (12 4 (:DEFINITION NFIX))
 (8 8 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (8 8 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (8 4 (:REWRITE TAKE-WHEN-ATOM))
 (8 4 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (8 2 (:REWRITE ZP-OPEN))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (6 2 (:REWRITE COMMUTATIVITY-OF-+))
 (4 4 (:TYPE-PRESCRIPTION NFIX))
 (4 4 (:REWRITE-QUOTED-CONSTANT UBYTE32-LIST-FIX-UNDER-UBYTE32-LIST-EQUIV))
 (4 4 (:REWRITE BITCOIN::UBYTE32-LISTP-WHEN-IN-BIP32-PATH-SETP-BINDS-FREE-X))
 (4 4 (:REWRITE SET::IN-TAIL-OR-HEAD))
 (4 4 (:REWRITE SET::HEAD-WHEN-EMPTY))
 (2 2 (:TYPE-PRESCRIPTION BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-INNER))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:DEFINITION NOT))
 )
(BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-OUTER-BIP32-PATH-SET-EQUIV-CONGRUENCE-ON-ALL-PATHS)
(BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC)
(BITCOIN::BOOLEANP-OF-BIP32-PATH-SET-CLOSEDP-EXEC)
(BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-OF-BIP32-PATH-SFIX-PATHS
 (6 1 (:REWRITE BITCOIN::BIP32-PATH-SFIX-WHEN-BIP32-PATH-SETP))
 (3 1 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (2 2 (:TYPE-PRESCRIPTION BITCOIN::BIP32-PATH-SETP))
 (2 2 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 )
(BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-BIP32-PATH-SET-EQUIV-CONGRUENCE-ON-PATHS)
(BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-INNER-IMPLIES-INNER-MATRIX
 (110 4 (:REWRITE LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (78 4 (:REWRITE SUBLISTP-WHEN-PREFIXP))
 (53 23 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (50 5 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (50 4 (:REWRITE LEN-WHEN-PREFIXP))
 (45 15 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (30 30 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (30 5 (:REWRITE TRUE-LISTP-WHEN-ATOM))
 (27 4 (:REWRITE BITCOIN::EMPTY-PATH-IN-CLOSED-NONEMPTY-BIP32-PATH-SET))
 (22 17 (:REWRITE LEN-WHEN-ATOM))
 (21 21 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (20 15 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (19 19 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (16 14 (:REWRITE LIST-EQUIV-WHEN-ATOM-RIGHT))
 (16 14 (:REWRITE LIST-EQUIV-WHEN-ATOM-LEFT))
 (14 14 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (14 14 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (14 14 (:LINEAR LEN-WHEN-PREFIXP))
 (12 2 (:REWRITE UBYTE32-LISTP-WHEN-NOT-CONSP))
 (10 10 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (10 5 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (10 5 (:REWRITE BITCOIN::SETP-WHEN-BIP32-PATH-SETP))
 (10 5 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (8 8 (:TYPE-PRESCRIPTION SUBLISTP))
 (8 4 (:REWRITE SUBLISTP-WHEN-ATOM-RIGHT))
 (8 4 (:REWRITE SUBLISTP-WHEN-ATOM-LEFT))
 (8 4 (:REWRITE DEFAULT-<-2))
 (8 4 (:REWRITE DEFAULT-<-1))
 (7 7 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (7 7 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (7 7 (:REWRITE CONSP-BY-LEN))
 (7 7 (:LINEAR INDEX-OF-<-LEN))
 (5 5 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (5 5 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (5 5 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (5 5 (:REWRITE TRUE-LISTP-WHEN-DAB-DIGIT-LISTP))
 (5 5 (:REWRITE SET::IN-SET))
 (5 2 (:REWRITE BITCOIN::BIP32-PATH-SETP-OF-TAIL-WHEN-BIP32-PATH-SETP))
 (4 4 (:REWRITE UBYTE32-LISTP-WHEN-SUBSETP-EQUAL))
 (4 4 (:REWRITE SUBLISTP-COMPLETE))
 (2 2 (:REWRITE-QUOTED-CONSTANT UBYTE32-LIST-FIX-UNDER-UBYTE32-LIST-EQUIV))
 (2 1 (:REWRITE |(< 0 (len x))|))
 )
(BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-OUTER-IMPLIES-OUTER-MATRIX
 (600 12 (:DEFINITION TAKE))
 (396 24 (:REWRITE TAKE-OF-TOO-MANY))
 (348 60 (:DEFINITION LEN))
 (276 24 (:REWRITE TAKE-OF-LEN-FREE))
 (168 108 (:REWRITE DEFAULT-+-2))
 (146 41 (:REWRITE SET::IN-TAIL))
 (108 108 (:REWRITE DEFAULT-+-1))
 (96 72 (:REWRITE DEFAULT-<-2))
 (94 40 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (78 13 (:REWRITE BITCOIN::BIP32-PATH-SFIX-WHEN-BIP32-PATH-SETP))
 (72 72 (:REWRITE DEFAULT-CDR))
 (72 72 (:REWRITE DEFAULT-<-1))
 (72 24 (:DEFINITION NFIX))
 (55 25 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (54 54 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (48 48 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (48 48 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (48 24 (:REWRITE TAKE-WHEN-ATOM))
 (48 12 (:REWRITE ZP-OPEN))
 (36 12 (:REWRITE FOLD-CONSTS-IN-+))
 (24 24 (:TYPE-PRESCRIPTION NFIX))
 (24 24 (:REWRITE-QUOTED-CONSTANT UBYTE32-LIST-FIX-UNDER-UBYTE32-LIST-EQUIV))
 (12 12 (:REWRITE DEFAULT-CAR))
 (7 7 (:REWRITE SET::HEAD-WHEN-EMPTY))
 )
(BITCOIN::BIP32-PATH-SET-CLOSEDP-WHEN-BIP32-PATH-SET-CLOSEDP-EXEC
 (21 2 (:REWRITE SET::IN-TAIL))
 (20 2 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (17 1 (:DEFINITION TRUE-LISTP))
 (15 1 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (13 2 (:REWRITE BITCOIN::EMPTY-BIP32-PATH-SFIX))
 (10 4 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (9 9 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (6 6 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (6 1 (:REWRITE BITCOIN::BIP32-PATH-SFIX-WHEN-BIP32-PATH-SETP))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (4 2 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (4 2 (:REWRITE BITCOIN::SETP-WHEN-BIP32-PATH-SETP))
 (4 2 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (4 1 (:REWRITE SET::NEVER-IN-EMPTY))
 (2 2 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-DAB-DIGIT-LISTP))
 (2 2 (:REWRITE SET::IN-SET))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (1 1 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 )
(BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-INNER-WHEN-BIP32-PATH-SET-CLOSEDP
 (1299 23 (:DEFINITION TAKE))
 (789 49 (:REWRITE TAKE-OF-TOO-MANY))
 (703 117 (:DEFINITION LEN))
 (681 3 (:REWRITE TAKE-OF-TAKE-SPLIT))
 (618 46 (:REWRITE TAKE-OF-LEN-FREE))
 (325 208 (:REWRITE DEFAULT-+-2))
 (324 76 (:REWRITE SET::IN-TAIL))
 (219 184 (:REWRITE DEFAULT-<-2))
 (216 3 (:REWRITE UBYTE32-LIST-FIX-OF-TAKE))
 (208 208 (:REWRITE DEFAULT-+-1))
 (184 184 (:REWRITE DEFAULT-<-1))
 (164 143 (:REWRITE DEFAULT-CDR))
 (160 160 (:LINEAR LEN-WHEN-PREFIXP))
 (152 152 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (133 31 (:REWRITE ZP-OPEN))
 (121 121 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (121 121 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (107 39 (:REWRITE SET::NEVER-IN-EMPTY))
 (106 6 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
 (105 37 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (98 46 (:REWRITE TAKE-WHEN-ATOM))
 (84 32 (:REWRITE FOLD-CONSTS-IN-+))
 (84 6 (:REWRITE PREFIXP-WHEN-PREFIXP))
 (72 3 (:DEFINITION BINARY-APPEND))
 (49 49 (:TYPE-PRESCRIPTION NFIX))
 (48 16 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (46 10 (:REWRITE BITCOIN::EMPTY-PATH-IN-CLOSED-NONEMPTY-BIP32-PATH-SET))
 (45 6 (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
 (43 14 (:REWRITE CONSP-OF-TAKE))
 (40 10 (:REWRITE LEN-OF-TAKE))
 (36 6 (:REWRITE APPEND-WHEN-NOT-CONSP))
 (32 32 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (32 26 (:REWRITE DEFAULT-CAR))
 (27 3 (:REWRITE REPEAT-WHEN-ZP))
 (27 3 (:REWRITE CONSP-OF-REPEAT))
 (27 3 (:REWRITE COMMUTATIVITY-2-OF-+))
 (24 24 (:TYPE-PRESCRIPTION BITCOIN::BIP32-PATH-SFIX))
 (20 2 (:REWRITE LIST-EQUIV-WHEN-ATOM-RIGHT))
 (18 3 (:REWRITE CAR-OF-TAKE))
 (12 12 (:REWRITE-QUOTED-CONSTANT UBYTE32-LIST-FIX-UNDER-UBYTE32-LIST-EQUIV))
 (12 3 (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
 (6 6 (:TYPE-PRESCRIPTION REPEAT))
 (6 6 (:REWRITE PREFIXP-TRANSITIVE . 2))
 (6 6 (:REWRITE PREFIXP-TRANSITIVE . 1))
 (6 6 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
 (6 6 (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:REWRITE BITCOIN::BIP32-PATH-SETP-OF-TAIL-WHEN-BIP32-PATH-SETP))
 (4 2 (:REWRITE LIST-EQUIV-WHEN-ATOM-LEFT))
 (3 3 (:TYPE-PRESCRIPTION ZP))
 (2 2 (:TYPE-PRESCRIPTION LIST-EQUIV))
 (1 1 (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
 (1 1 (:REWRITE LIST-EQUIV-OF-NIL-RIGHT))
 )
(BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-OUTER-WHEN-BIP32-PATH-SET-CLOSEDP
 (45 15 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (30 30 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (15 5 (:REWRITE SET::EMPTY-SUBSET-2))
 (6 6 (:REWRITE BITCOIN::UBYTE32-LISTP-WHEN-IN-BIP32-PATH-SETP-BINDS-FREE-X))
 (6 6 (:REWRITE SET::IN-TAIL-OR-HEAD))
 (6 6 (:REWRITE SET::HEAD-WHEN-EMPTY))
 (4 4 (:REWRITE SET::PICK-A-POINT-SUBSET-CONSTRAINT-HELPER))
 (3 3 (:REWRITE SET::TAIL-WHEN-EMPTY))
 )
(BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-WHEN-BIP32-PATH-SET-CLOSEDP)
(BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-IS-BIP32-PATH-SET-CLOSEDP)
(BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-CONSTRAINT1
 (81 9 (:REWRITE SET::IN-TAIL))
 (60 4 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (52 8 (:REWRITE BITCOIN::EMPTY-BIP32-PATH-SFIX))
 (40 4 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (34 2 (:DEFINITION TRUE-LISTP))
 (32 32 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (22 10 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (20 20 (:TYPE-PRESCRIPTION BITCOIN::BIP32-PATH-SETP))
 (17 17 (:TYPE-PRESCRIPTION BITCOIN::BIP32-PATH-SFIX))
 (17 5 (:REWRITE SET::NEVER-IN-EMPTY))
 (16 4 (:DEFINITION NOT))
 (12 12 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (12 2 (:REWRITE BITCOIN::BIP32-PATH-SFIX-WHEN-BIP32-PATH-SETP))
 (8 8 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (8 4 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (8 4 (:REWRITE BITCOIN::SETP-WHEN-BIP32-PATH-SETP))
 (8 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (4 4 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (4 4 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (4 4 (:REWRITE TRUE-LISTP-WHEN-DAB-DIGIT-LISTP))
 (4 4 (:REWRITE SET::IN-SET))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (2 2 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 )
(BITCOIN::BIP32-PATH-SET-CLOSEDP-EXEC-CONSTRAINT2
 (20 2 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (20 2 (:REWRITE SET::IN-TAIL))
 (17 1 (:DEFINITION TRUE-LISTP))
 (15 1 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (13 2 (:REWRITE BITCOIN::EMPTY-BIP32-PATH-SFIX))
 (12 2 (:REWRITE BITCOIN::BIP32-PATH-SFIX-WHEN-BIP32-PATH-SETP))
 (10 4 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (9 9 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (9 9 (:TYPE-PRESCRIPTION BITCOIN::BIP32-PATH-SETP))
 (6 6 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (4 2 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (4 2 (:REWRITE BITCOIN::SETP-WHEN-BIP32-PATH-SETP))
 (4 2 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (4 1 (:REWRITE SET::NEVER-IN-EMPTY))
 (3 3 (:TYPE-PRESCRIPTION BITCOIN::BIP32-PATH-SFIX))
 (2 2 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-UNSIGNED-BYTE-LISTP))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-SIGNED-BYTE-LISTP))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-DAB-DIGIT-LISTP))
 (2 2 (:REWRITE SET::IN-SET))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (1 1 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 )
(BITCOIN::BIP32-VALID-KEYS-P-EXEC)
(BITCOIN::BOOLEANP-OF-BIP32-VALID-KEYS-P-EXEC)
(BITCOIN::BIP32-VALID-KEYS-P-EXEC-OF-BIP32-EXT-KEY-FIX-ROOT
 (48 16 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (32 32 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (18 6 (:REWRITE BITCOIN::BIP32-EXT-KEY-FIX-WHEN-BIP32-EXT-KEY-P))
 (12 12 (:TYPE-PRESCRIPTION BITCOIN::BIP32-EXT-KEY-P))
 (10 10 (:REWRITE SET::IN-TAIL-OR-HEAD))
 (10 10 (:REWRITE SET::HEAD-WHEN-EMPTY))
 (4 4 (:REWRITE SET::TAIL-WHEN-EMPTY))
 )
(BITCOIN::BIP32-VALID-KEYS-P-EXEC-BIP32-EXT-KEY-EQUIV-CONGRUENCE-ON-ROOT)
(BITCOIN::BIP32-VALID-KEYS-P-EXEC-OF-BIP32-PATH-SFIX-PATHS
 (14 6 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (8 8 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (6 1 (:REWRITE BITCOIN::BIP32-PATH-SFIX-WHEN-BIP32-PATH-SETP))
 (2 2 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (2 2 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (2 2 (:REWRITE SET::IN-TAIL-OR-HEAD))
 (2 2 (:REWRITE SET::HEAD-WHEN-EMPTY))
 )
(BITCOIN::BIP32-VALID-KEYS-P-EXEC-BIP32-PATH-SET-EQUIV-CONGRUENCE-ON-PATHS)
(BITCOIN::BIP32-VALID-KEYS-P-EXEC-MEMBER
 (50 17 (:REWRITE SET::IN-TAIL))
 (46 16 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (30 30 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (19 13 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (7 7 (:REWRITE SET::HEAD-WHEN-EMPTY))
 (6 1 (:REWRITE BITCOIN::BIP32-PATH-SFIX-WHEN-BIP32-PATH-SETP))
 )
(BITCOIN::BIP32-VALID-KEYS-P-WHEN-BIP32-VALID-KEYS-P-EXEC
 (22 3 (:REWRITE SET::IN-TAIL))
 (15 1 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (13 2 (:REWRITE BITCOIN::EMPTY-BIP32-PATH-SFIX))
 (12 2 (:REWRITE BITCOIN::BIP32-PATH-SFIX-WHEN-BIP32-PATH-SETP))
 (10 4 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (7 7 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (7 7 (:TYPE-PRESCRIPTION BITCOIN::BIP32-PATH-SETP))
 (6 6 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (4 1 (:REWRITE SET::NEVER-IN-EMPTY))
 )
(BITCOIN::BIP32-VALID-KEYS-P-EXEC-WHEN-BIP32-VALID-KEYS-P
 (36 12 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (24 24 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (22 6 (:REWRITE BITCOIN::BIP32-VALID-KEYS-P-EXEC-MEMBER))
 (6 6 (:REWRITE SET::IN-TAIL-OR-HEAD))
 (6 6 (:REWRITE SET::HEAD-WHEN-EMPTY))
 (3 3 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (2 2 (:REWRITE SET::HEAD-UNIQUE))
 (2 2 (:REWRITE BITCOIN::BIP32-PATH-SETP-OF-TAIL-WHEN-BIP32-PATH-SETP))
 )
(BITCOIN::BIP32-VALID-KEYS-P-EXEC-IS-BIP32-VALID-KEYS-P)
(BITCOIN::BIP32-VALID-KEYS-P-EXEC-CONSTRAINT1
 (40 4 (:REWRITE SET::IN-TAIL))
 (30 2 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (26 4 (:REWRITE BITCOIN::EMPTY-BIP32-PATH-SFIX))
 (14 14 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (14 6 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (12 2 (:REWRITE BITCOIN::BIP32-PATH-SFIX-WHEN-BIP32-PATH-SETP))
 (10 10 (:TYPE-PRESCRIPTION BITCOIN::BIP32-PATH-SETP))
 (8 8 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (8 2 (:REWRITE SET::NEVER-IN-EMPTY))
 (2 2 (:REWRITE BITCOIN::BIP32-VALID-KEYS-P-EXEC-MEMBER))
 )
(BITCOIN::BIP32-VALID-KEYS-P-EXEC-CONSTRAINT2
 (20 2 (:REWRITE SET::IN-TAIL))
 (15 1 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (13 2 (:REWRITE BITCOIN::EMPTY-BIP32-PATH-SFIX))
 (7 7 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (7 3 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (6 1 (:REWRITE BITCOIN::BIP32-PATH-SFIX-WHEN-BIP32-PATH-SETP))
 (5 5 (:TYPE-PRESCRIPTION BITCOIN::BIP32-PATH-SETP))
 (4 4 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (4 1 (:REWRITE SET::NEVER-IN-EMPTY))
 (1 1 (:REWRITE BITCOIN::BIP32-VALID-KEYS-P-EXEC-MEMBER))
 )
(BITCOIN::BIP32-VALID-DEPTHS-P-EXEC)
(BITCOIN::BOOLEANP-OF-BIP32-VALID-DEPTHS-P-EXEC)
(BITCOIN::BIP32-VALID-DEPTHS-P-EXEC-OF-BYTE-FIX-INIT
 (70 10 (:DEFINITION LEN))
 (48 48 (:REWRITE BYTEP-WHEN-MEMBER-EQUAL-OF-BYTE-LISTP))
 (48 16 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (40 20 (:REWRITE DEFAULT-+-2))
 (32 32 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (30 20 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE SET::IN-TAIL-OR-HEAD))
 (10 10 (:REWRITE SET::HEAD-WHEN-EMPTY))
 (10 10 (:REWRITE DEFAULT-CDR))
 (10 10 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (10 10 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (4 4 (:REWRITE SET::TAIL-WHEN-EMPTY))
 )
(BITCOIN::BIP32-VALID-DEPTHS-P-EXEC-BYTE-EQUIV-CONGRUENCE-ON-INIT)
(BITCOIN::BIP32-VALID-DEPTHS-P-EXEC-OF-BIP32-PATH-SFIX-PATHS
 (14 6 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (14 2 (:DEFINITION LEN))
 (10 2 (:REWRITE BYTE-FIX-WHEN-BYTEP))
 (8 8 (:TYPE-PRESCRIPTION LEN))
 (8 8 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (8 8 (:REWRITE BYTEP-WHEN-MEMBER-EQUAL-OF-BYTE-LISTP))
 (8 4 (:REWRITE DEFAULT-+-2))
 (6 6 (:TYPE-PRESCRIPTION BITCOIN::NATP-OF-BYTE-FIX))
 (6 4 (:REWRITE DEFAULT-+-1))
 (6 1 (:REWRITE BITCOIN::BIP32-PATH-SFIX-WHEN-BIP32-PATH-SETP))
 (4 4 (:TYPE-PRESCRIPTION BYTEP))
 (2 2 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (2 2 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (2 2 (:REWRITE SET::IN-TAIL-OR-HEAD))
 (2 2 (:REWRITE SET::HEAD-WHEN-EMPTY))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (2 2 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 )
(BITCOIN::BIP32-VALID-DEPTHS-P-EXEC-BIP32-PATH-SET-EQUIV-CONGRUENCE-ON-PATHS)
(BITCOIN::BIP32-VALID-DEPTHS-P-EXEC-MEMBER
 (84 12 (:DEFINITION LEN))
 (60 12 (:REWRITE BYTE-FIX-WHEN-BYTEP))
 (50 17 (:REWRITE SET::IN-TAIL))
 (48 48 (:REWRITE BYTEP-WHEN-MEMBER-EQUAL-OF-BYTE-LISTP))
 (48 24 (:REWRITE DEFAULT-+-2))
 (46 16 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (36 24 (:REWRITE DEFAULT-+-1))
 (30 30 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (19 13 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (12 12 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (12 12 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (7 7 (:REWRITE SET::HEAD-WHEN-EMPTY))
 (6 1 (:REWRITE BITCOIN::BIP32-PATH-SFIX-WHEN-BIP32-PATH-SETP))
 )
(BITCOIN::BIP32-VALID-DEPTHS-P-WHEN-BIP32-VALID-DEPTHS-P-EXEC
 (20 2 (:REWRITE SET::IN-TAIL))
 (15 1 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (13 2 (:REWRITE BITCOIN::EMPTY-BIP32-PATH-SFIX))
 (7 7 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (7 3 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (7 1 (:DEFINITION LEN))
 (6 1 (:REWRITE BITCOIN::BIP32-PATH-SFIX-WHEN-BIP32-PATH-SETP))
 (5 5 (:TYPE-PRESCRIPTION BITCOIN::BIP32-PATH-SETP))
 (5 1 (:REWRITE BYTE-FIX-WHEN-BYTEP))
 (4 4 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (4 2 (:REWRITE DEFAULT-+-2))
 (4 1 (:REWRITE SET::NEVER-IN-EMPTY))
 (3 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:TYPE-PRESCRIPTION BYTEP))
 (2 2 (:REWRITE BYTEP-WHEN-MEMBER-EQUAL-OF-BYTE-LISTP))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (1 1 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 )
(BITCOIN::BIP32-VALID-DEPTHS-P-EXEC-WHEN-BIP32-VALID-DEPTHS-P
 (42 6 (:DEFINITION LEN))
 (36 12 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (30 6 (:REWRITE BYTE-FIX-WHEN-BYTEP))
 (24 24 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (24 12 (:REWRITE DEFAULT-+-2))
 (22 6 (:REWRITE BITCOIN::BIP32-VALID-DEPTHS-P-EXEC-MEMBER))
 (18 12 (:REWRITE DEFAULT-+-1))
 (12 12 (:REWRITE BYTEP-WHEN-MEMBER-EQUAL-OF-BYTE-LISTP))
 (6 6 (:REWRITE SET::IN-TAIL-OR-HEAD))
 (6 6 (:REWRITE SET::HEAD-WHEN-EMPTY))
 (6 6 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (6 6 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (3 3 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (2 2 (:REWRITE SET::HEAD-UNIQUE))
 (2 2 (:REWRITE BITCOIN::BIP32-PATH-SETP-OF-TAIL-WHEN-BIP32-PATH-SETP))
 )
(BITCOIN::BIP32-VALID-DEPTHS-P-EXEC-IS-BIP32-VALID-DEPTHS-P)
(BITCOIN::BIP32-VALID-DEPTHS-P-EXEC-CONSTRAINT1
 (40 4 (:REWRITE SET::IN-TAIL))
 (30 2 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (26 4 (:REWRITE BITCOIN::EMPTY-BIP32-PATH-SFIX))
 (14 14 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (14 6 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (14 2 (:DEFINITION LEN))
 (12 2 (:REWRITE BITCOIN::BIP32-PATH-SFIX-WHEN-BIP32-PATH-SETP))
 (10 10 (:TYPE-PRESCRIPTION BITCOIN::BIP32-PATH-SETP))
 (10 10 (:REWRITE BYTEP-WHEN-MEMBER-EQUAL-OF-BYTE-LISTP))
 (10 2 (:REWRITE BYTE-FIX-WHEN-BYTEP))
 (8 8 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (8 4 (:REWRITE DEFAULT-+-2))
 (8 2 (:REWRITE SET::NEVER-IN-EMPTY))
 (8 2 (:DEFINITION NOT))
 (6 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE BITCOIN::BIP32-VALID-DEPTHS-P-EXEC-MEMBER))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (2 2 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 )
(BITCOIN::BIP32-VALID-DEPTHS-P-EXEC-CONSTRAINT2
 (20 2 (:REWRITE SET::IN-TAIL))
 (15 1 (:REWRITE SET::TAIL-WHEN-EMPTY))
 (13 2 (:REWRITE BITCOIN::EMPTY-BIP32-PATH-SFIX))
 (7 7 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (7 3 (:REWRITE BITCOIN::BIP32-PATH-SETP-WHEN-BIP32-INDEX-TREEP))
 (7 1 (:DEFINITION LEN))
 (6 1 (:REWRITE BITCOIN::BIP32-PATH-SFIX-WHEN-BIP32-PATH-SETP))
 (5 5 (:TYPE-PRESCRIPTION BITCOIN::BIP32-PATH-SETP))
 (5 1 (:REWRITE BYTE-FIX-WHEN-BYTEP))
 (4 4 (:TYPE-PRESCRIPTION BITCOIN::BIP32-INDEX-TREEP))
 (4 2 (:REWRITE DEFAULT-+-2))
 (4 1 (:REWRITE SET::NEVER-IN-EMPTY))
 (3 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE BYTEP-WHEN-MEMBER-EQUAL-OF-BYTE-LISTP))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 2))
 (1 1 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-SYMBOL-SYMBOL-ALISTP . 1))
 (1 1 (:REWRITE BITCOIN::BIP32-VALID-DEPTHS-P-EXEC-MEMBER))
 )
