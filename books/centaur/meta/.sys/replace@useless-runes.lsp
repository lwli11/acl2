(CMR::PSEUDO-TERM-MAPPING-P)
(CMR::BOOLEANP-OF-PSEUDO-TERMP-FOR-PSEUDO-TERM-MAPPING-P-KEY-LEMMA)
(CMR::BOOLEANP-OF-PSEUDO-TERMP-FOR-PSEUDO-TERM-MAPPING-P-VAL-LEMMA)
(CMR::BOOLEANP-OF-PSEUDO-TERMP-FOR-PSEUDO-TERM-MAPPING-P-KEY)
(CMR::BOOLEANP-OF-PSEUDO-TERMP-FOR-PSEUDO-TERM-MAPPING-P-VAL)
(CMR::TRUE-LISTP-WHEN-PSEUDO-TERM-MAPPING-P)
(CMR::PSEUDO-TERM-MAPPING-P-WHEN-NOT-CONSP)
(CMR::PSEUDO-TERM-MAPPING-P-OF-CDR-WHEN-PSEUDO-TERM-MAPPING-P)
(CMR::PSEUDO-TERM-MAPPING-P-OF-CONS)
(CMR::PSEUDO-TERM-MAPPING-P-OF-REMOVE-ASSOC
 (56 10 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-OF-CDR-WHEN-PSEUDO-TERM-MAPPING-P))
 (16 16 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-WHEN-NOT-CONSP))
 )
