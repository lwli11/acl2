(YUL::JSON-TO-IRS
 (15078 536 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-TRUE-LIST-LISTP))
 (11108 536 (:DEFINITION TRUE-LIST-LISTP))
 (10944 1224 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (8879 7246 (:REWRITE DEFAULT-CAR))
 (7692 612 (:DEFINITION TRUE-LISTP))
 (5422 4546 (:REWRITE DEFAULT-CDR))
 (4940 268 (:DEFINITION JSON::TOP-JMEMBER-LISTP))
 (3752 268 (:DEFINITION JSON::TOP-JMEMBERP))
 (3202 536 (:REWRITE TRUE-LIST-LISTP-OF-CDR-WHEN-TRUE-LIST-LISTP))
 (2448 2448 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (2448 1224 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (2448 1224 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (1724 268 (:DEFINITION LEN))
 (1572 804 (:REWRITE TRUE-LIST-LISTP-WHEN-NOT-CONSP))
 (1224 1224 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (1224 1224 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (1224 1224 (:REWRITE SET::IN-SET))
 (1072 1072 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (536 268 (:REWRITE DEFAULT-+-2))
 (268 268 (:REWRITE DEFAULT-+-1))
 (73 73 (:REWRITE JSON::MEMBER-LISTP-WHEN-NOT-CONSP))
 )
(YUL::BOOLEANP-OF-JSON-TO-IRS.ERP
 (1182 33 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-TRUE-LIST-LISTP))
 (999 27 (:DEFINITION TRUE-LIST-LISTP))
 (893 518 (:REWRITE DEFAULT-CAR))
 (660 72 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (645 33 (:REWRITE TRUE-LIST-LISTP-OF-CDR-WHEN-TRUE-LIST-LISTP))
 (498 36 (:DEFINITION TRUE-LISTP))
 (418 289 (:REWRITE DEFAULT-CDR))
 (320 80 (:REWRITE JSON::VALUEP-WHEN-MAYBE-VALUEP))
 (228 12 (:DEFINITION JSON::TOP-JMEMBER-LISTP))
 (200 40 (:REWRITE JSON::MAYBE-VALUEP-WHEN-VALUEP))
 (168 12 (:DEFINITION JSON::TOP-JMEMBERP))
 (144 144 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (144 72 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (144 72 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (120 120 (:TYPE-PRESCRIPTION JSON::MAYBE-VALUEP))
 (111 51 (:REWRITE TRUE-LIST-LISTP-WHEN-NOT-CONSP))
 (78 12 (:DEFINITION LEN))
 (72 72 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (72 72 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (72 72 (:REWRITE SET::IN-SET))
 (24 24 (:LINEAR LEN-WHEN-PREFIXP))
 (24 12 (:REWRITE DEFAULT-+-2))
 (12 12 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE JSON::MEMBER-LISTP-WHEN-NOT-CONSP))
 )
(YUL::CONSP-OF-JSON-TO-IRS.IRS-PAIR
 (456 16 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-TRUE-LIST-LISTP))
 (363 311 (:REWRITE DEFAULT-CAR))
 (334 16 (:DEFINITION TRUE-LIST-LISTP))
 (324 36 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (228 18 (:DEFINITION TRUE-LISTP))
 (215 182 (:REWRITE DEFAULT-CDR))
 (148 8 (:DEFINITION JSON::TOP-JMEMBER-LISTP))
 (112 8 (:DEFINITION JSON::TOP-JMEMBERP))
 (98 16 (:REWRITE TRUE-LIST-LISTP-OF-CDR-WHEN-TRUE-LIST-LISTP))
 (72 72 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (72 36 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (72 36 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (52 8 (:DEFINITION LEN))
 (48 24 (:REWRITE TRUE-LIST-LISTP-WHEN-NOT-CONSP))
 (36 36 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (36 36 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (36 36 (:REWRITE SET::IN-SET))
 (16 8 (:REWRITE DEFAULT-+-2))
 (16 4 (:REWRITE JSON::VALUEP-WHEN-MAYBE-VALUEP))
 (10 2 (:REWRITE JSON::MAYBE-VALUEP-WHEN-VALUEP))
 (8 8 (:REWRITE DEFAULT-+-1))
 (8 8 (:LINEAR LEN-WHEN-PREFIXP))
 (6 6 (:TYPE-PRESCRIPTION JSON::MAYBE-VALUEP))
 (3 3 (:REWRITE JSON::MEMBER-LISTP-WHEN-NOT-CONSP))
 )
(YUL::SOLC-JSON-FILE-TO-IRS)
(YUL::BOOLEANP-OF-SOLC-JSON-FILE-TO-IRS.ERP)
(YUL::CONSP-OF-SOLC-JSON-FILE-TO-IRS.IRS-PAIR)
