(ACL2-USER::POSITIVE-EVEN-P)
(ACL2-USER::BOOLEANP-OF-POSITIVE-EVEN-P)
(ACL2-USER::POSP-WHEN-POSITIVE-EVEN-P-REWRITE)
(ACL2-USER::POSP-WHEN-POSITIVE-EVEN-P-FORWARD)
(ACL2-USER::POSITIVE-EVEN-FIX
 (1 1 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-FIX))
 )
(ACL2-USER::POSITIVE-EVEN-P-OF-POSITIVE-EVEN-FIX)
(ACL2-USER::POSITIVE-EVEN-FIX-WHEN-POSITIVE-EVEN-P)
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT
 (33 33 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-FIX))
 )
(ACL2-USER::POSITIVE-EVEN-EQUIV$INLINE
 (4 4 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-FIX))
 )
(ACL2-USER::POSITIVE-EVEN-EQUIV-IS-AN-EQUIVALENCE)
(ACL2-USER::POSITIVE-EVEN-EQUIV-IMPLIES-EQUAL-POSITIVE-EVEN-FIX-1)
(ACL2-USER::POSITIVE-EVEN-FIX-UNDER-POSITIVE-EVEN-EQUIV)
(ACL2-USER::EQUAL-OF-POSITIVE-EVEN-FIX-1-FORWARD-TO-POSITIVE-EVEN-EQUIV)
(ACL2-USER::EQUAL-OF-POSITIVE-EVEN-FIX-2-FORWARD-TO-POSITIVE-EVEN-EQUIV)
(ACL2-USER::POSITIVE-EVEN-EQUIV-OF-POSITIVE-EVEN-FIX-1-FORWARD)
(ACL2-USER::POSITIVE-EVEN-EQUIV-OF-POSITIVE-EVEN-FIX-2-FORWARD)
(ACL2-USER::CHECK-POSITIVE-EVEN-FIX
 (11 11 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-FIX))
 (1 1 (:REWRITE ACL2-USER::POSITIVE-EVEN-FIX-WHEN-POSITIVE-EVEN-P))
 )
(ACL2-USER::POS-EVEN-LIST-P)
(STD::DEFLIST-LOCAL-BOOLEANP-ELEMENT-THM)
(ACL2-USER::POS-EVEN-LIST-P-OF-CONS)
(ACL2-USER::POS-EVEN-LIST-P-OF-CDR-WHEN-POS-EVEN-LIST-P)
(ACL2-USER::POS-EVEN-LIST-P-WHEN-NOT-CONSP)
(ACL2-USER::POSITIVE-EVEN-P-OF-CAR-WHEN-POS-EVEN-LIST-P)
(ACL2-USER::TRUE-LISTP-WHEN-POS-EVEN-LIST-P)
(ACL2-USER::POS-EVEN-LIST-P-OF-LIST-FIX)
(ACL2-USER::POS-EVEN-LIST-P-OF-REV)
(ACL2-USER::POS-EVEN-LIST-FIX$INLINE
 (1 1 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-FIX))
 )
(ACL2-USER::POS-EVEN-LIST-P-OF-POS-EVEN-LIST-FIX
 (15 1 (:REWRITE ACL2-USER::POSITIVE-EVEN-FIX-WHEN-POSITIVE-EVEN-P))
 (12 2 (:REWRITE ACL2-USER::POSITIVE-EVEN-P-OF-CAR-WHEN-POS-EVEN-LIST-P))
 (9 5 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-WHEN-NOT-CONSP))
 (9 1 (:DEFINITION ACL2-USER::POS-EVEN-LIST-P))
 (4 4 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-P))
 (2 1 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-OF-CDR-WHEN-POS-EVEN-LIST-P))
 )
(ACL2-USER::POS-EVEN-LIST-FIX-WHEN-POS-EVEN-LIST-P
 (17 4 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-OF-CDR-WHEN-POS-EVEN-LIST-P))
 (9 3 (:REWRITE ACL2-USER::POSITIVE-EVEN-P-OF-CAR-WHEN-POS-EVEN-LIST-P))
 )
