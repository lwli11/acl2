(BITS-IS-BITS_ALT
 (104 4 (:DEFINITION EXPT))
 (48 12 (:REWRITE DEFAULT-*-2))
 (40 8 (:REWRITE COMMUTATIVITY-OF-+))
 (32 12 (:REWRITE DEFAULT-*-1))
 (30 30 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (30 30 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (28 2 (:REWRITE MOD-DOES-NOTHING))
 (22 22 (:REWRITE DEFAULT-+-2))
 (22 22 (:REWRITE DEFAULT-+-1))
 (16 4 (:REWRITE FOLD-CONSTS-IN-+))
 (15 10 (:REWRITE DEFAULT-<-2))
 (13 10 (:REWRITE DEFAULT-<-1))
 (12 4 (:TYPE-PRESCRIPTION NATP-MOD-2))
 (10 2 (:REWRITE DEFAULT-UNARY-/))
 (8 4 (:TYPE-PRESCRIPTION NATP-MOD))
 (5 1 (:REWRITE BITS-WITH-INDICES-IN-THE-WRONG-ORDER))
 (4 4 (:TYPE-PRESCRIPTION RATIONALP-MOD))
 (4 4 (:TYPE-PRESCRIPTION NATP))
 (4 4 (:TYPE-PRESCRIPTION MOD))
 (4 4 (:TYPE-PRESCRIPTION INTEGERP-MOD))
 (4 4 (:REWRITE ZIP-OPEN))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 2 (:REWRITE UNICITY-OF-0))
 (3 1 (:REWRITE BITS_ALT-WITH-INDICES-IN-THE-WRONG-ORDER))
 (3 1 (:REWRITE BITS_ALT-NEG))
 (3 1 (:REWRITE BITS-NEG))
 (2 2 (:DEFINITION FIX))
 )
(BITN-IS-BITN_ALT
 (8 4 (:REWRITE BVECP-BITN_ALT-0))
 (8 4 (:REWRITE BITN_ALT-NEG))
 (4 4 (:REWRITE NEG-BITN_ALT-2))
 (4 4 (:REWRITE NEG-BITN_ALT-1))
 (4 4 (:REWRITE NEG-BITN_ALT-0))
 (4 3 (:REWRITE DEFAULT-<-1))
 (4 1 (:REWRITE BITN-NEG))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 1 (:REWRITE BVECP-BITN-0))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE NEG-BITN-2))
 (1 1 (:REWRITE NEG-BITN-1))
 (1 1 (:REWRITE NEG-BITN-0))
 )
