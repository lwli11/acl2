(YUL::VALUEP
 (234 18 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (90 18 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (90 18 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (72 72 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (48 48 (:REWRITE DEFAULT-CDR))
 (36 36 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (36 36 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (36 18 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (36 18 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (34 34 (:REWRITE DEFAULT-CAR))
 )
(YUL::CONSP-WHEN-VALUEP)
(YUL::TAG-WHEN-VALUEP)
(YUL::VALUEP-WHEN-WRONG-TAG)
(YUL::VALUE-FIX$INLINE)
(YUL::VALUEP-OF-VALUE-FIX
 (21 7 (:REWRITE UBYTE256-FIX-WHEN-UBYTE256P))
 (14 14 (:TYPE-PRESCRIPTION UBYTE256P))
 (13 1 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (5 1 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (5 1 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 2 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (2 2 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (2 1 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 )
(YUL::VALUE-FIX-WHEN-VALUEP
 (2 2 (:DEFINITION STRIP-CARS))
 )
(YUL::VALUE-FIX$INLINE
 (2 2 (:DEFINITION STRIP-CARS))
 )
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT)
(YUL::VALUE-EQUIV$INLINE)
(YUL::VALUE-EQUIV-IS-AN-EQUIVALENCE)
(YUL::VALUE-EQUIV-IMPLIES-EQUAL-VALUE-FIX-1)
(YUL::VALUE-FIX-UNDER-VALUE-EQUIV)
(YUL::EQUAL-OF-VALUE-FIX-1-FORWARD-TO-VALUE-EQUIV)
(YUL::EQUAL-OF-VALUE-FIX-2-FORWARD-TO-VALUE-EQUIV)
(YUL::VALUE-EQUIV-OF-VALUE-FIX-1-FORWARD)
(YUL::VALUE-EQUIV-OF-VALUE-FIX-2-FORWARD)
(YUL::TAG-OF-VALUE-FIX)
(YUL::VALUE->GET$INLINE
 (2 2 (:DEFINITION STRIP-CARS))
 )
(YUL::UBYTE256P-OF-VALUE->GET)
(YUL::VALUE->GET$INLINE-OF-VALUE-FIX-X
 (9 3 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (6 6 (:TYPE-PRESCRIPTION YUL::VALUEP))
 )
(YUL::VALUE->GET$INLINE-VALUE-EQUIV-CONGRUENCE-ON-X)
(YUL::VALUE)
(YUL::VALUEP-OF-VALUE
 (13 1 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (12 4 (:REWRITE UBYTE256-FIX-WHEN-UBYTE256P))
 (8 8 (:TYPE-PRESCRIPTION UBYTE256P))
 (5 1 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (5 1 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (2 2 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (2 2 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (2 1 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (2 1 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(YUL::VALUE->GET-OF-VALUE)
(YUL::VALUE-OF-FIELDS
 (3 1 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (2 2 (:TYPE-PRESCRIPTION YUL::VALUEP))
 )
(YUL::VALUE-FIX-WHEN-VALUE
 (3 1 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (2 2 (:TYPE-PRESCRIPTION YUL::VALUEP))
 )
(YUL::EQUAL-OF-VALUE)
(YUL::VALUE-OF-UBYTE256-FIX-GET)
(YUL::VALUE-UBYTE256-EQUIV-CONGRUENCE-ON-GET)
(YUL::VALUE-FIX-REDEF)
(YUL::TAG-OF-VALUE)
(YUL::VALUE-LISTP)
(STD::DEFLIST-LOCAL-BOOLEANP-ELEMENT-THM)
(STD::DEFLIST-LOCAL-ELEMENTP-OF-NIL-THM)
(YUL::VALUE-LISTP-OF-CONS)
(YUL::VALUE-LISTP-OF-CDR-WHEN-VALUE-LISTP)
(YUL::VALUE-LISTP-WHEN-NOT-CONSP)
(YUL::VALUEP-OF-CAR-WHEN-VALUE-LISTP)
(YUL::TRUE-LISTP-WHEN-VALUE-LISTP)
(YUL::VALUE-LISTP-OF-LIST-FIX)
(YUL::VALUE-LISTP-OF-REV)
(YUL::VALUE-LIST-FIX$INLINE)
(YUL::VALUE-LISTP-OF-VALUE-LIST-FIX
 (15 1 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (12 2 (:REWRITE YUL::VALUEP-OF-CAR-WHEN-VALUE-LISTP))
 (9 5 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 (9 1 (:DEFINITION YUL::VALUE-LISTP))
 (4 4 (:TYPE-PRESCRIPTION YUL::VALUEP))
 (2 1 (:REWRITE YUL::VALUE-LISTP-OF-CDR-WHEN-VALUE-LISTP))
 )
(YUL::VALUE-LIST-FIX-WHEN-VALUE-LISTP
 (17 4 (:REWRITE YUL::VALUE-LISTP-OF-CDR-WHEN-VALUE-LISTP))
 (9 3 (:REWRITE YUL::VALUEP-OF-CAR-WHEN-VALUE-LISTP))
 )
(YUL::VALUE-LIST-FIX$INLINE
 (4 4 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 (4 1 (:REWRITE YUL::VALUEP-OF-CAR-WHEN-VALUE-LISTP))
 (4 1 (:REWRITE YUL::VALUE-LISTP-OF-CDR-WHEN-VALUE-LISTP))
 )
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT
 (1 1 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 )
(YUL::VALUE-LIST-EQUIV$INLINE)
(YUL::VALUE-LIST-EQUIV-IS-AN-EQUIVALENCE)
(YUL::VALUE-LIST-EQUIV-IMPLIES-EQUAL-VALUE-LIST-FIX-1)
(YUL::VALUE-LIST-FIX-UNDER-VALUE-LIST-EQUIV)
(YUL::EQUAL-OF-VALUE-LIST-FIX-1-FORWARD-TO-VALUE-LIST-EQUIV)
(YUL::EQUAL-OF-VALUE-LIST-FIX-2-FORWARD-TO-VALUE-LIST-EQUIV)
(YUL::VALUE-LIST-EQUIV-OF-VALUE-LIST-FIX-1-FORWARD)
(YUL::VALUE-LIST-EQUIV-OF-VALUE-LIST-FIX-2-FORWARD)
(YUL::CAR-OF-VALUE-LIST-FIX-X-UNDER-VALUE-EQUIV
 (21 3 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (12 12 (:TYPE-PRESCRIPTION YUL::VALUE-LISTP))
 (12 3 (:REWRITE YUL::VALUEP-OF-CAR-WHEN-VALUE-LISTP))
 (12 2 (:REWRITE YUL::VALUE-LIST-FIX-WHEN-VALUE-LISTP))
 (6 6 (:TYPE-PRESCRIPTION YUL::VALUEP))
 (6 6 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 (4 1 (:REWRITE YUL::VALUE-LISTP-OF-CDR-WHEN-VALUE-LISTP))
 (3 3 (:TYPE-PRESCRIPTION YUL::VALUE-LIST-FIX$INLINE))
 )
(YUL::CAR-VALUE-LIST-EQUIV-CONGRUENCE-ON-X-UNDER-VALUE-EQUIV)
(YUL::CDR-OF-VALUE-LIST-FIX-X-UNDER-VALUE-LIST-EQUIV
 (29 3 (:REWRITE YUL::VALUE-LISTP-OF-CDR-WHEN-VALUE-LISTP))
 (14 2 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (8 2 (:REWRITE YUL::VALUEP-OF-CAR-WHEN-VALUE-LISTP))
 (4 4 (:TYPE-PRESCRIPTION YUL::VALUEP))
 )
(YUL::CDR-VALUE-LIST-EQUIV-CONGRUENCE-ON-X-UNDER-VALUE-LIST-EQUIV)
(YUL::CONS-OF-VALUE-FIX-X-UNDER-VALUE-LIST-EQUIV
 (20 4 (:REWRITE YUL::VALUE-LIST-FIX-WHEN-VALUE-LISTP))
 (9 2 (:REWRITE YUL::VALUE-LISTP-OF-CONS))
 (6 6 (:TYPE-PRESCRIPTION YUL::VALUE-LISTP))
 (5 5 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 )
(YUL::CONS-VALUE-EQUIV-CONGRUENCE-ON-X-UNDER-VALUE-LIST-EQUIV)
(YUL::CONS-OF-VALUE-LIST-FIX-Y-UNDER-VALUE-LIST-EQUIV
 (12 2 (:REWRITE YUL::VALUE-LISTP-OF-CONS))
 (8 8 (:TYPE-PRESCRIPTION YUL::VALUEP))
 (5 4 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 (4 2 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 )
(YUL::CONS-VALUE-LIST-EQUIV-CONGRUENCE-ON-Y-UNDER-VALUE-LIST-EQUIV)
(YUL::CONSP-OF-VALUE-LIST-FIX
 (12 2 (:REWRITE YUL::VALUE-LIST-FIX-WHEN-VALUE-LISTP))
 (8 8 (:TYPE-PRESCRIPTION YUL::VALUE-LISTP))
 (7 1 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (4 4 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 (4 1 (:REWRITE YUL::VALUEP-OF-CAR-WHEN-VALUE-LISTP))
 (4 1 (:REWRITE YUL::VALUE-LISTP-OF-CDR-WHEN-VALUE-LISTP))
 (2 2 (:TYPE-PRESCRIPTION YUL::VALUEP))
 )
(YUL::VALUE-LIST-FIX-UNDER-IFF
 (12 2 (:REWRITE YUL::VALUE-LIST-FIX-WHEN-VALUE-LISTP))
 (8 8 (:TYPE-PRESCRIPTION YUL::VALUE-LISTP))
 (7 1 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (4 4 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 (4 1 (:REWRITE YUL::VALUEP-OF-CAR-WHEN-VALUE-LISTP))
 (4 1 (:REWRITE YUL::VALUE-LISTP-OF-CDR-WHEN-VALUE-LISTP))
 (2 2 (:TYPE-PRESCRIPTION YUL::VALUEP))
 )
(YUL::VALUE-LIST-FIX-OF-CONS
 (13 3 (:REWRITE YUL::VALUE-LIST-FIX-WHEN-VALUE-LISTP))
 (5 1 (:REWRITE YUL::VALUE-LISTP-OF-CONS))
 (4 4 (:TYPE-PRESCRIPTION YUL::VALUEP))
 (4 4 (:TYPE-PRESCRIPTION YUL::VALUE-LISTP))
 (4 2 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (3 3 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 )
(YUL::LEN-OF-VALUE-LIST-FIX
 (23 4 (:REWRITE YUL::VALUE-LIST-FIX-WHEN-VALUE-LISTP))
 (13 13 (:TYPE-PRESCRIPTION YUL::VALUE-LISTP))
 (8 2 (:REWRITE YUL::VALUE-LISTP-OF-CDR-WHEN-VALUE-LISTP))
 (7 7 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 (7 1 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (4 1 (:REWRITE YUL::VALUEP-OF-CAR-WHEN-VALUE-LISTP))
 (2 2 (:TYPE-PRESCRIPTION YUL::VALUEP))
 (1 1 (:REWRITE FTY::EQUAL-OF-LEN))
 )
(YUL::VALUE-LIST-FIX-OF-APPEND
 (56 10 (:REWRITE YUL::VALUE-LIST-FIX-WHEN-VALUE-LISTP))
 (23 23 (:TYPE-PRESCRIPTION YUL::VALUE-LISTP))
 (18 12 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 (8 2 (:REWRITE YUL::VALUE-LISTP-OF-CDR-WHEN-VALUE-LISTP))
 (8 2 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (4 1 (:REWRITE YUL::VALUEP-OF-CAR-WHEN-VALUE-LISTP))
 (2 2 (:TYPE-PRESCRIPTION YUL::VALUEP))
 )
(YUL::VALUE-LIST-FIX-OF-REPEAT
 (20 2 (:REWRITE YUL::VALUE-LIST-FIX-WHEN-VALUE-LISTP))
 (10 4 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (8 2 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 (6 6 (:TYPE-PRESCRIPTION YUL::VALUEP))
 (4 4 (:TYPE-PRESCRIPTION YUL::VALUE-LISTP))
 (1 1 (:REWRITE-QUOTED-CONSTANT YUL::VALUE-LIST-FIX-UNDER-VALUE-LIST-EQUIV))
 )
(YUL::LIST-EQUIV-REFINES-VALUE-LIST-EQUIV
 (98 14 (:REWRITE YUL::VALUE-LIST-FIX-WHEN-VALUE-LISTP))
 (72 8 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (70 70 (:TYPE-PRESCRIPTION YUL::VALUE-LISTP))
 (60 18 (:REWRITE YUL::VALUE-LISTP-OF-CDR-WHEN-VALUE-LISTP))
 (48 8 (:REWRITE YUL::VALUEP-OF-CAR-WHEN-VALUE-LISTP))
 (36 36 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 (16 16 (:TYPE-PRESCRIPTION YUL::VALUEP))
 )
(YUL::NTH-OF-VALUE-LIST-FIX
 (120 18 (:REWRITE YUL::VALUE-LIST-FIX-WHEN-VALUE-LISTP))
 (68 16 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (52 13 (:REWRITE YUL::VALUE-LISTP-OF-CDR-WHEN-VALUE-LISTP))
 (35 35 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 (32 32 (:TYPE-PRESCRIPTION YUL::VALUEP))
 (29 22 (:REWRITE DEFAULT-+-2))
 (24 18 (:REWRITE DEFAULT-CDR))
 (22 22 (:REWRITE DEFAULT-+-1))
 (20 5 (:REWRITE YUL::VALUEP-OF-CAR-WHEN-VALUE-LISTP))
 (19 7 (:REWRITE ZP-OPEN))
 (18 14 (:REWRITE DEFAULT-<-2))
 (15 15 (:REWRITE YUL::CONSP-OF-VALUE-LIST-FIX))
 (14 14 (:REWRITE DEFAULT-<-1))
 (12 4 (:REWRITE FOLD-CONSTS-IN-+))
 (10 4 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE-QUOTED-CONSTANT YUL::VALUE-FIX-UNDER-VALUE-EQUIV))
 )
(YUL::VALUE-LIST-EQUIV-IMPLIES-VALUE-LIST-EQUIV-APPEND-1
 (181 32 (:REWRITE YUL::VALUE-LIST-FIX-WHEN-VALUE-LISTP))
 (131 17 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (126 126 (:TYPE-PRESCRIPTION YUL::VALUE-LISTP))
 (80 17 (:REWRITE YUL::VALUEP-OF-CAR-WHEN-VALUE-LISTP))
 (79 22 (:REWRITE YUL::VALUE-LISTP-OF-CDR-WHEN-VALUE-LISTP))
 (64 64 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 (34 34 (:TYPE-PRESCRIPTION YUL::VALUEP))
 )
(YUL::VALUE-LIST-EQUIV-IMPLIES-VALUE-LIST-EQUIV-APPEND-2
 (267 46 (:REWRITE YUL::VALUE-LIST-FIX-WHEN-VALUE-LISTP))
 (206 26 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (189 189 (:TYPE-PRESCRIPTION YUL::VALUE-LISTP))
 (138 39 (:REWRITE YUL::VALUE-LISTP-OF-CDR-WHEN-VALUE-LISTP))
 (128 26 (:REWRITE YUL::VALUEP-OF-CAR-WHEN-VALUE-LISTP))
 (95 95 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 (52 52 (:TYPE-PRESCRIPTION YUL::VALUEP))
 (4 4 (:REWRITE YUL::CONSP-OF-VALUE-LIST-FIX))
 )
(YUL::VALUE-LIST-EQUIV-IMPLIES-VALUE-LIST-EQUIV-NTHCDR-2
 (249 39 (:REWRITE YUL::VALUE-LIST-FIX-WHEN-VALUE-LISTP))
 (175 175 (:TYPE-PRESCRIPTION YUL::VALUE-LISTP))
 (174 22 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (117 33 (:REWRITE YUL::VALUE-LISTP-OF-CDR-WHEN-VALUE-LISTP))
 (108 22 (:REWRITE YUL::VALUEP-OF-CAR-WHEN-VALUE-LISTP))
 (88 88 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 (44 44 (:TYPE-PRESCRIPTION YUL::VALUEP))
 )
(YUL::VALUE-LIST-EQUIV-IMPLIES-VALUE-LIST-EQUIV-TAKE-2
 (326 38 (:REWRITE YUL::VALUE-LIST-FIX-WHEN-VALUE-LISTP))
 (222 28 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (190 190 (:TYPE-PRESCRIPTION YUL::VALUE-LISTP))
 (149 39 (:REWRITE YUL::VALUE-LISTP-OF-CDR-WHEN-VALUE-LISTP))
 (140 26 (:REWRITE YUL::VALUEP-OF-CAR-WHEN-VALUE-LISTP))
 (119 95 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 (54 54 (:TYPE-PRESCRIPTION YUL::VALUEP))
 (6 6 (:REWRITE-QUOTED-CONSTANT YUL::VALUE-LIST-FIX-UNDER-VALUE-LIST-EQUIV))
 )
(YUL::VALUE-RESULTP)
(YUL::CONSP-WHEN-VALUE-RESULTP)
(YUL::VALUE-RESULT-KIND$INLINE)
(YUL::VALUE-RESULT-KIND-POSSIBILITIES)
(YUL::VALUE-RESULT-FIX$INLINE)
(YUL::VALUE-RESULTP-OF-VALUE-RESULT-FIX
 (26 2 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (13 1 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (13 1 (:REWRITE FTY::RESERR-FIX-WHEN-RESERRP))
 (11 11 (:TYPE-PRESCRIPTION STRIP-CARS))
 (10 2 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (10 2 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (8 8 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (8 2 (:REWRITE FTY::EQUAL-OF-STRIP-CARS))
 (6 6 (:REWRITE DEFAULT-CDR))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (4 4 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (4 4 (:REWRITE DEFAULT-CAR))
 (4 2 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (4 2 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (3 1 (:REWRITE UBYTE256-FIX-WHEN-UBYTE256P))
 (1 1 (:TYPE-PRESCRIPTION YUL::VALUEP))
 (1 1 (:TYPE-PRESCRIPTION FTY::RESERRP))
 )
(YUL::VALUE-RESULT-FIX-WHEN-VALUE-RESULTP)
(YUL::VALUE-RESULT-FIX$INLINE
 (78 6 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (36 36 (:REWRITE DEFAULT-CDR))
 (30 6 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (30 6 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (25 25 (:REWRITE DEFAULT-CAR))
 (24 24 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (12 12 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (12 12 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (12 6 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (12 6 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (6 6 (:TYPE-PRESCRIPTION IDENTITY))
 )
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT)
(YUL::VALUE-RESULT-EQUIV$INLINE)
(YUL::VALUE-RESULT-EQUIV-IS-AN-EQUIVALENCE)
(YUL::VALUE-RESULT-EQUIV-IMPLIES-EQUAL-VALUE-RESULT-FIX-1)
(YUL::VALUE-RESULT-FIX-UNDER-VALUE-RESULT-EQUIV)
(YUL::EQUAL-OF-VALUE-RESULT-FIX-1-FORWARD-TO-VALUE-RESULT-EQUIV)
(YUL::EQUAL-OF-VALUE-RESULT-FIX-2-FORWARD-TO-VALUE-RESULT-EQUIV)
(YUL::VALUE-RESULT-EQUIV-OF-VALUE-RESULT-FIX-1-FORWARD)
(YUL::VALUE-RESULT-EQUIV-OF-VALUE-RESULT-FIX-2-FORWARD)
(YUL::VALUE-RESULT-KIND$INLINE-OF-VALUE-RESULT-FIX-X
 (52 4 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (20 4 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (20 4 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (16 16 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (14 14 (:REWRITE DEFAULT-CDR))
 (8 8 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (8 8 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (8 8 (:REWRITE DEFAULT-CAR))
 (8 4 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (8 4 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (5 1 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (5 1 (:REWRITE FTY::RESERR-FIX-WHEN-RESERRP))
 (4 2 (:REWRITE YUL::VALUEP-WHEN-WRONG-TAG))
 (4 1 (:DEFINITION FTY::RESERRP))
 (1 1 (:REWRITE YUL::VALUE-RESULT-FIX-WHEN-VALUE-RESULTP))
 (1 1 (:REWRITE YUL::TAG-WHEN-VALUEP))
 (1 1 (:REWRITE FTY::TAG-WHEN-RESERRP))
 )
(YUL::VALUE-RESULT-KIND$INLINE-VALUE-RESULT-EQUIV-CONGRUENCE-ON-X)
(YUL::CONSP-OF-VALUE-RESULT-FIX)
(YUL::VALUE-RESULT-OK->GET$INLINE
 (39 3 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (19 19 (:REWRITE DEFAULT-CDR))
 (15 3 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (15 3 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (13 13 (:REWRITE DEFAULT-CAR))
 (12 12 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (6 6 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (6 6 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (6 3 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (6 3 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 )
(YUL::VALUEP-OF-VALUE-RESULT-OK->GET
 (88 4 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (20 4 (:REWRITE FTY::EQUAL-OF-STRIP-CARS))
 (13 1 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (5 1 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (5 1 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 1 (:REWRITE UBYTE256-FIX-WHEN-UBYTE256P))
 (2 2 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (2 2 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (2 1 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 )
(YUL::VALUE-RESULT-OK->GET$INLINE-OF-VALUE-RESULT-FIX-X
 (12 4 (:REWRITE YUL::VALUE-RESULT-FIX-WHEN-VALUE-RESULTP))
 (8 8 (:TYPE-PRESCRIPTION YUL::VALUE-RESULTP))
 (7 7 (:TYPE-PRESCRIPTION YUL::VALUE-RESULT-FIX$INLINE))
 (7 7 (:TYPE-PRESCRIPTION YUL::CONSP-OF-VALUE-RESULT-FIX))
 (2 2 (:TYPE-PRESCRIPTION ALISTP))
 )
(YUL::VALUE-RESULT-OK->GET$INLINE-VALUE-RESULT-EQUIV-CONGRUENCE-ON-X)
(YUL::VALUE-RESULT-OK->GET-WHEN-WRONG-KIND
 (3 1 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (1 1 (:TYPE-PRESCRIPTION YUL::VALUEP))
 (1 1 (:DEFINITION YUL::VALUEP))
 )
(YUL::VALUE-RESULT-OK
 (39 3 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (19 19 (:REWRITE DEFAULT-CDR))
 (15 3 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (15 3 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (13 13 (:REWRITE DEFAULT-CAR))
 (12 12 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (6 6 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (6 6 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (6 3 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (6 3 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (2 2 (:DEFINITION STRIP-CARS))
 )
(YUL::RETURN-TYPE-OF-VALUE-RESULT-OK
 (26 2 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (10 2 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (10 2 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (8 8 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (6 6 (:REWRITE DEFAULT-CDR))
 (6 2 (:REWRITE UBYTE256-FIX-WHEN-UBYTE256P))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (4 4 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (4 4 (:REWRITE DEFAULT-CAR))
 (4 2 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (4 2 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 )
(YUL::VALUE-RESULT-OK->GET-OF-VALUE-RESULT-OK
 (23 1 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (21 1 (:DEFINITION YUL::VALUEP))
 (10 10 (:TYPE-PRESCRIPTION YUL::VALUE-RESULT-OK))
 (6 1 (:REWRITE FTY::EQUAL-OF-STRIP-CARS))
 (5 5 (:TYPE-PRESCRIPTION STRIP-CARS))
 (2 2 (:DEFINITION STRIP-CARS))
 (1 1 (:TYPE-PRESCRIPTION YUL::VALUEP))
 (1 1 (:TYPE-PRESCRIPTION UBYTE256P))
 (1 1 (:TYPE-PRESCRIPTION ALISTP))
 )
(YUL::VALUE-RESULT-OK-OF-FIELDS
 (26 2 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (22 2 (:DEFINITION YUL::VALUEP))
 (10 10 (:TYPE-PRESCRIPTION STRIP-CARS))
 (8 2 (:REWRITE FTY::EQUAL-OF-STRIP-CARS))
 (4 4 (:DEFINITION STRIP-CARS))
 (3 1 (:REWRITE YUL::VALUE-RESULT-FIX-WHEN-VALUE-RESULTP))
 (2 2 (:TYPE-PRESCRIPTION YUL::VALUEP))
 (2 2 (:TYPE-PRESCRIPTION YUL::VALUE-RESULTP))
 (2 2 (:TYPE-PRESCRIPTION UBYTE256P))
 (2 2 (:TYPE-PRESCRIPTION ALISTP))
 )
(YUL::VALUE-RESULT-FIX-WHEN-OK
 (14 2 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (11 1 (:DEFINITION YUL::VALUEP))
 (5 5 (:TYPE-PRESCRIPTION STRIP-CARS))
 (4 1 (:REWRITE FTY::EQUAL-OF-STRIP-CARS))
 (3 1 (:REWRITE YUL::VALUE-RESULT-FIX-WHEN-VALUE-RESULTP))
 (2 2 (:TYPE-PRESCRIPTION YUL::VALUE-RESULTP))
 (2 2 (:DEFINITION STRIP-CARS))
 (1 1 (:TYPE-PRESCRIPTION YUL::VALUEP))
 (1 1 (:TYPE-PRESCRIPTION UBYTE256P))
 (1 1 (:TYPE-PRESCRIPTION ALISTP))
 )
(YUL::EQUAL-OF-VALUE-RESULT-OK
 (142 6 (:REWRITE YUL::VALUE-FIX-WHEN-VALUEP))
 (134 6 (:DEFINITION YUL::VALUEP))
 (52 4 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (38 2 (:DEFINITION ALISTP))
 (30 6 (:REWRITE FTY::EQUAL-OF-STRIP-CARS))
 (25 25 (:REWRITE DEFAULT-CAR))
 (25 24 (:REWRITE DEFAULT-CDR))
 (24 12 (:DEFINITION STRIP-CARS))
 (20 4 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (20 4 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (16 16 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (10 10 (:TYPE-PRESCRIPTION STRIP-CARS))
 (8 8 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (8 8 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (8 8 (:TYPE-PRESCRIPTION ALISTP))
 (8 4 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (8 4 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (2 2 (:TYPE-PRESCRIPTION YUL::VALUEP))
 )
(YUL::VALUE-RESULT-OK-OF-VALUE-FIX-GET)
(YUL::VALUE-RESULT-OK-VALUE-EQUIV-CONGRUENCE-ON-GET)
(YUL::VALUE-RESULT-ERR->GET$INLINE
 (78 6 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (36 36 (:REWRITE DEFAULT-CDR))
 (30 6 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (30 6 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (25 25 (:REWRITE DEFAULT-CAR))
 (24 24 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (14 14 (:TYPE-PRESCRIPTION IDENTITY))
 (12 12 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (12 12 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (12 6 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (12 6 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 )
(YUL::RESERRP-OF-VALUE-RESULT-ERR->GET
 (63 3 (:REWRITE FTY::RESERR-FIX-WHEN-RESERRP))
 (15 3 (:REWRITE FTY::EQUAL-OF-STRIP-CARS))
 (13 1 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (5 1 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (5 1 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 2 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (2 2 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (2 1 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 )
(YUL::VALUE-RESULT-ERR->GET$INLINE-OF-VALUE-RESULT-FIX-X
 (126 10 (:REWRITE FTY::RESERR-FIX-WHEN-RESERRP))
 (106 10 (:DEFINITION FTY::RESERRP))
 (31 11 (:REWRITE YUL::VALUE-RESULT-FIX-WHEN-VALUE-RESULTP))
 (20 20 (:TYPE-PRESCRIPTION YUL::VALUE-RESULTP))
 (13 13 (:TYPE-PRESCRIPTION YUL::VALUE-RESULT-FIX$INLINE))
 (13 13 (:TYPE-PRESCRIPTION YUL::CONSP-OF-VALUE-RESULT-FIX))
 (10 10 (:TYPE-PRESCRIPTION FTY::RESERRP))
 )
(YUL::VALUE-RESULT-ERR->GET$INLINE-VALUE-RESULT-EQUIV-CONGRUENCE-ON-X)
(YUL::VALUE-RESULT-ERR->GET-WHEN-WRONG-KIND
 (3 1 (:REWRITE FTY::RESERR-FIX-WHEN-RESERRP))
 (1 1 (:TYPE-PRESCRIPTION FTY::RESERRP))
 (1 1 (:DEFINITION FTY::RESERRP))
 )
(YUL::VALUE-RESULT-ERR
 (39 3 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (17 17 (:REWRITE DEFAULT-CDR))
 (15 3 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (15 3 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (12 12 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (12 12 (:REWRITE DEFAULT-CAR))
 (6 6 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (6 6 (:TYPE-PRESCRIPTION IDENTITY))
 (6 6 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (6 3 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (6 3 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (2 2 (:DEFINITION STRIP-CARS))
 )
(YUL::RETURN-TYPE-OF-VALUE-RESULT-ERR
 (13 1 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (5 1 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (5 1 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 2 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (2 2 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (2 1 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 )
(YUL::VALUE-RESULT-ERR->GET-OF-VALUE-RESULT-ERR
 (30 24 (:TYPE-PRESCRIPTION IDENTITY))
 (23 1 (:REWRITE FTY::RESERR-FIX-WHEN-RESERRP))
 (21 1 (:DEFINITION FTY::RESERRP))
 (16 16 (:TYPE-PRESCRIPTION YUL::VALUE-RESULT-ERR))
 (6 6 (:TYPE-PRESCRIPTION STRIP-CARS))
 (6 1 (:REWRITE FTY::EQUAL-OF-STRIP-CARS))
 (2 2 (:DEFINITION STRIP-CARS))
 (1 1 (:TYPE-PRESCRIPTION FTY::RESERRP))
 (1 1 (:TYPE-PRESCRIPTION ALISTP))
 )
(YUL::VALUE-RESULT-ERR-OF-FIELDS
 (26 2 (:REWRITE FTY::RESERR-FIX-WHEN-RESERRP))
 (22 2 (:DEFINITION FTY::RESERRP))
 (18 18 (:TYPE-PRESCRIPTION IDENTITY))
 (12 12 (:TYPE-PRESCRIPTION STRIP-CARS))
 (8 2 (:REWRITE FTY::EQUAL-OF-STRIP-CARS))
 (4 4 (:DEFINITION STRIP-CARS))
 (3 1 (:REWRITE YUL::VALUE-RESULT-FIX-WHEN-VALUE-RESULTP))
 (2 2 (:TYPE-PRESCRIPTION YUL::VALUE-RESULTP))
 (2 2 (:TYPE-PRESCRIPTION FTY::RESERRP))
 (2 2 (:TYPE-PRESCRIPTION ALISTP))
 )
(YUL::VALUE-RESULT-FIX-WHEN-ERR
 (18 18 (:TYPE-PRESCRIPTION IDENTITY))
 (14 2 (:REWRITE FTY::RESERR-FIX-WHEN-RESERRP))
 (11 1 (:DEFINITION FTY::RESERRP))
 (6 6 (:TYPE-PRESCRIPTION STRIP-CARS))
 (4 1 (:REWRITE FTY::EQUAL-OF-STRIP-CARS))
 (3 1 (:REWRITE YUL::VALUE-RESULT-FIX-WHEN-VALUE-RESULTP))
 (2 2 (:TYPE-PRESCRIPTION YUL::VALUE-RESULTP))
 (2 2 (:DEFINITION STRIP-CARS))
 (1 1 (:TYPE-PRESCRIPTION FTY::RESERRP))
 (1 1 (:TYPE-PRESCRIPTION ALISTP))
 )
(YUL::EQUAL-OF-VALUE-RESULT-ERR
 (152 6 (:REWRITE FTY::RESERR-FIX-WHEN-RESERRP))
 (134 6 (:DEFINITION FTY::RESERRP))
 (52 4 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (38 2 (:DEFINITION ALISTP))
 (30 6 (:REWRITE FTY::EQUAL-OF-STRIP-CARS))
 (25 25 (:REWRITE DEFAULT-CAR))
 (24 24 (:REWRITE DEFAULT-CDR))
 (24 12 (:DEFINITION STRIP-CARS))
 (20 4 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (20 4 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (16 16 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (12 12 (:TYPE-PRESCRIPTION STRIP-CARS))
 (10 2 (:REWRITE FTY::RESERRP-WHEN-RESERR-OPTIONP))
 (8 8 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (8 8 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (8 8 (:TYPE-PRESCRIPTION ALISTP))
 (8 4 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (8 4 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (4 4 (:TYPE-PRESCRIPTION FTY::RESERRP))
 (4 4 (:TYPE-PRESCRIPTION FTY::RESERR-OPTIONP))
 (4 2 (:REWRITE FTY::RESERR-OPTIONP-WHEN-RESERRP))
 )
(YUL::VALUE-RESULT-ERR-OF-RESERR-FIX-GET
 (12 12 (:TYPE-PRESCRIPTION IDENTITY))
 )
(YUL::VALUE-RESULT-ERR-RESERR-EQUIV-CONGRUENCE-ON-GET)
(YUL::VALUE-RESULT-FIX-REDEF
 (9 3 (:REWRITE YUL::VALUE-RESULT-FIX-WHEN-VALUE-RESULTP))
 (6 6 (:TYPE-PRESCRIPTION YUL::VALUE-RESULTP))
 )
(YUL::VALUE-RESULTP-WHEN-VALUEP)
(YUL::VALUE-RESULTP-WHEN-RESERRP)
(YUL::VALUEP-WHEN-VALUE-RESULTP-AND-NOT-RESERRP)
(YUL::NOT-RESERRP-WHEN-VALUEP)
(YUL::VALUE-LIST-RESULTP)
(YUL::CONSP-WHEN-VALUE-LIST-RESULTP)
(YUL::VALUE-LIST-RESULT-KIND$INLINE)
(YUL::VALUE-LIST-RESULT-KIND-POSSIBILITIES)
(YUL::VALUE-LIST-RESULT-FIX$INLINE)
(YUL::VALUE-LIST-RESULTP-OF-VALUE-LIST-RESULT-FIX
 (72 8 (:REWRITE YUL::VALUE-LIST-FIX-WHEN-VALUE-LISTP))
 (40 40 (:TYPE-PRESCRIPTION YUL::VALUE-LISTP))
 (40 4 (:DEFINITION YUL::VALUE-LIST-FIX$INLINE))
 (26 2 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (13 1 (:REWRITE FTY::RESERR-FIX-WHEN-RESERRP))
 (10 2 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (10 2 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (8 8 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (8 8 (:REWRITE DEFAULT-CDR))
 (6 6 (:TYPE-PRESCRIPTION STRIP-CARS))
 (5 5 (:REWRITE DEFAULT-CAR))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (4 4 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (4 2 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (4 2 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (4 1 (:REWRITE FTY::EQUAL-OF-STRIP-CARS))
 (1 1 (:TYPE-PRESCRIPTION FTY::RESERRP))
 )
(YUL::VALUE-LIST-RESULT-FIX-WHEN-VALUE-LIST-RESULTP
 (78 6 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (36 36 (:REWRITE DEFAULT-CDR))
 (30 6 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (30 6 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (27 27 (:REWRITE DEFAULT-CAR))
 (24 24 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (18 3 (:REWRITE YUL::VALUEP-OF-CAR-WHEN-VALUE-LISTP))
 (12 12 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (12 12 (:TYPE-PRESCRIPTION IDENTITY))
 (12 12 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (12 6 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (12 6 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (10 1 (:DEFINITION YUL::VALUE-LIST-FIX$INLINE))
 (5 1 (:REWRITE YUL::VALUE-LISTP-OF-CDR-WHEN-VALUE-LISTP))
 (2 2 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 )
(YUL::VALUE-LIST-RESULT-FIX$INLINE
 (78 6 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (36 36 (:REWRITE DEFAULT-CDR))
 (30 6 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (30 6 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (27 27 (:REWRITE DEFAULT-CAR))
 (24 24 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (18 3 (:REWRITE YUL::VALUEP-OF-CAR-WHEN-VALUE-LISTP))
 (12 12 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (12 12 (:TYPE-PRESCRIPTION IDENTITY))
 (12 12 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (12 6 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (12 6 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (10 1 (:DEFINITION YUL::VALUE-LIST-FIX$INLINE))
 (5 1 (:REWRITE YUL::VALUE-LISTP-OF-CDR-WHEN-VALUE-LISTP))
 (2 2 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 (2 2 (:DEFINITION STRIP-CARS))
 )
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT)
(YUL::VALUE-LIST-RESULT-EQUIV$INLINE)
(YUL::VALUE-LIST-RESULT-EQUIV-IS-AN-EQUIVALENCE)
(YUL::VALUE-LIST-RESULT-EQUIV-IMPLIES-EQUAL-VALUE-LIST-RESULT-FIX-1)
(YUL::VALUE-LIST-RESULT-FIX-UNDER-VALUE-LIST-RESULT-EQUIV)
(YUL::EQUAL-OF-VALUE-LIST-RESULT-FIX-1-FORWARD-TO-VALUE-LIST-RESULT-EQUIV)
(YUL::EQUAL-OF-VALUE-LIST-RESULT-FIX-2-FORWARD-TO-VALUE-LIST-RESULT-EQUIV)
(YUL::VALUE-LIST-RESULT-EQUIV-OF-VALUE-LIST-RESULT-FIX-1-FORWARD)
(YUL::VALUE-LIST-RESULT-EQUIV-OF-VALUE-LIST-RESULT-FIX-2-FORWARD)
(YUL::VALUE-LIST-RESULT-KIND$INLINE-OF-VALUE-LIST-RESULT-FIX-X
 (36 12 (:REWRITE YUL::VALUEP-WHEN-WRONG-TAG))
 (12 12 (:REWRITE YUL::TAG-WHEN-VALUEP))
 (12 12 (:REWRITE FTY::TAG-WHEN-RESERRP))
 (5 1 (:REWRITE FTY::RESERR-FIX-WHEN-RESERRP))
 (4 1 (:DEFINITION FTY::RESERRP))
 (3 1 (:DEFINITION YUL::VALUE-LIST-FIX$INLINE))
 (2 2 (:DEFINITION STRIP-CARS))
 (2 1 (:REWRITE FTY::EQUAL-OF-STRIP-CARS))
 (1 1 (:REWRITE YUL::VALUE-LIST-RESULT-FIX-WHEN-VALUE-LIST-RESULTP))
 )
(YUL::VALUE-LIST-RESULT-KIND$INLINE-VALUE-LIST-RESULT-EQUIV-CONGRUENCE-ON-X)
(YUL::VALUE-LIST-RESULT-OK->GET$INLINE)
(YUL::VALUE-LISTP-OF-VALUE-LIST-RESULT-OK->GET
 (20 2 (:REWRITE YUL::VALUE-LIST-FIX-WHEN-VALUE-LISTP))
 (14 2 (:DEFINITION YUL::VALUE-LISTP))
 (12 1 (:DEFINITION YUL::VALUE-LIST-FIX$INLINE))
 (4 4 (:TYPE-PRESCRIPTION YUL::VALUEP))
 )
(YUL::VALUE-LIST-RESULT-OK->GET$INLINE-OF-VALUE-LIST-RESULT-FIX-X
 (70 6 (:DEFINITION YUL::VALUE-LIST-FIX$INLINE))
 (12 12 (:TYPE-PRESCRIPTION YUL::VALUE-LIST-RESULT-FIX$INLINE))
 (12 4 (:REWRITE YUL::VALUE-LIST-RESULT-FIX-WHEN-VALUE-LIST-RESULTP))
 (8 8 (:TYPE-PRESCRIPTION YUL::VALUE-LIST-RESULTP))
 )
(YUL::VALUE-LIST-RESULT-OK->GET$INLINE-VALUE-LIST-RESULT-EQUIV-CONGRUENCE-ON-X)
(YUL::VALUE-LIST-RESULT-OK->GET-WHEN-WRONG-KIND)
(YUL::VALUE-LIST-RESULT-OK
 (2 1 (:DEFINITION YUL::VALUE-LISTP))
 (1 1 (:TYPE-PRESCRIPTION YUL::VALUEP))
 )
(YUL::RETURN-TYPE-OF-VALUE-LIST-RESULT-OK
 (36 4 (:REWRITE YUL::VALUE-LIST-FIX-WHEN-VALUE-LISTP))
 (24 4 (:DEFINITION YUL::VALUE-LISTP))
 (20 2 (:DEFINITION YUL::VALUE-LIST-FIX$INLINE))
 (8 8 (:TYPE-PRESCRIPTION YUL::VALUEP))
 )
(YUL::VALUE-LIST-RESULT-OK->GET-OF-VALUE-LIST-RESULT-OK
 (96 15 (:DEFINITION YUL::VALUE-LISTP))
 (86 8 (:DEFINITION YUL::VALUE-LIST-FIX$INLINE))
 (30 30 (:TYPE-PRESCRIPTION YUL::VALUEP))
 (12 12 (:TYPE-PRESCRIPTION YUL::VALUE-LIST-RESULT-OK))
 )
(YUL::VALUE-LIST-RESULT-OK-OF-FIELDS
 (24 4 (:DEFINITION YUL::VALUE-LISTP))
 (20 2 (:DEFINITION YUL::VALUE-LIST-FIX$INLINE))
 (8 8 (:TYPE-PRESCRIPTION YUL::VALUEP))
 (3 1 (:REWRITE YUL::VALUE-LIST-RESULT-FIX-WHEN-VALUE-LIST-RESULTP))
 (2 2 (:TYPE-PRESCRIPTION YUL::VALUE-LIST-RESULTP))
 )
(YUL::VALUE-LIST-RESULT-FIX-WHEN-OK
 (20 2 (:DEFINITION YUL::VALUE-LIST-FIX$INLINE))
 (18 3 (:DEFINITION YUL::VALUE-LISTP))
 (6 6 (:TYPE-PRESCRIPTION YUL::VALUEP))
 (3 1 (:REWRITE YUL::VALUE-LIST-RESULT-FIX-WHEN-VALUE-LIST-RESULTP))
 (2 2 (:TYPE-PRESCRIPTION YUL::VALUE-LIST-RESULTP))
 )
(YUL::EQUAL-OF-VALUE-LIST-RESULT-OK
 (48 16 (:DEFINITION YUL::VALUE-LIST-FIX$INLINE))
 (29 29 (:DEFINITION YUL::VALUE-LISTP))
 )
(YUL::VALUE-LIST-RESULT-OK-OF-VALUE-LIST-FIX-GET
 (20 2 (:DEFINITION YUL::VALUE-LIST-FIX$INLINE))
 (18 3 (:DEFINITION YUL::VALUE-LISTP))
 (6 6 (:TYPE-PRESCRIPTION YUL::VALUEP))
 )
(YUL::VALUE-LIST-RESULT-OK-VALUE-LIST-EQUIV-CONGRUENCE-ON-GET)
(YUL::VALUE-LIST-RESULT-ERR->GET$INLINE
 (78 6 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (36 36 (:REWRITE DEFAULT-CDR))
 (30 6 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (30 6 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (27 27 (:REWRITE DEFAULT-CAR))
 (24 24 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (18 3 (:REWRITE YUL::VALUEP-OF-CAR-WHEN-VALUE-LISTP))
 (14 14 (:TYPE-PRESCRIPTION IDENTITY))
 (12 12 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (12 12 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (12 6 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (12 6 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (5 1 (:REWRITE YUL::VALUE-LISTP-OF-CDR-WHEN-VALUE-LISTP))
 (2 2 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 (2 2 (:DEFINITION STRIP-CARS))
 )
(YUL::RESERRP-OF-VALUE-LIST-RESULT-ERR->GET
 (63 3 (:REWRITE FTY::RESERR-FIX-WHEN-RESERRP))
 (15 3 (:REWRITE FTY::EQUAL-OF-STRIP-CARS))
 (13 1 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (5 1 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (5 1 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 2 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (2 2 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (2 1 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 )
(YUL::VALUE-LIST-RESULT-ERR->GET$INLINE-OF-VALUE-LIST-RESULT-FIX-X
 (78 5 (:REWRITE FTY::RESERR-FIX-WHEN-RESERRP))
 (68 5 (:DEFINITION FTY::RESERRP))
 (26 26 (:TYPE-PRESCRIPTION STRIP-CARS))
 (19 4 (:REWRITE FTY::EQUAL-OF-STRIP-CARS))
 (18 6 (:REWRITE YUL::VALUE-LIST-RESULT-FIX-WHEN-VALUE-LIST-RESULTP))
 (13 13 (:TYPE-PRESCRIPTION YUL::VALUE-LIST-RESULT-FIX$INLINE))
 (12 12 (:TYPE-PRESCRIPTION YUL::VALUE-LIST-RESULTP))
 (8 8 (:DEFINITION STRIP-CARS))
 (5 5 (:TYPE-PRESCRIPTION FTY::RESERRP))
 (4 4 (:TYPE-PRESCRIPTION ALISTP))
 )
(YUL::VALUE-LIST-RESULT-ERR->GET$INLINE-VALUE-LIST-RESULT-EQUIV-CONGRUENCE-ON-X)
(YUL::VALUE-LIST-RESULT-ERR->GET-WHEN-WRONG-KIND
 (3 1 (:REWRITE FTY::RESERR-FIX-WHEN-RESERRP))
 (1 1 (:TYPE-PRESCRIPTION FTY::RESERRP))
 (1 1 (:DEFINITION FTY::RESERRP))
 )
(YUL::VALUE-LIST-RESULT-ERR
 (39 3 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (17 17 (:REWRITE DEFAULT-CDR))
 (15 3 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (15 3 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (12 12 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (12 12 (:REWRITE DEFAULT-CAR))
 (6 6 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (6 6 (:TYPE-PRESCRIPTION IDENTITY))
 (6 6 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (6 3 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (6 3 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (2 2 (:DEFINITION STRIP-CARS))
 )
(YUL::RETURN-TYPE-OF-VALUE-LIST-RESULT-ERR
 (26 2 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (10 2 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (10 2 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (8 8 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (8 8 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (4 4 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (4 2 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (4 2 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 )
(YUL::VALUE-LIST-RESULT-ERR->GET-OF-VALUE-LIST-RESULT-ERR
 (30 24 (:TYPE-PRESCRIPTION IDENTITY))
 (23 1 (:REWRITE FTY::RESERR-FIX-WHEN-RESERRP))
 (21 1 (:DEFINITION FTY::RESERRP))
 (16 16 (:TYPE-PRESCRIPTION YUL::VALUE-LIST-RESULT-ERR))
 (6 6 (:TYPE-PRESCRIPTION STRIP-CARS))
 (6 1 (:REWRITE FTY::EQUAL-OF-STRIP-CARS))
 (2 2 (:DEFINITION STRIP-CARS))
 (1 1 (:TYPE-PRESCRIPTION FTY::RESERRP))
 (1 1 (:TYPE-PRESCRIPTION ALISTP))
 )
(YUL::VALUE-LIST-RESULT-ERR-OF-FIELDS
 (26 2 (:REWRITE FTY::RESERR-FIX-WHEN-RESERRP))
 (22 2 (:DEFINITION FTY::RESERRP))
 (18 18 (:TYPE-PRESCRIPTION IDENTITY))
 (12 12 (:TYPE-PRESCRIPTION STRIP-CARS))
 (8 2 (:REWRITE FTY::EQUAL-OF-STRIP-CARS))
 (4 4 (:DEFINITION STRIP-CARS))
 (3 1 (:REWRITE YUL::VALUE-LIST-RESULT-FIX-WHEN-VALUE-LIST-RESULTP))
 (2 2 (:TYPE-PRESCRIPTION YUL::VALUE-LIST-RESULTP))
 (2 2 (:TYPE-PRESCRIPTION FTY::RESERRP))
 (2 2 (:TYPE-PRESCRIPTION ALISTP))
 )
(YUL::VALUE-LIST-RESULT-FIX-WHEN-ERR
 (18 18 (:TYPE-PRESCRIPTION IDENTITY))
 (14 2 (:REWRITE FTY::RESERR-FIX-WHEN-RESERRP))
 (11 1 (:DEFINITION FTY::RESERRP))
 (6 6 (:TYPE-PRESCRIPTION STRIP-CARS))
 (4 1 (:REWRITE FTY::EQUAL-OF-STRIP-CARS))
 (3 1 (:REWRITE YUL::VALUE-LIST-RESULT-FIX-WHEN-VALUE-LIST-RESULTP))
 (2 2 (:TYPE-PRESCRIPTION YUL::VALUE-LIST-RESULTP))
 (2 2 (:DEFINITION STRIP-CARS))
 (1 1 (:TYPE-PRESCRIPTION FTY::RESERRP))
 (1 1 (:TYPE-PRESCRIPTION ALISTP))
 )
(YUL::EQUAL-OF-VALUE-LIST-RESULT-ERR
 (152 6 (:REWRITE FTY::RESERR-FIX-WHEN-RESERRP))
 (134 6 (:DEFINITION FTY::RESERRP))
 (52 4 (:REWRITE OMAP::ALISTP-WHEN-MAPP))
 (38 2 (:DEFINITION ALISTP))
 (30 6 (:REWRITE FTY::EQUAL-OF-STRIP-CARS))
 (24 12 (:DEFINITION STRIP-CARS))
 (23 23 (:REWRITE DEFAULT-CAR))
 (22 22 (:REWRITE DEFAULT-CDR))
 (20 4 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (20 4 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (16 16 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (12 12 (:TYPE-PRESCRIPTION STRIP-CARS))
 (10 2 (:REWRITE FTY::RESERRP-WHEN-RESERR-OPTIONP))
 (8 8 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (8 8 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (8 8 (:TYPE-PRESCRIPTION ALISTP))
 (8 4 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (8 4 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (4 4 (:TYPE-PRESCRIPTION FTY::RESERRP))
 (4 4 (:TYPE-PRESCRIPTION FTY::RESERR-OPTIONP))
 (4 2 (:REWRITE FTY::RESERR-OPTIONP-WHEN-RESERRP))
 )
(YUL::VALUE-LIST-RESULT-ERR-OF-RESERR-FIX-GET
 (12 12 (:TYPE-PRESCRIPTION IDENTITY))
 )
(YUL::VALUE-LIST-RESULT-ERR-RESERR-EQUIV-CONGRUENCE-ON-GET)
(YUL::VALUE-LIST-RESULT-FIX-REDEF
 (9 3 (:REWRITE YUL::VALUE-LIST-RESULT-FIX-WHEN-VALUE-LIST-RESULTP))
 (6 6 (:TYPE-PRESCRIPTION YUL::VALUE-LIST-RESULTP))
 )
(YUL::VALUE-LIST-RESULTP-WHEN-VALUE-LISTP)
(YUL::VALUE-LIST-RESULTP-WHEN-RESERRP)
(YUL::VALUE-LISTP-WHEN-VALUE-LIST-RESULTP-AND-NOT-RESERRP)
(YUL::NOT-RESERRP-WHEN-VALUE-LISTP
 (1 1 (:REWRITE YUL::VALUE-LISTP-WHEN-NOT-CONSP))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