(ACL2-USER::POS-EVEN-LIST-FIX$INLINE
 (4 4 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-WHEN-NOT-CONSP))
 (4 1 (:REWRITE ACL2-USER::POSITIVE-EVEN-P-OF-CAR-WHEN-POS-EVEN-LIST-P))
 (4 1 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-OF-CDR-WHEN-POS-EVEN-LIST-P))
 )
(FTY::TMP-DEFFIXTYPE-IDEMPOTENT
 (1 1 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-WHEN-NOT-CONSP))
 )
(ACL2-USER::POS-EVEN-LIST-EQUIV$INLINE)
(ACL2-USER::POS-EVEN-LIST-EQUIV-IS-AN-EQUIVALENCE)
(ACL2-USER::POS-EVEN-LIST-EQUIV-IMPLIES-EQUAL-POS-EVEN-LIST-FIX-1)
(ACL2-USER::POS-EVEN-LIST-FIX-UNDER-POS-EVEN-LIST-EQUIV)
(ACL2-USER::EQUAL-OF-POS-EVEN-LIST-FIX-1-FORWARD-TO-POS-EVEN-LIST-EQUIV)
(ACL2-USER::EQUAL-OF-POS-EVEN-LIST-FIX-2-FORWARD-TO-POS-EVEN-LIST-EQUIV)
(ACL2-USER::POS-EVEN-LIST-EQUIV-OF-POS-EVEN-LIST-FIX-1-FORWARD)
(ACL2-USER::POS-EVEN-LIST-EQUIV-OF-POS-EVEN-LIST-FIX-2-FORWARD)
(ACL2-USER::CAR-OF-POS-EVEN-LIST-FIX-X-UNDER-POSITIVE-EVEN-EQUIV
 (21 3 (:REWRITE ACL2-USER::POSITIVE-EVEN-FIX-WHEN-POSITIVE-EVEN-P))
 (12 12 (:TYPE-PRESCRIPTION ACL2-USER::POS-EVEN-LIST-P))
 (12 3 (:REWRITE ACL2-USER::POSITIVE-EVEN-P-OF-CAR-WHEN-POS-EVEN-LIST-P))
 (12 2 (:REWRITE ACL2-USER::POS-EVEN-LIST-FIX-WHEN-POS-EVEN-LIST-P))
 (6 6 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-P))
 (6 6 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-WHEN-NOT-CONSP))
 (4 1 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-OF-CDR-WHEN-POS-EVEN-LIST-P))
 (3 3 (:TYPE-PRESCRIPTION ACL2-USER::POS-EVEN-LIST-FIX$INLINE))
 )
(ACL2-USER::CAR-POS-EVEN-LIST-EQUIV-CONGRUENCE-ON-X-UNDER-POSITIVE-EVEN-EQUIV)
(ACL2-USER::CDR-OF-POS-EVEN-LIST-FIX-X-UNDER-POS-EVEN-LIST-EQUIV
 (29 3 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-OF-CDR-WHEN-POS-EVEN-LIST-P))
 (14 2 (:REWRITE ACL2-USER::POSITIVE-EVEN-FIX-WHEN-POSITIVE-EVEN-P))
 (8 2 (:REWRITE ACL2-USER::POSITIVE-EVEN-P-OF-CAR-WHEN-POS-EVEN-LIST-P))
 (4 4 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-P))
 )
(ACL2-USER::CDR-POS-EVEN-LIST-EQUIV-CONGRUENCE-ON-X-UNDER-POS-EVEN-LIST-EQUIV)
(ACL2-USER::CONS-OF-POSITIVE-EVEN-FIX-X-UNDER-POS-EVEN-LIST-EQUIV
 (20 4 (:REWRITE ACL2-USER::POS-EVEN-LIST-FIX-WHEN-POS-EVEN-LIST-P))
 (9 2 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-OF-CONS))
 (6 6 (:TYPE-PRESCRIPTION ACL2-USER::POS-EVEN-LIST-P))
 (5 5 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-WHEN-NOT-CONSP))
 )
