(GETBIT-OF-BITS-TO-BYTE-LITTLE
 (633 52 (:REWRITE GETBIT-IDENTITY))
 (365 73 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (267 57 (:REWRITE INTEGERP-OF-NTH-WHEN-ALL-INTEGERP))
 (170 85 (:REWRITE GETBIT-WHEN-NOT-1))
 (166 32 (:REWRITE UNSIGNED-BYTE-P-OF-NTH))
 (152 52 (:REWRITE GETBIT-OF-0-WHEN-BITP))
 (146 73 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (126 126 (:TYPE-PRESCRIPTION ALL-UNSIGNED-BYTE-P))
 (113 113 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (87 87 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (85 17 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-FOR-CAR))
 (85 17 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-ALL-UNSIGNED-BYTE-P))
 (79 79 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (79 68 (:REWRITE DEFAULT-<-1))
 (68 68 (:REWRITE DEFAULT-<-2))
 (66 66 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-NOT-CONSP))
 (66 66 (:REWRITE ALL-UNSIGNED-BYTE-P-FROM-ALL-UNSIGNED-BYTE-P-NARROWER))
 (54 18 (:REWRITE +-OF---AND-0))
 (52 52 (:REWRITE GETBIT-IDENTITY-FREE))
 (51 51 (:TYPE-PRESCRIPTION BITP))
 (51 51 (:REWRITE ALL-UNSIGNED-BYTE-P-IMPLIES-ALL-INTEGERP))
 (51 51 (:REWRITE ALL-INTEGERP-WHEN-NOT-CONSP-CHEAP))
 (50 49 (:DEFINITION BITP))
 (49 49 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-2))
 (49 49 (:REWRITE USE-ALL-UNSIGNED-BYTE-P))
 (49 49 (:REWRITE UNSIGNED-BYTE-P-TIGHTEN-WHEN-SLICE-IS-0))
 (34 17 (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
 (29 29 (:REWRITE DEFAULT-+-2))
 (29 29 (:REWRITE DEFAULT-+-1))
 (18 7 (:REWRITE BVCAT-WHEN-HIGHVAL-IS-NOT-AN-INTEGER))
 (13 7 (:REWRITE BVCAT-WHEN-LOWVAL-IS-NOT-AN-INTEGER))
 (12 12 (:DEFINITION LEN))
 (11 11 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (8 8 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE DEFAULT-CAR))
 (7 7 (:REWRITE BVCAT-WHEN-LOWSIZE-IS-NOT-POSP))
 (7 7 (:REWRITE BVCAT-WHEN-HIGHSIZE-IS-NOT-POSP))
 (7 7 (:REWRITE BVCAT-WHEN-EQUAL-OF-GETBIT-0-HIGH))
 (7 7 (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
 (7 7 (:REWRITE BVCAT-SUBST-1))
 (7 7 (:REWRITE BVCAT-NORMALIZE-CONSTANT-ARG4))
 (7 7 (:REWRITE BVCAT-NORMALIZE-CONSTANT-ARG2))
 (6 6 (:TYPE-PRESCRIPTION NATP-OF-BVCAT-TYPE))
 (6 6 (:REWRITE BVCAT-COMBINE-CONSTANTS))
 (4 1 (:REWRITE ZP-OPEN))
 (2 2 (:TYPE-PRESCRIPTION BITS-TO-BYTE-LITTLE))
 (1 1 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (1 1 (:REWRITE BVCAT-WHEN-EQUAL-OF-GETBIT-0-LOW))
 )
(BITS-TO-BYTE-LITTLE-OF-UPDATE-NTH
 (11558 1141 (:REWRITE GETBIT-IDENTITY))
 (6315 1548 (:REWRITE GETBIT-WHEN-VAL-IS-NOT-AN-INTEGER))
 (5906 1772 (:REWRITE INTEGERP-OF-NTH-WHEN-ALL-INTEGERP))
 (3577 807 (:REWRITE UNSIGNED-BYTE-P-OF-NTH))
 (3544 3494 (:REWRITE DEFAULT-<-1))
 (3510 3494 (:REWRITE DEFAULT-<-2))
 (3506 1753 (:REWRITE GETBIT-WHEN-NOT-1))
 (3142 1571 (:REWRITE GETBIT-TOO-HIGH-CHEAP-2))
 (2505 1683 (:REWRITE GETBIT-WHEN-N-IS-NEGATIVE))
 (2422 1008 (:REWRITE BVCAT-WHEN-HIGHVAL-IS-NOT-AN-INTEGER))
 (2296 2290 (:REWRITE DEFAULT-+-2))
 (2290 2290 (:REWRITE DEFAULT-+-1))
 (2182 1008 (:REWRITE BVCAT-WHEN-LOWVAL-IS-NOT-AN-INTEGER))
 (2174 2174 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (1786 1786 (:TYPE-PRESCRIPTION ALL-UNSIGNED-BYTE-P))
 (1760 1760 (:REWRITE GETBIT-WHEN-SLICE-IS-KNOWN-CONSTANT))
 (1683 1683 (:REWRITE GETBIT-WHEN-NOT-INTEGERP-ARG1))
 (1683 1683 (:REWRITE GETBIT-WHEN-EQUAL-OF-CONSTANT-AND-BVCHOP-CONSTANT-VERSION))
 (1438 1397 (:REWRITE BVCAT-NORMALIZE-CONSTANT-ARG4))
 (1422 1397 (:REWRITE BVCAT-NORMALIZE-CONSTANT-ARG2))
 (1397 1397 (:REWRITE BVCAT-WHEN-ARG2-IS-NOT-AN-INTEGER))
 (1395 14 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP-WHEN-ALREADY))
 (1342 14 (:REWRITE UNSIGNED-BYTE-P-OF-BVCAT-ALL-CASES))
 (1223 1223 (:REWRITE UNSIGNED-BYTE-P-TIGHTEN-WHEN-SLICE-IS-0))
 (1201 1201 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-2))
 (1201 1201 (:REWRITE USE-ALL-UNSIGNED-BYTE-P))
 (1168 1168 (:REWRITE BVCAT-WHEN-EQUAL-OF-GETBIT-0-HIGH))
 (1168 1168 (:REWRITE BVCAT-SUBST-1))
 (1141 1141 (:REWRITE GETBIT-IDENTITY-FREE))
 (1107 102 (:REWRITE BVCHOP-IDENTITY))
 (1023 1023 (:REWRITE ALL-UNSIGNED-BYTE-P-IMPLIES-ALL-INTEGERP))
 (1023 1023 (:REWRITE ALL-INTEGERP-WHEN-NOT-CONSP-CHEAP))
 (914 914 (:REWRITE ALL-UNSIGNED-BYTE-P-WHEN-NOT-CONSP))
 (914 914 (:REWRITE ALL-UNSIGNED-BYTE-P-FROM-ALL-UNSIGNED-BYTE-P-NARROWER))
 (903 301 (:REWRITE +-OF---AND-0))
 (876 876 (:REWRITE DEFAULT-UNARY-MINUS))
 (871 871 (:REWRITE BVCAT-COMBINE-CONSTANTS))
 (755 225 (:DEFINITION POSP))
 (653 63 (:REWRITE SLICE-TOO-HIGH-IS-0))
 (623 623 (:REWRITE DEFAULT-CDR))
 (580 116 (:REWRITE USE-ALL-UNSIGNED-BYTE-P-FOR-CAR))
 (580 116 (:REWRITE UNSIGNED-BYTE-P-OF-CAR-WHEN-ALL-UNSIGNED-BYTE-P))
 (340 170 (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
 (331 331 (:REWRITE BVCAT-WHEN-EQUAL-OF-GETBIT-0-LOW))
 (303 303 (:REWRITE BVCHOP-WHEN-TOP-BIT-NOT-1-FAKE-FREE))
 (277 57 (:REWRITE UNSIGNED-BYTE-P-OF-GETBIT))
 (252 252 (:TYPE-PRESCRIPTION POSP))
 (204 63 (:REWRITE SLICE-WHEN-LOW-IS-NEGATIVE))
 (189 63 (:REWRITE SLICE-OUT-OF-ORDER))
 (184 12 (:LINEAR BVCAT-UPPER-BOUND-LINEAR-STRONG))
 (184 12 (:LINEAR BVCAT-UPPER-BOUND-LINEAR))
 (165 165 (:REWRITE BVCAT-OF-GETBIT-HIGH-TIGHTEN))
 (164 43 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER))
 (159 79 (:REWRITE BVCHOP-WHEN-I-IS-NOT-AN-INTEGER-CHEAP))
 (142 9 (:LINEAR <=-OF-BVCHOP-SAME-LINEAR))
 (118 63 (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER-CHEAP))
 (118 63 (:REWRITE SLICE-WHEN-VAL-IS-NOT-AN-INTEGER))
 (117 117 (:REWRITE BVCAT-OF-BVCAT-HIGH-TIGHTEN))
 (102 102 (:REWRITE BVCHOP-SUBST-CONSTANT))
 (102 102 (:REWRITE BVCHOP-IDENTITY-CHEAP))
 (84 84 (:DEFINITION LEN))
 (79 79 (:REWRITE BVCHOP-WHEN-SIZE-IS-NOT-NATP))
 (78 78 (:REWRITE DEFAULT-CAR))
 (72 6 (:DEFINITION EXPT))
 (66 66 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (63 63 (:REWRITE SLICE-WHEN-BVCHOP-KNOWN))
 (63 63 (:REWRITE SLICE-TOO-HIGH-LEMMA))
 (63 63 (:REWRITE SLICE-SUBST-IN-CONSTANT-ALT))
 (63 63 (:REWRITE SLICE-SUBST-IN-CONSTANT))
 (62 62 (:TYPE-PRESCRIPTION SLICE))
 (55 43 (:REWRITE BVCHOP-WITH-N-NEGATIVE))
 (43 43 (:REWRITE BVCHOP-WITH-N-NOT-AN-INTEGER))
 (43 43 (:REWRITE BVCHOP-WHEN-NOT-NATP-ARG1-CHEAP))
 (23 23 (:REWRITE GETBIT-OF-BVCHOP-TOO-HIGH))
 (19 19 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (18 6 (:REWRITE DEFAULT-*-2))
 (12 12 (:LINEAR BVCAT-LOWER-BOUND-LINEAR-ARG4-CONSTANT))
 (12 12 (:LINEAR BVCAT-LOWER-BOUND-LINEAR-ARG2-CONSTANT))
 (8 8 (:REWRITE UNSIGNED-BYTE-P-OF-BVCHOP))
 (7 1 (:DEFINITION UPDATE-NTH))
 (6 6 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE GETBITS-SAME-WHEN-BVCHOPS-SAME))
 )