(BINARY-CAT_ALT-IS-BINARY-CAT
 (40 4 (:REWRITE BITS_ALT-TAIL))
 (28 20 (:REWRITE DEFAULT-+-2))
 (28 20 (:REWRITE DEFAULT-+-1))
 (26 2 (:DEFINITION EXPT))
 (20 4 (:REWRITE FOLD-CONSTS-IN-+))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (12 4 (:REWRITE BITS_ALT-WITH-INDICES-IN-THE-WRONG-ORDER))
 (12 4 (:REWRITE BITS_ALT-NEG))
 (10 10 (:TYPE-PRESCRIPTION BITS_ALT-NONNEGATIVE-INTEGERP-TYPE))
 (10 4 (:REWRITE DEFAULT-*-2))
 (8 8 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (8 8 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (8 8 (:TYPE-PRESCRIPTION BVECP))
 (8 4 (:REWRITE UNICITY-OF-0))
 (8 4 (:REWRITE DEFAULT-*-1))
 (4 4 (:REWRITE BITS_ALT-TAIL-2))
 (4 4 (:DEFINITION FIX))
 (2 2 (:REWRITE ZIP-OPEN))
 )
(MULCAT_ALT-IS-MULCAT
 (30 24 (:REWRITE DEFAULT-*-2))
 (30 24 (:REWRITE DEFAULT-*-1))
 (16 16 (:REWRITE DEFAULT-+-2))
 (16 16 (:REWRITE DEFAULT-+-1))
 (12 12 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 )
(ESGNF-IS-ESGNF_ALT)
(EEXPOF-IS-EEXPOF_ALT
 (8 2 (:REWRITE BITS_ALT-WITH-INDICES-IN-THE-WRONG-ORDER))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 4 (:REWRITE DEFAULT-<-2))
 (6 4 (:REWRITE DEFAULT-+-2))
 (6 4 (:REWRITE DEFAULT-+-1))
 (6 2 (:REWRITE BITS_ALT-NEG))
 (4 4 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 )
(ESIGF-IS-ESIGF_ALT)
(EENCODINGP)
(EENCODINGP-IS-EENCODINGP_ALT
 (16 12 (:REWRITE DEFAULT-+-2))
 (16 12 (:REWRITE DEFAULT-+-1))
 (8 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 2 (:REWRITE BVECP-BITN_ALT-0))
 (6 2 (:REWRITE BITN_ALT-NEG))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE NEG-BITN_ALT-2))
 (2 2 (:REWRITE NEG-BITN_ALT-1))
 (2 2 (:REWRITE NEG-BITN_ALT-0))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(EENCODE
 (2 2 (:TYPE-PRESCRIPTION BIAS-NON-NEGATIVE-INTEGERP-TYPE-PRESCRIPTION))
 )
(EENCODE-IS-EENCODE_ALT
 (1651 1080 (:REWRITE DEFAULT-+-2))
 (1371 1080 (:REWRITE DEFAULT-+-1))
 (824 288 (:REWRITE DEFAULT-*-2))
 (565 565 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (384 288 (:REWRITE DEFAULT-*-1))
 (380 248 (:REWRITE DEFAULT-<-1))
 (268 268 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (268 268 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (248 248 (:REWRITE DEFAULT-<-2))
 (207 207 (:TYPE-PRESCRIPTION EXPO))
 (207 207 (:TYPE-PRESCRIPTION BIAS-NON-NEGATIVE-INTEGERP-TYPE-PRESCRIPTION))
 (111 111 (:TYPE-PRESCRIPTION BIAS))
 (96 96 (:TYPE-PRESCRIPTION SIG))
 (96 96 (:REWRITE ALREADY-SIG))
 )
(EDECODE-IS-EDECODE_ALT
 (172 4 (:DEFINITION EXPT))
 (68 16 (:REWRITE DEFAULT-*-2))
 (64 40 (:REWRITE DEFAULT-+-2))
 (48 40 (:REWRITE DEFAULT-+-1))
 (48 24 (:REWRITE FOLD-CONSTS-IN-+))
 (32 4 (:REWRITE ZIP-OPEN))
 (20 16 (:REWRITE DEFAULT-*-1))
 (16 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 4 (:DEFINITION NOT))
 (8 4 (:REWRITE UNICITY-OF-0))
 (4 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 )
(EENCODINGP-NOT-ZERO)
(EREPP-EDECODE)
(EENCODINGP-EENCODE)
(EDECODE-EENCODE)
(EENCODE-EDECODE)
(EXPO-EDECODE)
(SGN-EDECODE)
(SIG-EDECODE)
(REBIAS-DOWN)
(REBIAS-UP)
(ISGNF-IS-ISGNF_ALT)
(IEXPOF-IS-IEXPOF_ALT
 (10 6 (:REWRITE DEFAULT-+-2))
 (8 6 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 2 (:REWRITE BITS_ALT-WITH-INDICES-IN-THE-WRONG-ORDER))
 (6 2 (:REWRITE BITS_ALT-NEG))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 )
(ISIGF-IS-ISIGF_ALT)
(NENCODINGP-IS-NENCODING
 (44 2 (:DEFINITION EXPT))
 (38 24 (:REWRITE DEFAULT-+-2))
 (30 24 (:REWRITE DEFAULT-+-1))
 (20 14 (:REWRITE DEFAULT-<-2))
 (16 16 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (14 14 (:REWRITE DEFAULT-<-1))
 (12 4 (:REWRITE DEFAULT-*-2))
 (12 4 (:REWRITE COMMUTATIVITY-OF-+))
 (12 4 (:REWRITE BITS_ALT-WITH-INDICES-IN-THE-WRONG-ORDER))
 (12 4 (:REWRITE BITS_ALT-NEG))
 (8 8 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (8 8 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (4 4 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:REWRITE DEFAULT-*-1))
 (2 2 (:REWRITE ZIP-OPEN))
 )
(DENCODINGP-IS-DENCODING
 (22 14 (:REWRITE DEFAULT-+-2))
 (18 14 (:REWRITE DEFAULT-+-1))
 (16 2 (:REWRITE BITS_ALT-TAIL))
 (12 12 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (12 4 (:REWRITE BITS_ALT-WITH-INDICES-IN-THE-WRONG-ORDER))
 (12 4 (:REWRITE BITS_ALT-NEG))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE DEFAULT-<-1))
 (8 4 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE BITS_ALT-TAIL-2))
 )
(IENCODINGP)
(IENCODINGP-IS-IENCODING)
(NOT-BOTH-NENCODINGP-AND-DENCODINGP)
(NENCODE-IS-NENCODE_ALT
 (140 4 (:DEFINITION EXPT))
 (84 52 (:REWRITE DEFAULT-+-2))
 (64 52 (:REWRITE DEFAULT-+-1))
 (44 8 (:REWRITE FOLD-CONSTS-IN-+))
 (36 12 (:REWRITE DEFAULT-*-2))
 (24 24 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (24 4 (:REWRITE CAT_ALT-ASSOCIATIVE))
 (16 12 (:REWRITE DEFAULT-*-1))
 (12 12 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (12 12 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (12 8 (:REWRITE DEFAULT-<-1))
 (12 4 (:REWRITE ZIP-OPEN))
 (12 4 (:REWRITE UNICITY-OF-0))
 (8 8 (:TYPE-PRESCRIPTION SIG))
 (8 8 (:TYPE-PRESCRIPTION EXPO))
 (8 8 (:TYPE-PRESCRIPTION BIAS-NON-NEGATIVE-INTEGERP-TYPE-PRESCRIPTION))
 (8 8 (:TYPE-PRESCRIPTION BIAS))
 (8 8 (:REWRITE DEFAULT-<-2))
 (8 8 (:DEFINITION NOT))
 (8 4 (:DEFINITION FIX))
 (6 2 (:REWRITE CAT_ALT-0))
 (4 4 (:TYPE-PRESCRIPTION BVECP))
 (4 4 (:REWRITE ALREADY-SIG))
 )
(DENCODE-IS-DENCODE
 (184 4 (:DEFINITION EXPT))
 (96 52 (:REWRITE DEFAULT-+-2))
 (68 52 (:REWRITE DEFAULT-+-1))
 (48 12 (:REWRITE DEFAULT-*-2))
 (44 4 (:REWRITE ZIP-OPEN))
 (40 40 (:TYPE-PRESCRIPTION EXPO))
 (40 40 (:TYPE-PRESCRIPTION BIAS-NON-NEGATIVE-INTEGERP-TYPE-PRESCRIPTION))
 (40 40 (:TYPE-PRESCRIPTION BIAS))
 (40 24 (:REWRITE FOLD-CONSTS-IN-+))
 (24 12 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (24 4 (:REWRITE CAT_ALT-ASSOCIATIVE))
 (16 16 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (16 12 (:REWRITE DEFAULT-*-1))
 (16 4 (:DEFINITION NOT))
 (12 12 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (12 8 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE DEFAULT-<-2))
 (6 2 (:REWRITE CAT_ALT-0))
 (4 4 (:TYPE-PRESCRIPTION SIG))
 (4 4 (:TYPE-PRESCRIPTION BVECP))
 (4 4 (:REWRITE ALREADY-SIG))
 )
(IENCODE)
(IENCODE-IS-IENCODE_ALT)
(NDECODE-IS-NDECODE
 (300 8 (:DEFINITION EXPT))
 (222 124 (:REWRITE DEFAULT-+-2))
 (190 124 (:REWRITE DEFAULT-+-1))
 (152 32 (:REWRITE DEFAULT-*-2))
 (82 50 (:REWRITE FOLD-CONSTS-IN-+))
 (52 8 (:REWRITE ZIP-OPEN))
 (36 32 (:REWRITE DEFAULT-*-1))
 (36 12 (:REWRITE BITS_ALT-WITH-INDICES-IN-THE-WRONG-ORDER))
 (36 12 (:REWRITE BITS_ALT-NEG))
 (34 34 (:REWRITE DEFAULT-<-2))
 (34 34 (:REWRITE DEFAULT-<-1))
 (32 32 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (32 4 (:REWRITE BITS_ALT-TAIL))
 (24 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 12 (:TYPE-PRESCRIPTION BVECP))
 (12 4 (:DEFINITION NOT))
 (8 4 (:REWRITE UNICITY-OF-0))
 (6 2 (:REWRITE BVECP-BITN_ALT-0))
 (6 2 (:REWRITE BITN_ALT-NEG))
 (4 4 (:REWRITE BITS_ALT-TAIL-2))
 (2 2 (:REWRITE NEG-BITN_ALT-2))
 (2 2 (:REWRITE NEG-BITN_ALT-1))
 (2 2 (:REWRITE NEG-BITN_ALT-0))
 )
(DDECODE-IS-DECODE
 (144 4 (:DEFINITION EXPT))
 (66 52 (:REWRITE DEFAULT-+-2))
 (60 16 (:REWRITE DEFAULT-*-2))
 (58 52 (:REWRITE DEFAULT-+-1))
 (50 26 (:REWRITE FOLD-CONSTS-IN-+))
 (32 4 (:REWRITE BITS_ALT-TAIL))
 (20 16 (:REWRITE DEFAULT-*-1))
 (20 4 (:REWRITE ZIP-OPEN))
 (16 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (12 12 (:TYPE-PRESCRIPTION BVECP))
 (12 12 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (12 4 (:REWRITE BITS_ALT-WITH-INDICES-IN-THE-WRONG-ORDER))
 (12 4 (:REWRITE BITS_ALT-NEG))
 (8 4 (:DEFINITION NOT))
 (6 2 (:REWRITE BVECP-BITN_ALT-0))
 (6 2 (:REWRITE BITN_ALT-NEG))
 (4 4 (:REWRITE BITS_ALT-TAIL-2))
 (2 2 (:REWRITE NEG-BITN_ALT-2))
 (2 2 (:REWRITE NEG-BITN_ALT-1))
 (2 2 (:REWRITE NEG-BITN_ALT-0))
 )
(IDECODE)
(IDECODE-IS-IDECODE)
(SGN-IDECODE)
(EXPO-IDECODE)
(SIG-IDECODE)
(IENCODINGP-IENCODE)
(IREPP-IDECODE)
(IDECODE-IENCODE)
(IENCODE-IDECODE)