(ACL2-USER::CONS-POSITIVE-EVEN-EQUIV-CONGRUENCE-ON-X-UNDER-POS-EVEN-LIST-EQUIV)
(ACL2-USER::CONS-OF-POS-EVEN-LIST-FIX-Y-UNDER-POS-EVEN-LIST-EQUIV
 (12 2 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-OF-CONS))
 (8 8 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-P))
 (5 4 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-WHEN-NOT-CONSP))
 (4 2 (:REWRITE ACL2-USER::POSITIVE-EVEN-FIX-WHEN-POSITIVE-EVEN-P))
 )
(ACL2-USER::CONS-POS-EVEN-LIST-EQUIV-CONGRUENCE-ON-Y-UNDER-POS-EVEN-LIST-EQUIV)
(ACL2-USER::CONSP-OF-POS-EVEN-LIST-FIX
 (12 2 (:REWRITE ACL2-USER::POS-EVEN-LIST-FIX-WHEN-POS-EVEN-LIST-P))
 (8 8 (:TYPE-PRESCRIPTION ACL2-USER::POS-EVEN-LIST-P))
 (7 1 (:REWRITE ACL2-USER::POSITIVE-EVEN-FIX-WHEN-POSITIVE-EVEN-P))
 (4 4 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-WHEN-NOT-CONSP))
 (4 1 (:REWRITE ACL2-USER::POSITIVE-EVEN-P-OF-CAR-WHEN-POS-EVEN-LIST-P))
 (4 1 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-OF-CDR-WHEN-POS-EVEN-LIST-P))
 (2 2 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-P))
 )
(ACL2-USER::POS-EVEN-LIST-FIX-UNDER-IFF
 (12 2 (:REWRITE ACL2-USER::POS-EVEN-LIST-FIX-WHEN-POS-EVEN-LIST-P))
 (8 8 (:TYPE-PRESCRIPTION ACL2-USER::POS-EVEN-LIST-P))
 (7 1 (:REWRITE ACL2-USER::POSITIVE-EVEN-FIX-WHEN-POSITIVE-EVEN-P))
 (4 4 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-WHEN-NOT-CONSP))
 (4 1 (:REWRITE ACL2-USER::POSITIVE-EVEN-P-OF-CAR-WHEN-POS-EVEN-LIST-P))
 (4 1 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-OF-CDR-WHEN-POS-EVEN-LIST-P))
 (2 2 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-P))
 )
(ACL2-USER::POS-EVEN-LIST-FIX-OF-CONS
 (13 3 (:REWRITE ACL2-USER::POS-EVEN-LIST-FIX-WHEN-POS-EVEN-LIST-P))
 (5 1 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-OF-CONS))
 (4 4 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-P))
 (4 4 (:TYPE-PRESCRIPTION ACL2-USER::POS-EVEN-LIST-P))
 (4 2 (:REWRITE ACL2-USER::POSITIVE-EVEN-FIX-WHEN-POSITIVE-EVEN-P))
 (3 3 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-WHEN-NOT-CONSP))
 )
(ACL2-USER::LEN-OF-POS-EVEN-LIST-FIX
 (23 4 (:REWRITE ACL2-USER::POS-EVEN-LIST-FIX-WHEN-POS-EVEN-LIST-P))
 (13 13 (:TYPE-PRESCRIPTION ACL2-USER::POS-EVEN-LIST-P))
 (8 2 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-OF-CDR-WHEN-POS-EVEN-LIST-P))
 (7 7 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-WHEN-NOT-CONSP))
 (7 1 (:REWRITE ACL2-USER::POSITIVE-EVEN-FIX-WHEN-POSITIVE-EVEN-P))
 (4 1 (:REWRITE ACL2-USER::POSITIVE-EVEN-P-OF-CAR-WHEN-POS-EVEN-LIST-P))
 (2 2 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-P))
 (1 1 (:REWRITE FTY::EQUAL-OF-LEN))
 )
