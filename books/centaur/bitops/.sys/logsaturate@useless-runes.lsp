(BITOPS::LOGSATURATE)
(BITOPS::INTEGERP-OF-LOGSATURATE)
(BITOPS::SIGNED-BYTE-P-IMPLIES-POSP
 (7 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 2 (:REWRITE EXPT-WITH-VIOLATED-GUARDS))
 (1 1 (:REWRITE BITOPS::SIGNED-BYTE-P-MONOTONICITY))
 (1 1 (:REWRITE BITOPS::SIGNED-BYTE-P-INCR))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(BITOPS::LOGTAIL-WHEN-SIGNED-BYTE-P-NEG
 (244 4 (:REWRITE LOGTAIL-IDENTITY))
 (214 8 (:DEFINITION UNSIGNED-BYTE-P**))
 (104 16 (:REWRITE UNSIGNED-BYTE-P-PLUS))
 (75 62 (:TYPE-PRESCRIPTION BITOPS::LOGCDR-NATP))
 (60 60 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (50 18 (:REWRITE BITOPS::LOGCDR-OF-BIT))
 (37 31 (:REWRITE DEFAULT-+-2))
 (31 31 (:REWRITE DEFAULT-+-1))
 (30 10 (:REWRITE ZP-WHEN-GT-0))
 (26 24 (:REWRITE DEFAULT-<-2))
 (25 18 (:REWRITE BITOPS::SIGNED-BYTE-P-MONOTONICITY))
 (24 24 (:REWRITE DEFAULT-<-1))
 (22 22 (:REWRITE BITOPS::UNSIGNED-BYTE-P-INCR))
 (22 10 (:REWRITE ZP-WHEN-INTEGERP))
 (21 14 (:REWRITE BITOPS::SIGNED-BYTE-P-INCR))
 (14 6 (:REWRITE NATP-WHEN-GTE-0))
 (13 5 (:REWRITE NFIX-WHEN-NOT-NATP))
 (10 10 (:LINEAR BITOPS::LOGCDR-<=-LOGCDR))
 (8 8 (:TYPE-PRESCRIPTION BITP))
 (7 7 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (6 6 (:REWRITE ZP-OPEN))
 (6 6 (:REWRITE NATP-WHEN-INTEGERP))
 (2 2 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (1 1 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (1 1 (:REWRITE-QUOTED-CONSTANT BFIX-UNDER-BIT-EQUIV))
 (1 1 (:INDUCTION BITOPS::SIGNED-BYTE-P-INDUCT))
 )
(BITOPS::LOGTAIL-WHEN-SIGNED-BYTE-P-NONNEG
 (216 4 (:REWRITE LOGTAIL-IDENTITY))
 (186 8 (:DEFINITION UNSIGNED-BYTE-P**))
 (105 5 (:REWRITE BITOPS::LOGTAIL-WHEN-SIGNED-BYTE-P-NEG))
 (94 16 (:REWRITE UNSIGNED-BYTE-P-PLUS))
 (61 19 (:REWRITE BITOPS::LOGCDR-OF-BIT))
 (60 60 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (48 42 (:REWRITE DEFAULT-+-2))
 (46 25 (:REWRITE BITOPS::SIGNED-BYTE-P-MONOTONICITY))
 (42 42 (:REWRITE DEFAULT-+-1))
 (39 18 (:REWRITE BITOPS::SIGNED-BYTE-P-INCR))
 (32 26 (:REWRITE DEFAULT-<-2))
 (30 30 (:TYPE-PRESCRIPTION BITP))
 (27 9 (:REWRITE ZP-WHEN-GT-0))
 (26 26 (:REWRITE DEFAULT-<-1))
 (22 22 (:REWRITE BITOPS::UNSIGNED-BYTE-P-INCR))
 (21 9 (:REWRITE ZP-WHEN-INTEGERP))
 (16 8 (:REWRITE NFIX-WHEN-NOT-NATP))
 (14 6 (:REWRITE NATP-WHEN-GTE-0))
 (8 8 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (6 6 (:REWRITE NATP-WHEN-INTEGERP))
 (5 5 (:REWRITE ZP-OPEN))
 (4 4 (:LINEAR BITOPS::LOGCDR-<=-LOGCDR))
 (1 1 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (1 1 (:INDUCTION BITOPS::SIGNED-BYTE-P-INDUCT))
 )
(BITOPS::LOGAPP-WHEN-SIGNED-BYTE-P-NEG
 (55 41 (:TYPE-PRESCRIPTION BITOPS::LOGCDR-NATP))
 (29 23 (:REWRITE DEFAULT-+-2))
 (25 18 (:REWRITE BITOPS::SIGNED-BYTE-P-MONOTONICITY))
 (23 23 (:REWRITE DEFAULT-+-1))
 (22 22 (:TYPE-PRESCRIPTION NATP))
 (21 14 (:REWRITE BITOPS::SIGNED-BYTE-P-INCR))
 (18 6 (:REWRITE ZP-WHEN-GT-0))
 (16 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (13 13 (:REWRITE BITOPS::LOGCDR-OF-BIT))
 (13 5 (:REWRITE NFIX-WHEN-NOT-NATP))
 (8 4 (:REWRITE NATP-WHEN-GTE-0))
 (6 6 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (6 6 (:REWRITE ZP-WHEN-INTEGERP))
 (6 6 (:REWRITE ZP-OPEN))
 (6 6 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (4 4 (:REWRITE NATP-WHEN-INTEGERP))
 (3 3 (:REWRITE BITOPS::LOGCAR-OF-BIT))
 (2 2 (:LINEAR BITOPS::LOGCDR-<=-LOGCDR))
 (1 1 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (1 1 (:REWRITE-QUOTED-CONSTANT BFIX-UNDER-BIT-EQUIV))
 (1 1 (:INDUCTION BITOPS::SIGNED-BYTE-P-INDUCT))
 )
(BITOPS::LOGAPP-WHEN-SIGNED-BYTE-P-NONNEG
 (32 12 (:REWRITE BITOPS::LOGCDR-OF-BIT))
 (29 23 (:REWRITE DEFAULT-+-2))
 (26 26 (:TYPE-PRESCRIPTION BITP))
 (25 25 (:TYPE-PRESCRIPTION NATP))
 (25 18 (:REWRITE BITOPS::SIGNED-BYTE-P-MONOTONICITY))
 (23 23 (:REWRITE DEFAULT-+-1))
 (21 14 (:REWRITE BITOPS::SIGNED-BYTE-P-INCR))
 (15 5 (:REWRITE ZP-WHEN-GT-0))
 (14 12 (:REWRITE DEFAULT-<-2))
 (13 5 (:REWRITE NFIX-WHEN-NOT-NATP))
 (12 12 (:REWRITE DEFAULT-<-1))
 (9 3 (:REWRITE BITOPS::LOGCAR-OF-BIT))
 (8 4 (:REWRITE NATP-WHEN-GTE-0))
 (5 5 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (5 5 (:REWRITE ZP-WHEN-INTEGERP))
 (5 5 (:REWRITE ZP-OPEN))
 (5 5 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (4 4 (:REWRITE NATP-WHEN-INTEGERP))
 (2 2 (:LINEAR BITOPS::LOGCDR-<=-LOGCDR))
 (1 1 (:INDUCTION BITOPS::SIGNED-BYTE-P-INDUCT))
 )
(BITOPS::LOGSATURATE-WHEN-SIGNED-BYTE-P
 (20 7 (:REWRITE NFIX-WHEN-NOT-NATP))
 (12 6 (:REWRITE DEFAULT-+-2))
 (8 8 (:TYPE-PRESCRIPTION NATP))
 (8 4 (:REWRITE NATP-WHEN-GTE-0))
 (6 6 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE NATP-WHEN-INTEGERP))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (1 1 (:REWRITE BITOPS::SIGNED-BYTE-P-INCR))
 (1 1 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 )
(BITOPS::LOGAPP-NONNEG-GTE-ASH
 (39 31 (:REWRITE DEFAULT-<-2))
 (38 31 (:REWRITE DEFAULT-<-1))
 (36 9 (:REWRITE ASH-0))
 (30 22 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (29 13 (:REWRITE ZIP-OPEN))
 (22 10 (:REWRITE ZP-WHEN-GT-0))
 (22 2 (:REWRITE NFIX-POSITIVE-TO-NON-ZP))
 (18 18 (:TYPE-PRESCRIPTION ZIP))
 (13 11 (:REWRITE DEFAULT-+-2))
 (12 12 (:TYPE-PRESCRIPTION BITP))
 (12 4 (:REWRITE NFIX-WHEN-NOT-NATP))
 (12 4 (:REWRITE NEGP-WHEN-LESS-THAN-0))
 (12 4 (:REWRITE BITOPS::LOGCAR-OF-BIT))
 (11 11 (:REWRITE DEFAULT-+-1))
 (11 1 (:REWRITE BFIX-WHEN-NOT-1))
 (10 10 (:REWRITE ZP-WHEN-INTEGERP))
 (10 10 (:REWRITE ZP-OPEN))
 (8 8 (:TYPE-PRESCRIPTION NATP))
 (8 4 (:REWRITE NATP-WHEN-GTE-0))
 (8 2 (:REWRITE NFIX-EQUAL-TO-ZERO))
 (6 6 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (6 6 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (6 6 (:REWRITE-QUOTED-CONSTANT BFIX-UNDER-BIT-EQUIV))
 (6 2 (:REWRITE BITOPS::LOGCDR-OF-BIT))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (5 1 (:REWRITE BITOPS::LOGTAIL-WHEN-SIGNED-BYTE-P-NONNEG))
 (5 1 (:REWRITE BITOPS::LOGTAIL-WHEN-SIGNED-BYTE-P-NEG))
 (5 1 (:LINEAR BITOPS::LOGCAR-BOUND))
 (4 4 (:REWRITE NEGP-WHEN-INTEGERP))
 (4 4 (:REWRITE NATP-WHEN-INTEGERP))
 (2 2 (:TYPE-PRESCRIPTION SIGNED-BYTE-P))
 (2 2 (:TYPE-PRESCRIPTION BIT->BOOL$INLINE))
 (2 2 (:REWRITE BITOPS::SIGNED-BYTE-P-MONOTONICITY))
 (2 2 (:REWRITE BITOPS::SIGNED-BYTE-P-INCR))
 (2 2 (:REWRITE NFIX-EQUAL-TO-NONZERO-CONST))
 (2 2 (:REWRITE NFIX-EQUAL-TO-NONZERO))
 (2 2 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (2 2 (:REWRITE INEQUALITY-WITH-NFIX-HYP-1))
 (2 2 (:DEFINITION SIGNED-BYTE-P**))
 (2 1 (:REWRITE BFIX-WHEN-NOT-BITP))
 (2 1 (:REWRITE BFIX-WHEN-NOT-BIT->BOOL))
 (2 1 (:REWRITE BFIX-WHEN-BIT->BOOL))
 (1 1 (:REWRITE IFIX-UNDER-INT-EQUIV))
 (1 1 (:INDUCTION BITOPS::ASH**-INDUCT))
 )
(BITOPS::LOGTAIL-NONZERO-WHEN-GTE-ASH
 (860 8 (:REWRITE LOGTAIL-IDENTITY))
 (786 20 (:DEFINITION UNSIGNED-BYTE-P**))
 (627 313 (:TYPE-PRESCRIPTION BITOPS::LOGCDR-NATP))
 (426 22 (:DEFINITION SIGNED-BYTE-P**))
 (413 11 (:REWRITE BITOPS::LOGTAIL-WHEN-SIGNED-BYTE-P-NEG))
 (368 40 (:REWRITE UNSIGNED-BYTE-P-PLUS))
 (353 49 (:REWRITE BITOPS::LOGCDR-OF-BIT))
 (305 146 (:TYPE-PRESCRIPTION BITOPS::LOGCONS-POSP-1))
 (244 34 (:REWRITE RIGHT-SHIFT-TO-LOGTAIL))
 (213 171 (:REWRITE DEFAULT-+-2))
 (171 171 (:REWRITE DEFAULT-+-1))
 (162 118 (:REWRITE DEFAULT-<-2))
 (161 146 (:TYPE-PRESCRIPTION BITOPS::LOGCONS-POSP-2))
 (146 146 (:TYPE-PRESCRIPTION POSP))
 (144 144 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (138 118 (:REWRITE DEFAULT-<-1))
 (94 94 (:TYPE-PRESCRIPTION BITP))
 (70 26 (:REWRITE ZP-WHEN-GT-0))
 (68 68 (:REWRITE BITOPS::SIGNED-BYTE-P-MONOTONICITY))
 (59 27 (:REWRITE NFIX-WHEN-NOT-NATP))
 (56 26 (:REWRITE ZP-WHEN-INTEGERP))
 (54 54 (:REWRITE BITOPS::UNSIGNED-BYTE-P-INCR))
 (47 47 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (46 46 (:REWRITE BITOPS::SIGNED-BYTE-P-INCR))
 (46 16 (:REWRITE NATP-WHEN-INTEGERP))
 (32 32 (:REWRITE ASH-0))
 (32 16 (:REWRITE NATP-WHEN-GTE-0))
 (31 15 (:REWRITE ZIP-OPEN))
 (29 29 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (29 29 (:REWRITE-QUOTED-CONSTANT BFIX-UNDER-BIT-EQUIV))
 (28 28 (:LINEAR BITOPS::LOGCDR-<=-LOGCDR))
 (22 2 (:REWRITE NFIX-POSITIVE-TO-NON-ZP))
 (16 16 (:REWRITE ZP-OPEN))
 (15 15 (:TYPE-PRESCRIPTION NEGP))
 (8 2 (:REWRITE NFIX-EQUAL-TO-ZERO))
 (2 2 (:REWRITE NFIX-EQUAL-TO-NONZERO-CONST))
 (2 2 (:REWRITE NFIX-EQUAL-TO-NONZERO))
 (2 2 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (2 2 (:REWRITE INEQUALITY-WITH-NFIX-HYP-1))
 (1 1 (:INDUCTION BITOPS::ASH**-INDUCT))
 )
(BITOPS::LOGSATURATE-WHEN-GREATER
 (101 6 (:REWRITE RIGHT-SHIFT-TO-LOGTAIL))
 (55 5 (:REWRITE NFIX-POSITIVE-TO-NON-ZP))
 (36 11 (:REWRITE NFIX-WHEN-NOT-NATP))
 (24 16 (:REWRITE DEFAULT-<-2))
 (24 2 (:REWRITE BITOPS::LOGTAIL-WHEN-SIGNED-BYTE-P-NONNEG))
 (24 2 (:REWRITE BITOPS::LOGTAIL-WHEN-SIGNED-BYTE-P-NEG))
 (20 20 (:TYPE-PRESCRIPTION NATP))
 (20 10 (:REWRITE ZP-WHEN-GT-0))
 (20 10 (:REWRITE NATP-WHEN-GTE-0))
 (19 16 (:REWRITE DEFAULT-<-1))
 (15 10 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (10 10 (:REWRITE ZP-WHEN-INTEGERP))
 (10 10 (:REWRITE ZP-OPEN))
 (10 10 (:REWRITE NATP-WHEN-INTEGERP))
 (9 9 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (8 8 (:TYPE-PRESCRIPTION SIGNED-BYTE-P))
 (8 4 (:REWRITE DEFAULT-+-2))
 (8 2 (:REWRITE LOGTAIL-IDENTITY))
 (6 6 (:REWRITE ASH-0))
 (6 2 (:REWRITE NEGP-WHEN-LESS-THAN-0))
 (5 5 (:TYPE-PRESCRIPTION ZP))
 (5 5 (:REWRITE INEQUALITY-WITH-NFIX-HYP-1))
 (4 4 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (4 4 (:REWRITE BITOPS::SIGNED-BYTE-P-MONOTONICITY))
 (4 4 (:REWRITE BITOPS::SIGNED-BYTE-P-INCR))
 (4 4 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE BITOPS::UNSIGNED-BYTE-P-INCR))
 (2 2 (:REWRITE NEGP-WHEN-INTEGERP))
 )
(BITOPS::NEG-ASH-1-IS-LOGNOT-LOGMASK
 (280 113 (:TYPE-PRESCRIPTION BITOPS::LOGNOT-NATP))
 (83 83 (:TYPE-PRESCRIPTION NEGP))
 (82 21 (:REWRITE DEFAULT-+-2))
 (25 5 (:REWRITE RIGHT-SHIFT-TO-LOGTAIL))
 (23 21 (:REWRITE DEFAULT-+-1))
 (21 7 (:REWRITE NATP-WHEN-GTE-0))
 (18 18 (:REWRITE EXPT-WITH-VIOLATED-GUARDS))
 (11 11 (:REWRITE DEFAULT-<-2))
 (11 11 (:REWRITE DEFAULT-<-1))
 (8 6 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (7 7 (:REWRITE NATP-WHEN-INTEGERP))
 (6 6 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (6 6 (:REWRITE BITOPS::LOGNOT-EQUAL-CONST))
 (6 6 (:REWRITE CANCEL-EQUAL-LOGNOT . 2))
 (6 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 5 (:REWRITE ASH-0))
 (3 1 (:REWRITE DEFAULT-*-2))
 (1 1 (:REWRITE NFIX-WHEN-NOT-NATP))
 (1 1 (:REWRITE DEFAULT-*-1))
 )
(BITOPS::LOGTAIL-NOT-NEG1-WHEN-LT-NEG-ASH
 (860 8 (:REWRITE LOGTAIL-IDENTITY))
 (786 20 (:DEFINITION UNSIGNED-BYTE-P**))
 (623 303 (:TYPE-PRESCRIPTION BITOPS::LOGCDR-NATP))
 (445 11 (:REWRITE BITOPS::LOGTAIL-WHEN-SIGNED-BYTE-P-NONNEG))
 (407 407 (:TYPE-PRESCRIPTION BITOPS::LOGNOT-NATP))
 (404 20 (:REWRITE BITOPS::SIGNED-BYTE-P-OF-LOGCDR))
 (389 11 (:REWRITE BITOPS::LOGTAIL-WHEN-SIGNED-BYTE-P-NEG))
 (378 22 (:DEFINITION SIGNED-BYTE-P**))
 (375 63 (:REWRITE BITOPS::LOGCDR-OF-BIT))
 (368 40 (:REWRITE UNSIGNED-BYTE-P-PLUS))
 (230 54 (:REWRITE FOLD-CONSTS-IN-+))
 (196 156 (:REWRITE DEFAULT-+-2))
 (161 146 (:TYPE-PRESCRIPTION BITOPS::LOGCONS-POSP-1))
 (161 146 (:TYPE-PRESCRIPTION BITOPS::LOGCONS-NATP))
 (156 156 (:REWRITE DEFAULT-+-1))
 (144 144 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (144 86 (:REWRITE DEFAULT-<-2))
 (130 130 (:TYPE-PRESCRIPTION BITP))
 (105 86 (:REWRITE DEFAULT-<-1))
 (102 102 (:TYPE-PRESCRIPTION SIGNED-BYTE-P))
 (96 32 (:REWRITE ZP-WHEN-GT-0))
 (92 32 (:REWRITE ZP-WHEN-INTEGERP))
 (72 72 (:TYPE-PRESCRIPTION NFIX))
 (71 15 (:REWRITE BITOPS::LOGCAR-OF-BIT))
 (66 66 (:REWRITE BITOPS::SIGNED-BYTE-P-MONOTONICITY))
 (54 54 (:REWRITE BITOPS::UNSIGNED-BYTE-P-INCR))
 (52 24 (:REWRITE UNICITY-OF-0))
 (52 20 (:REWRITE NFIX-WHEN-NATP))
 (46 46 (:REWRITE BITOPS::SIGNED-BYTE-P-INCR))
 (45 15 (:REWRITE ZIP-OPEN))
 (44 44 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (44 20 (:REWRITE NFIX-WHEN-NOT-NATP))
 (42 12 (:REWRITE NATP-WHEN-INTEGERP))
 (28 24 (:DEFINITION FIX))
 (25 25 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (25 25 (:REWRITE-QUOTED-CONSTANT BFIX-UNDER-BIT-EQUIV))
 (24 24 (:LINEAR BITOPS::LOGCDR-<=-LOGCDR))
 (24 12 (:REWRITE NATP-WHEN-GTE-0))
 (15 15 (:TYPE-PRESCRIPTION POSP))
 (15 15 (:TYPE-PRESCRIPTION NEGP))
 (12 12 (:REWRITE ZP-OPEN))
 (4 4 (:REWRITE BITOPS::LOGCDR-<-CONST))
 (2 2 (:REWRITE BITOPS::LOGNOT-EQUAL-CONST))
 (2 2 (:REWRITE CANCEL-EQUAL-LOGNOT . 2))
 (1 1 (:INDUCTION BITOPS::LOGNOT-INDUCT))
 )
(BITOPS::LOGAPP-MINUS2-LT-NEG-ASH
 (94 94 (:TYPE-PRESCRIPTION BITOPS::LOGNOT-NATP))
 (29 7 (:REWRITE BITOPS::LOGCAR-OF-BIT))
 (26 26 (:TYPE-PRESCRIPTION BITP))
 (26 6 (:REWRITE BITOPS::LOGCDR-OF-BIT))
 (22 10 (:REWRITE DEFAULT-<-2))
 (18 6 (:REWRITE ZP-WHEN-GT-0))
 (13 10 (:REWRITE DEFAULT-<-1))
 (12 4 (:REWRITE ZIP-OPEN))
 (11 11 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (7 3 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (6 6 (:REWRITE ZP-WHEN-INTEGERP))
 (6 6 (:REWRITE ZP-OPEN))
 (4 4 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (4 4 (:REWRITE-QUOTED-CONSTANT BFIX-UNDER-BIT-EQUIV))
 (4 4 (:REWRITE BITOPS::LOGNOT->-CONST))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (1 1 (:INDUCTION BITOPS::LOGNOT-INDUCT))
 )
(BITOPS::LOGSATURATE-WHEN-LESS
 (43 1 (:REWRITE BITOPS::LOGTAIL-NONZERO-WHEN-GTE-ASH))
 (41 3 (:REWRITE RIGHT-SHIFT-TO-LOGTAIL))
 (27 27 (:TYPE-PRESCRIPTION BITOPS::LOGNOT-NATP))
 (27 9 (:REWRITE NFIX-WHEN-NATP))
 (24 2 (:REWRITE BITOPS::LOGTAIL-WHEN-SIGNED-BYTE-P-NONNEG))
 (24 2 (:REWRITE BITOPS::LOGTAIL-WHEN-SIGNED-BYTE-P-NEG))
 (23 9 (:REWRITE NFIX-WHEN-NOT-NATP))
 (22 2 (:REWRITE NFIX-POSITIVE-TO-NON-ZP))
 (20 9 (:REWRITE DEFAULT-<-2))
 (16 9 (:REWRITE DEFAULT-<-1))
 (12 12 (:TYPE-PRESCRIPTION NATP))
 (12 1 (:REWRITE BITOPS::LOGAPP-WHEN-SIGNED-BYTE-P-NONNEG))
 (10 10 (:TYPE-PRESCRIPTION SIGNED-BYTE-P))
 (10 5 (:REWRITE DEFAULT-+-2))
 (8 6 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (8 4 (:REWRITE ZP-WHEN-GT-0))
 (8 4 (:REWRITE NATP-WHEN-GTE-0))
 (8 2 (:REWRITE LOGTAIL-IDENTITY))
 (6 6 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (5 5 (:REWRITE BITOPS::SIGNED-BYTE-P-MONOTONICITY))
 (5 5 (:REWRITE BITOPS::SIGNED-BYTE-P-INCR))
 (5 5 (:REWRITE DEFAULT-+-1))
 (4 4 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (4 4 (:REWRITE ZP-WHEN-INTEGERP))
 (4 4 (:REWRITE ZP-OPEN))
 (4 4 (:REWRITE NATP-WHEN-INTEGERP))
 (3 3 (:REWRITE BITOPS::LOGNOT->-CONST))
 (3 3 (:REWRITE ASH-0))
 (3 1 (:REWRITE NEGP-WHEN-LESS-THAN-0))
 (2 2 (:TYPE-PRESCRIPTION ZP))
 (2 2 (:REWRITE BITOPS::UNSIGNED-BYTE-P-INCR))
 (2 2 (:REWRITE INEQUALITY-WITH-NFIX-HYP-1))
 (1 1 (:REWRITE NEGP-WHEN-INTEGERP))
 )
(BITOPS::LOGSATURATE-SIZE
 (127 3 (:REWRITE BITOPS::LOGTAIL-NONZERO-WHEN-GTE-ASH))
 (104 6 (:REWRITE BITOPS::LOGTAIL-WHEN-SIGNED-BYTE-P-NONNEG))
 (94 33 (:REWRITE NFIX-WHEN-NATP))
 (76 33 (:REWRITE NFIX-WHEN-NOT-NATP))
 (74 37 (:REWRITE DEFAULT-+-2))
 (71 3 (:REWRITE BITOPS::LOGTAIL-NOT-NEG1-WHEN-LT-NEG-ASH))
 (64 6 (:REWRITE BITOPS::LOGTAIL-WHEN-SIGNED-BYTE-P-NEG))
 (60 3 (:REWRITE RIGHT-SHIFT-TO-LOGTAIL))
 (53 37 (:REWRITE DEFAULT-+-1))
 (38 23 (:REWRITE DEFAULT-<-2))
 (36 18 (:REWRITE NATP-WHEN-GTE-0))
 (33 3 (:REWRITE NFIX-POSITIVE-TO-NON-ZP))
 (30 15 (:TYPE-PRESCRIPTION BITOPS::LOGNOT-NEGP))
 (30 15 (:TYPE-PRESCRIPTION BITOPS::ASH-NATP-TYPE))
 (25 23 (:REWRITE DEFAULT-<-1))
 (24 6 (:REWRITE LOGTAIL-IDENTITY))
 (22 2 (:REWRITE BITOPS::LOGAPP-WHEN-SIGNED-BYTE-P-NONNEG))
 (22 2 (:REWRITE BITOPS::LOGAPP-WHEN-SIGNED-BYTE-P-NEG))
 (21 21 (:REWRITE BITOPS::SIGNED-BYTE-P-MONOTONICITY))
 (18 18 (:REWRITE NATP-WHEN-INTEGERP))
 (17 17 (:REWRITE BITOPS::SIGNED-BYTE-P-INCR))
 (15 15 (:TYPE-PRESCRIPTION BITOPS::LOGNOT-NATP))
 (15 15 (:TYPE-PRESCRIPTION LOGMASK-TYPE))
 (15 10 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (15 10 (:REWRITE IFIX-WHEN-INTEGERP))
 (15 5 (:REWRITE NEGP-WHEN-LESS-THAN-0))
 (12 12 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (12 6 (:REWRITE ZP-WHEN-GT-0))
 (11 11 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (8 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 6 (:REWRITE ZP-WHEN-INTEGERP))
 (6 6 (:REWRITE ZP-OPEN))
 (6 6 (:REWRITE BITOPS::UNSIGNED-BYTE-P-INCR))
 (5 5 (:REWRITE NEGP-WHEN-INTEGERP))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 (3 3 (:TYPE-PRESCRIPTION ZP))
 (3 3 (:REWRITE BITOPS::LOGNOT->-CONST))
 (3 3 (:REWRITE INEQUALITY-WITH-NFIX-HYP-1))
 (3 3 (:REWRITE ASH-0))
 )
(BITOPS::LOGSATURATE-BITS-PRESERVED
 (96 4 (:REWRITE BITOPS::LOGBITP-OF-LOGAPP-SECOND))
 (82 42 (:REWRITE NFIX-WHEN-NOT-NATP))
 (71 3 (:REWRITE BITOPS::LOGTAIL-NOT-NEG1-WHEN-LT-NEG-ASH))
 (71 3 (:REWRITE BITOPS::LOGTAIL-NONZERO-WHEN-GTE-ASH))
 (54 10 (:REWRITE BITOPS::LOGBITP-NONZERO-OF-BIT))
 (54 6 (:REWRITE BITOPS::LOGTAIL-WHEN-SIGNED-BYTE-P-NONNEG))
 (54 6 (:REWRITE BITOPS::LOGTAIL-WHEN-SIGNED-BYTE-P-NEG))
 (53 25 (:REWRITE NATP-WHEN-GTE-0))
 (49 37 (:REWRITE DEFAULT-<-2))
 (48 37 (:REWRITE DEFAULT-<-1))
 (34 14 (:REWRITE BITOPS::LOGBITP-WHEN-BITMASKP))
 (32 32 (:TYPE-PRESCRIPTION SIGNED-BYTE-P))
 (30 15 (:TYPE-PRESCRIPTION BITOPS::LOGNOT-NEGP))
 (25 25 (:REWRITE NATP-WHEN-INTEGERP))
 (24 6 (:REWRITE LOGTAIL-IDENTITY))
 (20 20 (:TYPE-PRESCRIPTION BITMASKP$INLINE))
 (18 15 (:TYPE-PRESCRIPTION BITOPS::ASH-NATP-TYPE))
 (18 3 (:REWRITE RIGHT-SHIFT-TO-LOGTAIL))
 (18 2 (:REWRITE BITOPS::LOGAPP-WHEN-SIGNED-BYTE-P-NONNEG))
 (18 2 (:REWRITE BITOPS::LOGAPP-WHEN-SIGNED-BYTE-P-NEG))
 (16 16 (:REWRITE BITOPS::SIGNED-BYTE-P-MONOTONICITY))
 (16 16 (:REWRITE BITOPS::SIGNED-BYTE-P-INCR))
 (16 16 (:REWRITE DEFAULT-+-2))
 (16 16 (:REWRITE DEFAULT-+-1))
 (15 15 (:TYPE-PRESCRIPTION BITOPS::LOGNOT-NATP))
 (15 15 (:TYPE-PRESCRIPTION LOGMASK-TYPE))
 (15 5 (:REWRITE NEGP-WHEN-LESS-THAN-0))
 (12 12 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (12 12 (:TYPE-PRESCRIPTION LOGAPP-TYPE))
 (12 10 (:REWRITE IFIX-WHEN-NOT-INTEGERP))
 (12 10 (:REWRITE IFIX-WHEN-INTEGERP))
 (11 11 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (10 10 (:REWRITE INEQUALITY-WITH-NFIX-HYP-2))
 (8 8 (:TYPE-PRESCRIPTION BITP))
 (6 6 (:REWRITE BITOPS::UNSIGNED-BYTE-P-INCR))
 (5 5 (:REWRITE NEGP-WHEN-INTEGERP))
 (3 3 (:REWRITE BITOPS::LOGNOT->-CONST))
 (3 3 (:REWRITE ASH-0))
 )