(CMR::PSEUDO-TERM-MAPPING-P-OF-PUT-ASSOC)
(CMR::PSEUDO-TERM-MAPPING-P-OF-FAST-ALIST-CLEAN)
(CMR::PSEUDO-TERM-MAPPING-P-OF-HONS-SHRINK-ALIST)
(CMR::PSEUDO-TERM-MAPPING-P-OF-HONS-ACONS)
(CMR::PSEUDO-TERMP-OF-CDR-OF-HONS-ASSOC-EQUAL-WHEN-PSEUDO-TERM-MAPPING-P)
(CMR::ALISTP-WHEN-PSEUDO-TERM-MAPPING-P-REWRITE)
(CMR::ALISTP-WHEN-PSEUDO-TERM-MAPPING-P)
(CMR::PSEUDO-TERMP-OF-CDAR-WHEN-PSEUDO-TERM-MAPPING-P)
(CMR::PSEUDO-TERMP-OF-CAAR-WHEN-PSEUDO-TERM-MAPPING-P)
(CMR::PSEUDO-TERM-MAPPING-FIX$INLINE)
(CMR::PSEUDO-TERM-MAPPING-P-OF-PSEUDO-TERM-MAPPING-FIX
 (1224 8 (:DEFINITION PSEUDO-TERMP))
 (769 6 (:REWRITE PSEUDO-TERM-FIX-WHEN-PSEUDO-TERMP))
 (320 64 (:DEFINITION LEN))
 (256 24 (:DEFINITION LENGTH))
 (244 32 (:REWRITE FTY::EQUAL-OF-LEN))
 (232 232 (:TYPE-PRESCRIPTION LEN))
 (196 16 (:REWRITE PSEUDO-TERMP-CAR-WHEN-PSEUDO-TERM-LISTP))
 (190 190 (:REWRITE DEFAULT-CDR))
 (152 152 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (148 32 (:REWRITE PSEUDO-TERM-LISTP-CDR-WHEN-PSEUDO-TERM-LISTP))
 (136 136 (:REWRITE DEFAULT-CAR))
 (128 64 (:REWRITE DEFAULT-+-2))
 (128 16 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (100 17 (:REWRITE CMR::PSEUDO-TERMP-OF-CAAR-WHEN-PSEUDO-TERM-MAPPING-P))
 (92 8 (:DEFINITION TRUE-LISTP))
 (82 9 (:DEFINITION CMR::PSEUDO-TERM-MAPPING-P))
 (78 36 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-WHEN-NOT-CONSP))
 (64 64 (:REWRITE DEFAULT-+-1))
 (60 4 (:DEFINITION PSEUDO-TERM-LISTP))
 (55 12 (:REWRITE CMR::PSEUDO-TERMP-OF-CDAR-WHEN-PSEUDO-TERM-MAPPING-P))
 (52 52 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (36 8 (:DEFINITION SYMBOL-LISTP))
 (32 32 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (32 16 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (32 16 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (24 24 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (24 10 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-OF-CDR-WHEN-PSEUDO-TERM-MAPPING-P))
 (20 20 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (16 16 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (16 16 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (16 16 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (16 16 (:REWRITE SET::IN-SET))
 (16 16 (:REWRITE DEFAULT-COERCE-2))
 (16 16 (:REWRITE DEFAULT-COERCE-1))
 )
(CMR::PSEUDO-TERM-MAPPING-FIX-WHEN-PSEUDO-TERM-MAPPING-P
 (5927 37 (:DEFINITION PSEUDO-TERMP))
 (1829 31 (:REWRITE CMR::PSEUDO-TERMP-OF-CDAR-WHEN-PSEUDO-TERM-MAPPING-P))
 (1480 296 (:DEFINITION LEN))
 (1335 73 (:REWRITE PSEUDO-TERMP-CAR-WHEN-PSEUDO-TERM-LISTP))
 (1301 28 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-OF-CDR-WHEN-PSEUDO-TERM-MAPPING-P))
 (1294 1294 (:TYPE-PRESCRIPTION LEN))
 (1205 148 (:REWRITE FTY::EQUAL-OF-LEN))
 (1184 111 (:DEFINITION LENGTH))
 (881 877 (:REWRITE DEFAULT-CDR))
 (792 18 (:DEFINITION PSEUDO-TERM-LISTP))
 (661 661 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (645 147 (:REWRITE PSEUDO-TERM-LISTP-CDR-WHEN-PSEUDO-TERM-LISTP))
 (592 296 (:REWRITE DEFAULT-+-2))
 (592 74 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (579 575 (:REWRITE DEFAULT-CAR))
 (451 37 (:DEFINITION TRUE-LISTP))
 (296 296 (:REWRITE DEFAULT-+-1))
 (224 224 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (192 37 (:DEFINITION SYMBOL-LISTP))
 (148 148 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (148 74 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (148 74 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (145 145 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (108 108 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (92 92 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (74 74 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (74 74 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (74 74 (:REWRITE SET::IN-SET))
 (74 74 (:REWRITE DEFAULT-COERCE-2))
 (74 74 (:REWRITE DEFAULT-COERCE-1))
 )
(CMR::PSEUDO-TERM-MAPPING-FIX$INLINE
 (7 7 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-WHEN-NOT-CONSP))
 (6 2 (:REWRITE CMR::PSEUDO-TERMP-OF-CDAR-WHEN-PSEUDO-TERM-MAPPING-P))
 (6 2 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-OF-CDR-WHEN-PSEUDO-TERM-MAPPING-P))
 )
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT
 (1 1 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-WHEN-NOT-CONSP))
 )
(CMR::PSEUDO-TERM-MAPPING-EQUIV$INLINE)
(CMR::PSEUDO-TERM-MAPPING-EQUIV-IS-AN-EQUIVALENCE)
(CMR::PSEUDO-TERM-MAPPING-EQUIV-IMPLIES-EQUAL-PSEUDO-TERM-MAPPING-FIX-1)
(CMR::PSEUDO-TERM-MAPPING-FIX-UNDER-PSEUDO-TERM-MAPPING-EQUIV)
(CMR::EQUAL-OF-PSEUDO-TERM-MAPPING-FIX-1-FORWARD-TO-PSEUDO-TERM-MAPPING-EQUIV)
(CMR::EQUAL-OF-PSEUDO-TERM-MAPPING-FIX-2-FORWARD-TO-PSEUDO-TERM-MAPPING-EQUIV)
(CMR::PSEUDO-TERM-MAPPING-EQUIV-OF-PSEUDO-TERM-MAPPING-FIX-1-FORWARD)
(CMR::PSEUDO-TERM-MAPPING-EQUIV-OF-PSEUDO-TERM-MAPPING-FIX-2-FORWARD)
(CMR::CONS-OF-PSEUDO-TERM-FIX-V-UNDER-PSEUDO-TERM-MAPPING-EQUIV
 (31 4 (:REWRITE CMR::PSEUDO-TERM-MAPPING-FIX-WHEN-PSEUDO-TERM-MAPPING-P))
 (22 2 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-OF-CONS))
 (6 6 (:TYPE-PRESCRIPTION CMR::PSEUDO-TERM-MAPPING-P))
 (3 3 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-WHEN-NOT-CONSP))
 )
(CMR::CONS-PSEUDO-TERM-EQUIV-CONGRUENCE-ON-V-UNDER-PSEUDO-TERM-MAPPING-EQUIV)
(CMR::CONS-OF-PSEUDO-TERM-MAPPING-FIX-Y-UNDER-PSEUDO-TERM-MAPPING-EQUIV
 (18 2 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-OF-CONS))
 (6 2 (:REWRITE PSEUDO-TERM-FIX-WHEN-PSEUDO-TERMP))
 (2 2 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-WHEN-NOT-CONSP))
 )
(CMR::CONS-PSEUDO-TERM-MAPPING-EQUIV-CONGRUENCE-ON-Y-UNDER-PSEUDO-TERM-MAPPING-EQUIV)
(CMR::PSEUDO-TERM-MAPPING-FIX-OF-ACONS
 (17 3 (:REWRITE CMR::PSEUDO-TERM-MAPPING-FIX-WHEN-PSEUDO-TERM-MAPPING-P))
 (10 1 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-OF-CONS))
 (6 2 (:REWRITE PSEUDO-TERM-FIX-WHEN-PSEUDO-TERMP))
 (4 4 (:TYPE-PRESCRIPTION CMR::PSEUDO-TERM-MAPPING-P))
 (2 2 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-WHEN-NOT-CONSP))
 )
(CMR::HONS-ASSOC-EQUAL-OF-PSEUDO-TERM-MAPPING-FIX
 (255 34 (:REWRITE CMR::PSEUDO-TERM-MAPPING-FIX-WHEN-PSEUDO-TERM-MAPPING-P))
 (225 36 (:REWRITE PSEUDO-TERM-FIX-WHEN-PSEUDO-TERMP))
 (131 38 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-OF-CDR-WHEN-PSEUDO-TERM-MAPPING-P))
 (116 116 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-WHEN-NOT-CONSP))
 (88 22 (:REWRITE CMR::PSEUDO-TERMP-OF-CAAR-WHEN-PSEUDO-TERM-MAPPING-P))
 (84 21 (:REWRITE CMR::PSEUDO-TERMP-OF-CDAR-WHEN-PSEUDO-TERM-MAPPING-P))
 (43 8 (:REWRITE CMR::PSEUDO-TERMP-OF-CDR-OF-HONS-ASSOC-EQUAL-WHEN-PSEUDO-TERM-MAPPING-P))
 )
(CMR::PSEUDO-TERM-MAPPING-FIX-OF-APPEND
 (122 17 (:REWRITE CMR::PSEUDO-TERM-MAPPING-FIX-WHEN-PSEUDO-TERM-MAPPING-P))
 (55 55 (:TYPE-PRESCRIPTION CMR::PSEUDO-TERM-MAPPING-P))
 (40 28 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-WHEN-NOT-CONSP))
 (22 4 (:REWRITE PSEUDO-TERM-FIX-WHEN-PSEUDO-TERMP))
 (21 1 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-OF-CONS))
 (16 4 (:REWRITE CMR::PSEUDO-TERMP-OF-CDAR-WHEN-PSEUDO-TERM-MAPPING-P))
 (16 4 (:REWRITE CMR::PSEUDO-TERMP-OF-CAAR-WHEN-PSEUDO-TERM-MAPPING-P))
 (16 4 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-OF-CDR-WHEN-PSEUDO-TERM-MAPPING-P))
 )
(CMR::CONSP-CAR-OF-PSEUDO-TERM-MAPPING-FIX
 (27 8 (:REWRITE CMR::PSEUDO-TERM-MAPPING-FIX-WHEN-PSEUDO-TERM-MAPPING-P))
 (19 19 (:TYPE-PRESCRIPTION CMR::PSEUDO-TERM-MAPPING-P))
 (14 2 (:REWRITE PSEUDO-TERM-FIX-WHEN-PSEUDO-TERMP))
 (10 10 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-WHEN-NOT-CONSP))
 (8 2 (:REWRITE CMR::PSEUDO-TERMP-OF-CDAR-WHEN-PSEUDO-TERM-MAPPING-P))
 (8 2 (:REWRITE CMR::PSEUDO-TERMP-OF-CAAR-WHEN-PSEUDO-TERM-MAPPING-P))
 (8 2 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-OF-CDR-WHEN-PSEUDO-TERM-MAPPING-P))
 )
(CMR::BASE-EV-PSEUDO-TERM-MAPPING-CORRECT-P
 (130 10 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (54 6 (:REWRITE BASE-EV-WHEN-PSEUDO-TERM-VAR))
 (54 6 (:REWRITE BASE-EV-WHEN-PSEUDO-TERM-QUOTE))
 (54 6 (:REWRITE BASE-EV-WHEN-PSEUDO-TERM-NULL))
 (54 6 (:REWRITE BASE-EV-WHEN-PSEUDO-TERM-LAMBDA))
 (54 6 (:REWRITE BASE-EV-WHEN-PSEUDO-TERM-FNCALL))
 (50 10 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (50 10 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (44 44 (:REWRITE DEFAULT-CAR))
 (40 40 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (20 20 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (20 20 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (20 10 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (20 10 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (10 10 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE BASE-EV-OF-VARIABLE))
 (6 6 (:REWRITE BASE-EV-OF-QUOTE))
 (6 6 (:REWRITE BASE-EV-OF-LAMBDA))
 (5 5 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-WHEN-NOT-CONSP))
 )
(CMR::BASE-EV-PSEUDO-TERM-MAPPING-CORRECT-P-IMPLIES
 (475 95 (:DEFINITION LEN))
 (433 35 (:REWRITE PSEUDO-TERMP-CAR-WHEN-PSEUDO-TERM-LISTP))
 (366 366 (:REWRITE DEFAULT-CAR))
 (348 342 (:REWRITE DEFAULT-CDR))
 (304 38 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (301 65 (:REWRITE PSEUDO-TERM-LISTP-CDR-WHEN-PSEUDO-TERM-LISTP))
 (288 32 (:REWRITE BASE-EV-WHEN-PSEUDO-TERM-VAR))
 (288 32 (:REWRITE BASE-EV-WHEN-PSEUDO-TERM-QUOTE))
 (288 32 (:REWRITE BASE-EV-WHEN-PSEUDO-TERM-NULL))
 (288 32 (:REWRITE BASE-EV-WHEN-PSEUDO-TERM-LAMBDA))
 (288 32 (:REWRITE BASE-EV-WHEN-PSEUDO-TERM-FNCALL))
 (190 95 (:REWRITE DEFAULT-+-2))
 (190 19 (:DEFINITION TRUE-LISTP))
 (116 8 (:DEFINITION PSEUDO-TERM-LISTP))
 (111 111 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (95 95 (:REWRITE DEFAULT-+-1))
 (76 76 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (76 38 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (76 38 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (57 19 (:DEFINITION SYMBOL-LISTP))
 (46 46 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (38 38 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (38 38 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (38 38 (:REWRITE SET::IN-SET))
 (38 38 (:REWRITE DEFAULT-COERCE-2))
 (38 38 (:REWRITE DEFAULT-COERCE-1))
 (38 32 (:REWRITE BASE-EV-OF-VARIABLE))
 (38 32 (:REWRITE BASE-EV-OF-QUOTE))
 (38 32 (:REWRITE BASE-EV-OF-LAMBDA))
 (32 8 (:REWRITE CMR::PSEUDO-TERMP-OF-CAAR-WHEN-PSEUDO-TERM-MAPPING-P))
 (8 8 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-WHEN-NOT-CONSP))
 )
(CMR::TERM-REPLACE
 (300 2 (:REWRITE PSEUDO-TERM-FIX-WHEN-PSEUDO-TERMP))
 (288 2 (:DEFINITION PSEUDO-TERMP))
 (64 6 (:DEFINITION LENGTH))
 (58 58 (:TYPE-PRESCRIPTION LEN))
 (50 10 (:DEFINITION LEN))
 (37 37 (:REWRITE DEFAULT-CDR))
 (36 4 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (35 7 (:REWRITE PSEUDO-TERM-LISTP-CDR-WHEN-PSEUDO-TERM-LISTP))
 (33 33 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (32 32 (:REWRITE DEFAULT-CAR))
 (31 2 (:DEFINITION TRUE-LISTP))
 (30 2 (:REWRITE PSEUDO-TERMP-CAR-WHEN-PSEUDO-TERM-LISTP))
 (20 10 (:REWRITE DEFAULT-+-2))
 (12 12 (:TYPE-PRESCRIPTION PSEUDO-TERMP))
 (12 2 (:DEFINITION SYMBOL-LISTP))
 (11 11 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (10 10 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (10 10 (:REWRITE DEFAULT-+-1))
 (10 1 (:DEFINITION HONS-ASSOC-EQUAL))
 (8 8 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (8 8 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (8 4 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (8 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (8 4 (:REWRITE DEFAULT-<-2))
 (8 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (4 4 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (4 4 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (4 4 (:REWRITE SET::IN-SET))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 (4 1 (:REWRITE CMR::PSEUDO-TERMP-OF-CDR-OF-HONS-ASSOC-EQUAL-WHEN-PSEUDO-TERM-MAPPING-P))
 (4 1 (:REWRITE CMR::PSEUDO-TERM-MAPPING-FIX-WHEN-PSEUDO-TERM-MAPPING-P))
 (2 2 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-WHEN-NOT-CONSP))
 (2 1 (:DEFINITION HONS-EQUAL))
 )
(CMR::TERM-REPLACE-FLAG
 (298 2 (:REWRITE PSEUDO-TERM-FIX-WHEN-PSEUDO-TERMP))
 (286 2 (:DEFINITION PSEUDO-TERMP))
 (64 6 (:DEFINITION LENGTH))
 (58 58 (:TYPE-PRESCRIPTION LEN))
 (50 10 (:DEFINITION LEN))
 (37 37 (:REWRITE DEFAULT-CDR))
 (35 7 (:REWRITE PSEUDO-TERM-LISTP-CDR-WHEN-PSEUDO-TERM-LISTP))
 (34 4 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (33 33 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (32 32 (:REWRITE DEFAULT-CAR))
 (32 2 (:TYPE-PRESCRIPTION RETURN-LAST))
 (30 2 (:REWRITE PSEUDO-TERMP-CAR-WHEN-PSEUDO-TERM-LISTP))
 (30 2 (:DEFINITION TRUE-LISTP))
 (20 10 (:REWRITE DEFAULT-+-2))
 (12 12 (:TYPE-PRESCRIPTION PSEUDO-TERMP))
 (12 2 (:DEFINITION SYMBOL-LISTP))
 (11 11 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (10 10 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (10 10 (:REWRITE DEFAULT-+-1))
 (10 1 (:DEFINITION HONS-ASSOC-EQUAL))
 (8 8 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (8 8 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (8 4 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (8 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (8 4 (:REWRITE DEFAULT-<-2))
 (8 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (4 4 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (4 4 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (4 4 (:REWRITE SET::IN-SET))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 (4 1 (:REWRITE CMR::PSEUDO-TERMP-OF-CDR-OF-HONS-ASSOC-EQUAL-WHEN-PSEUDO-TERM-MAPPING-P))
 (4 1 (:REWRITE CMR::PSEUDO-TERM-MAPPING-FIX-WHEN-PSEUDO-TERM-MAPPING-P))
 (2 2 (:TYPE-PRESCRIPTION THROW-NONEXEC-ERROR))
 (2 2 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-WHEN-NOT-CONSP))
 (2 1 (:DEFINITION HONS-EQUAL))
 )
(FLAG::FLAG-EQUIV-LEMMA)
(CMR::TERM-REPLACE-FLAG-EQUIVALENCES)
(CMR::FLAG-LEMMA-FOR-RETURN-TYPE-OF-TERM-REPLACE.NEW-X
 (5898 46 (:DEFINITION PSEUDO-TERMP))
 (4355 35 (:REWRITE PSEUDO-TERM-FIX-WHEN-PSEUDO-TERMP))
 (1472 138 (:DEFINITION LENGTH))
 (1150 230 (:DEFINITION LEN))
 (1046 1046 (:TYPE-PRESCRIPTION LEN))
 (816 814 (:REWRITE DEFAULT-CDR))
 (815 163 (:REWRITE PSEUDO-TERM-LISTP-CDR-WHEN-PSEUDO-TERM-LISTP))
 (780 64 (:REWRITE PSEUDO-TERMP-CAR-WHEN-PSEUDO-TERM-LISTP))
 (758 92 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (715 714 (:REWRITE DEFAULT-CAR))
 (582 46 (:DEFINITION TRUE-LISTP))
 (460 230 (:REWRITE DEFAULT-+-2))
 (311 311 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (230 230 (:REWRITE DEFAULT-+-1))
 (228 46 (:DEFINITION SYMBOL-LISTP))
 (184 184 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (184 92 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (184 92 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (166 166 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (120 120 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (111 111 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (92 92 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (92 92 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (92 92 (:REWRITE SET::IN-SET))
 (92 92 (:REWRITE DEFAULT-COERCE-2))
 (92 92 (:REWRITE DEFAULT-COERCE-1))
 (28 7 (:REWRITE CMR::PSEUDO-TERMP-OF-CDR-OF-HONS-ASSOC-EQUAL-WHEN-PSEUDO-TERM-MAPPING-P))
 (24 6 (:REWRITE CMR::PSEUDO-TERM-MAPPING-FIX-WHEN-PSEUDO-TERM-MAPPING-P))
 (13 13 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-WHEN-NOT-CONSP))
 )
(CMR::RETURN-TYPE-OF-TERM-REPLACE.NEW-X)
(CMR::RETURN-TYPE-OF-TERMLIST-REPLACE.NEW-X)
(CMR::TERMLIST-REPLACE-LEN
 (511 1 (:DEFINITION CMR::TERM-REPLACE))
 (441 3 (:REWRITE PSEUDO-TERM-FIX-WHEN-PSEUDO-TERMP))
 (425 3 (:DEFINITION PSEUDO-TERMP))
 (173 1 (:REWRITE CMR::HONS-ASSOC-EQUAL-OF-PSEUDO-TERM-MAPPING-FIX))
 (96 9 (:DEFINITION LENGTH))
 (91 89 (:REWRITE DEFAULT-CDR))
 (78 39 (:REWRITE DEFAULT-+-2))
 (54 54 (:REWRITE DEFAULT-CAR))
 (52 6 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (50 10 (:REWRITE PSEUDO-TERM-LISTP-CDR-WHEN-PSEUDO-TERM-LISTP))
 (48 48 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (45 3 (:REWRITE PSEUDO-TERMP-CAR-WHEN-PSEUDO-TERM-LISTP))
 (44 3 (:DEFINITION TRUE-LISTP))
 (39 39 (:REWRITE DEFAULT-+-1))
 (21 3 (:DEFINITION MEMBER-EQUAL))
 (19 19 (:TYPE-PRESCRIPTION SYMBOLP-OF-PSEUDO-TERM-KIND))
 (19 19 (:TYPE-PRESCRIPTION PSEUDO-TERM-KIND$INLINE))
 (18 18 (:TYPE-PRESCRIPTION PSEUDO-TERMP))
 (18 3 (:DEFINITION SYMBOL-LISTP))
 (16 16 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (15 15 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (14 2 (:DEFINITION EQ))
 (12 12 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (12 12 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (12 6 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (12 6 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (11 11 (:TYPE-PRESCRIPTION HONS-ASSOC-EQUAL))
 (10 1 (:REWRITE PSEUDO-TERM-CALL->FN-WHEN-LAMBDA))
 (10 1 (:REWRITE PSEUDO-TERM-CALL->FN-WHEN-FNCALL))
 (10 1 (:DEFINITION HONS-ASSOC-EQUAL))
 (6 6 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (6 6 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (6 6 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (6 6 (:REWRITE SET::IN-SET))
 (6 6 (:REWRITE DEFAULT-COERCE-2))
 (6 6 (:REWRITE DEFAULT-COERCE-1))
 (4 4 (:TYPE-PRESCRIPTION PSEUDO-TERM-FIX$INLINE))
 (4 1 (:REWRITE CMR::PSEUDO-TERMP-OF-CDR-OF-HONS-ASSOC-EQUAL-WHEN-PSEUDO-TERM-MAPPING-P))
 (4 1 (:REWRITE CMR::PSEUDO-TERM-MAPPING-FIX-WHEN-PSEUDO-TERM-MAPPING-P))
 (2 2 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-WHEN-NOT-CONSP))
 (2 1 (:DEFINITION HONS-EQUAL))
 (1 1 (:REWRITE RETURN-TYPE-OF-PSEUDO-TERM-FIX.NEW-X))
 (1 1 (:REWRITE PSEUDO-TERM-CALL-WHEN-LAMBDA))
 (1 1 (:REWRITE PSEUDO-TERM-CALL-WHEN-FUNCTION))
 )
(CMR::TAKE-OF-LEN
 (152 19 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (38 38 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (38 19 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (38 19 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (33 19 (:REWRITE DEFAULT-+-2))
 (27 6 (:REWRITE ZP-OPEN))
 (26 25 (:REWRITE DEFAULT-CDR))
 (19 19 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (19 19 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (19 19 (:REWRITE SET::IN-SET))
 (19 19 (:REWRITE DEFAULT-+-1))
 (14 11 (:REWRITE DEFAULT-<-2))
 (14 11 (:REWRITE DEFAULT-<-1))
 (9 8 (:REWRITE DEFAULT-CAR))
 )
(CMR::TERM-REPLACE
 (189 37 (:DEFINITION LEN))
 (130 26 (:REWRITE PSEUDO-TERM-LISTP-CDR-WHEN-PSEUDO-TERM-LISTP))
 (125 10 (:REWRITE PSEUDO-TERMP-CAR-WHEN-PSEUDO-TERM-LISTP))
 (120 120 (:REWRITE DEFAULT-CDR))
 (112 14 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (99 99 (:REWRITE DEFAULT-CAR))
 (74 37 (:REWRITE DEFAULT-+-2))
 (70 7 (:DEFINITION TRUE-LISTP))
 (47 47 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (37 37 (:REWRITE DEFAULT-+-1))
 (28 28 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (28 14 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (28 14 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (21 7 (:DEFINITION SYMBOL-LISTP))
 (16 16 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (14 14 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (14 14 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (14 14 (:REWRITE SET::IN-SET))
 (14 14 (:REWRITE DEFAULT-COERCE-2))
 (14 14 (:REWRITE DEFAULT-COERCE-1))
 (14 2 (:DEFINITION EQ))
 (10 1 (:REWRITE PSEUDO-TERM-CALL->FN-WHEN-LAMBDA))
 (10 1 (:REWRITE PSEUDO-TERM-CALL->FN-WHEN-FNCALL))
 (8 1 (:DEFINITION HONS-ASSOC-EQUAL))
 (6 1 (:DEFINITION CMR::TERMLIST-REPLACE))
 (4 4 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-WHEN-NOT-CONSP))
 (2 2 (:REWRITE PSEUDO-FN-ARGS-P-WHEN-EQUAL-LENGTH))
 (1 1 (:REWRITE-QUOTED-CONSTANT PSEUDO-TERM-LIST-FIX-UNDER-PSEUDO-TERM-LIST-EQUIV))
 (1 1 (:DEFINITION HONS-EQUAL))
 )
(CMR::FLAG-LEMMA-FOR-TERM-REPLACE-CORRECT
 (4626 34 (:DEFINITION PSEUDO-TERMP))
 (1702 66 (:REWRITE PSEUDO-TERMP-CAR-WHEN-PSEUDO-TERM-LISTP))
 (1288 16 (:DEFINITION PSEUDO-TERM-LISTP))
 (1088 102 (:DEFINITION LENGTH))
 (864 172 (:DEFINITION LEN))
 (650 642 (:REWRITE DEFAULT-CDR))
 (586 575 (:REWRITE DEFAULT-CAR))
 (560 68 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (494 118 (:REWRITE PSEUDO-TERM-LISTP-CDR-WHEN-PSEUDO-TERM-LISTP))
 (474 34 (:DEFINITION TRUE-LISTP))
 (344 172 (:REWRITE DEFAULT-+-2))
 (204 34 (:DEFINITION SYMBOL-LISTP))
 (178 178 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (172 172 (:REWRITE DEFAULT-+-1))
 (136 136 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (136 136 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (136 68 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (136 68 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (124 17 (:REWRITE BASE-EV-WHEN-PSEUDO-TERM-VAR))
 (124 17 (:REWRITE BASE-EV-WHEN-PSEUDO-TERM-QUOTE))
 (124 17 (:REWRITE BASE-EV-WHEN-PSEUDO-TERM-NULL))
 (84 84 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (68 68 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (68 68 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (68 68 (:REWRITE SET::IN-SET))
 (68 68 (:REWRITE DEFAULT-COERCE-2))
 (68 68 (:REWRITE DEFAULT-COERCE-1))
 (56 8 (:DEFINITION EQ))
 (48 12 (:REWRITE CMR::PSEUDO-TERM-MAPPING-FIX-WHEN-PSEUDO-TERM-MAPPING-P))
 (41 14 (:REWRITE BASE-EV-OF-QUOTE))
 (35 14 (:REWRITE BASE-EV-OF-LAMBDA))
 (32 8 (:REWRITE CMR::PSEUDO-TERMP-OF-CDR-OF-HONS-ASSOC-EQUAL-WHEN-PSEUDO-TERM-MAPPING-P))
 (21 14 (:REWRITE BASE-EV-OF-VARIABLE))
 (20 20 (:REWRITE CMR::PSEUDO-TERM-MAPPING-P-WHEN-NOT-CONSP))
 (15 15 (:REWRITE PSEUDO-TERM-KIND$INLINE-OF-PSEUDO-TERM-FIX-X))
 (14 2 (:DEFINITION PAIRLIS$))
 (12 12 (:TYPE-PRESCRIPTION PSEUDO-TERM-LAMBDA->BODY))
 (9 9 (:TYPE-PRESCRIPTION KWOTE-LST))
 (8 2 (:DEFINITION KWOTE-LST))
 (4 4 (:TYPE-PRESCRIPTION PSEUDO-TERM-LAMBDA->FORMALS))
 (4 4 (:REWRITE-QUOTED-CONSTANT PSEUDO-TERM-LIST-FIX-UNDER-PSEUDO-TERM-LIST-EQUIV))
 (2 2 (:DEFINITION KWOTE))
 (2 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE DEFAULT-<-2))
 )
(CMR::TERM-REPLACE-CORRECT)
(CMR::TERMLIST-REPLACE-CORRECT)