(ACL2-USER::POS-EVEN-LIST-FIX-OF-APPEND
 (56 10 (:REWRITE ACL2-USER::POS-EVEN-LIST-FIX-WHEN-POS-EVEN-LIST-P))
 (23 23 (:TYPE-PRESCRIPTION ACL2-USER::POS-EVEN-LIST-P))
 (18 12 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-WHEN-NOT-CONSP))
 (8 2 (:REWRITE ACL2-USER::POSITIVE-EVEN-FIX-WHEN-POSITIVE-EVEN-P))
 (8 2 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-OF-CDR-WHEN-POS-EVEN-LIST-P))
 (4 1 (:REWRITE ACL2-USER::POSITIVE-EVEN-P-OF-CAR-WHEN-POS-EVEN-LIST-P))
 (2 2 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-P))
 )
(ACL2-USER::POS-EVEN-LIST-FIX-OF-REPEAT
 (20 2 (:REWRITE ACL2-USER::POS-EVEN-LIST-FIX-WHEN-POS-EVEN-LIST-P))
 (10 4 (:REWRITE ACL2-USER::POSITIVE-EVEN-FIX-WHEN-POSITIVE-EVEN-P))
 (8 2 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-WHEN-NOT-CONSP))
 (6 6 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-P))
 (4 4 (:TYPE-PRESCRIPTION ACL2-USER::POS-EVEN-LIST-P))
 (1 1 (:REWRITE-QUOTED-CONSTANT ACL2-USER::POS-EVEN-LIST-FIX-UNDER-POS-EVEN-LIST-EQUIV))
 )
(ACL2-USER::LIST-EQUIV-REFINES-POS-EVEN-LIST-EQUIV
 (98 14 (:REWRITE ACL2-USER::POS-EVEN-LIST-FIX-WHEN-POS-EVEN-LIST-P))
 (72 8 (:REWRITE ACL2-USER::POSITIVE-EVEN-FIX-WHEN-POSITIVE-EVEN-P))
 (70 70 (:TYPE-PRESCRIPTION ACL2-USER::POS-EVEN-LIST-P))
 (60 18 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-OF-CDR-WHEN-POS-EVEN-LIST-P))
 (48 8 (:REWRITE ACL2-USER::POSITIVE-EVEN-P-OF-CAR-WHEN-POS-EVEN-LIST-P))
 (36 36 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-WHEN-NOT-CONSP))
 (16 16 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-P))
 )
(ACL2-USER::NTH-OF-POS-EVEN-LIST-FIX
 (279 279 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-FIX))
 (144 21 (:REWRITE ACL2-USER::POS-EVEN-LIST-FIX-WHEN-POS-EVEN-LIST-P))
 (89 19 (:REWRITE ACL2-USER::POSITIVE-EVEN-FIX-WHEN-POSITIVE-EVEN-P))
 (64 16 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-OF-CDR-WHEN-POS-EVEN-LIST-P))
 (44 44 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-WHEN-NOT-CONSP))
 (38 38 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-P))
 (32 25 (:REWRITE DEFAULT-+-2))
 (32 8 (:REWRITE ACL2-USER::POSITIVE-EVEN-P-OF-CAR-WHEN-POS-EVEN-LIST-P))
 (29 20 (:REWRITE DEFAULT-CDR))
 (25 25 (:REWRITE DEFAULT-+-1))
 (23 8 (:REWRITE ZP-OPEN))
 (20 20 (:REWRITE ACL2-USER::CONSP-OF-POS-EVEN-LIST-FIX))
 (19 15 (:REWRITE DEFAULT-<-2))
 (15 15 (:REWRITE DEFAULT-<-1))
 (15 6 (:REWRITE DEFAULT-CAR))
 (15 5 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE-QUOTED-CONSTANT ACL2-USER::POSITIVE-EVEN-FIX-UNDER-POSITIVE-EVEN-EQUIV))
 )
(ACL2-USER::POS-EVEN-LIST-EQUIV-IMPLIES-POS-EVEN-LIST-EQUIV-APPEND-1
 (181 32 (:REWRITE ACL2-USER::POS-EVEN-LIST-FIX-WHEN-POS-EVEN-LIST-P))
 (131 17 (:REWRITE ACL2-USER::POSITIVE-EVEN-FIX-WHEN-POSITIVE-EVEN-P))
 (126 126 (:TYPE-PRESCRIPTION ACL2-USER::POS-EVEN-LIST-P))
 (80 17 (:REWRITE ACL2-USER::POSITIVE-EVEN-P-OF-CAR-WHEN-POS-EVEN-LIST-P))
 (79 22 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-OF-CDR-WHEN-POS-EVEN-LIST-P))
 (64 64 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-WHEN-NOT-CONSP))
 (34 34 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-P))
 )
(ACL2-USER::POS-EVEN-LIST-EQUIV-IMPLIES-POS-EVEN-LIST-EQUIV-APPEND-2
 (267 46 (:REWRITE ACL2-USER::POS-EVEN-LIST-FIX-WHEN-POS-EVEN-LIST-P))
 (206 26 (:REWRITE ACL2-USER::POSITIVE-EVEN-FIX-WHEN-POSITIVE-EVEN-P))
 (189 189 (:TYPE-PRESCRIPTION ACL2-USER::POS-EVEN-LIST-P))
 (138 39 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-OF-CDR-WHEN-POS-EVEN-LIST-P))
 (128 26 (:REWRITE ACL2-USER::POSITIVE-EVEN-P-OF-CAR-WHEN-POS-EVEN-LIST-P))
 (95 95 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-WHEN-NOT-CONSP))
 (52 52 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-P))
 (4 4 (:REWRITE ACL2-USER::CONSP-OF-POS-EVEN-LIST-FIX))
 )
(ACL2-USER::POS-EVEN-LIST-EQUIV-IMPLIES-POS-EVEN-LIST-EQUIV-NTHCDR-2
 (249 39 (:REWRITE ACL2-USER::POS-EVEN-LIST-FIX-WHEN-POS-EVEN-LIST-P))
 (175 175 (:TYPE-PRESCRIPTION ACL2-USER::POS-EVEN-LIST-P))
 (174 22 (:REWRITE ACL2-USER::POSITIVE-EVEN-FIX-WHEN-POSITIVE-EVEN-P))
 (117 33 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-OF-CDR-WHEN-POS-EVEN-LIST-P))
 (108 22 (:REWRITE ACL2-USER::POSITIVE-EVEN-P-OF-CAR-WHEN-POS-EVEN-LIST-P))
 (88 88 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-WHEN-NOT-CONSP))
 (44 44 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-P))
 )
(ACL2-USER::POS-EVEN-LIST-EQUIV-IMPLIES-POS-EVEN-LIST-EQUIV-TAKE-2
 (326 38 (:REWRITE ACL2-USER::POS-EVEN-LIST-FIX-WHEN-POS-EVEN-LIST-P))
 (222 28 (:REWRITE ACL2-USER::POSITIVE-EVEN-FIX-WHEN-POSITIVE-EVEN-P))
 (190 190 (:TYPE-PRESCRIPTION ACL2-USER::POS-EVEN-LIST-P))
 (149 39 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-OF-CDR-WHEN-POS-EVEN-LIST-P))
 (140 26 (:REWRITE ACL2-USER::POSITIVE-EVEN-P-OF-CAR-WHEN-POS-EVEN-LIST-P))
 (119 95 (:REWRITE ACL2-USER::POS-EVEN-LIST-P-WHEN-NOT-CONSP))
 (54 54 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-P))
 (40 40 (:TYPE-PRESCRIPTION ACL2-USER::POSITIVE-EVEN-FIX))
 (6 6 (:REWRITE-QUOTED-CONSTANT ACL2-USER::POS-EVEN-LIST-FIX-UNDER-POS-EVEN-LIST-EQUIV))
 )
