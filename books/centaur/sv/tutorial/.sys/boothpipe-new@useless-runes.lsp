(SV::BOOTHPIPE-RUN)
(SV::SVTV-P-OF-BOOTHPIPE-RUN)
(SV::SVTV->OUTS-OF-BOOTHPIPE-RUN)
(SV::SVTV->INS-OF-BOOTHPIPE-RUN)
(SV::BOOTHPIPE-RUN-AUTOHYPS-FN)
(SV::BOOTHPIPE-RUN-ALIST-AUTOHYPS)
(SV::BOOTHPIPE-RUN-ENV-AUTOHYPS)
(SV::BOOTHPIPE-RUN-AUTOINS-FN)
(SV::BOOTHPIPE-RUN-AUTOINS-LOOKUP)
(SV::SVEX-ENV-LOOKUP-OF-BOOTHPIPE-RUN-AUTOINS)
(SV::SVEX-ENV-BOUNDP-OF-BOOTHPIPE-RUN-AUTOINS)
(SV::BOOTHPIPE-RUN-ALIST-AUTOINS)
(SV::BOOTHPIPE-RUN-ENV-AUTOINS)
(SV::SVEX-ENV-P-OF-BOOTHPIPE-RUN-ENV-AUTOINS
 (22 11 (:REWRITE DEFAULT-CDR))
 (22 11 (:REWRITE DEFAULT-CAR))
 (11 11 (:REWRITE-QUOTED-CONSTANT SV::SVAR-FIX-UNDER-SVAR-EQUIV))
 (11 11 (:REWRITE-QUOTED-CONSTANT SV::MAYBE-SVAR-FIX-UNDER-MAYBE-SVAR-EQUIV))
 (11 11 (:REWRITE SV::SVEX-ENV-LOOKUP-USE-EXEC))
 )
(SV::BOOTHPIPE-RUN-ENV-AUTOINS-IN-TERMS-OF-SVEX-ENV-EXTRACT
 (345 21 (:REWRITE SV::SVEX-ENV-EXTRACT-WHEN-ALIST-KEYS-EQUAL))
 (107 21 (:REWRITE SV::SVEX-ENV-FIX-WHEN-SVEX-ENV-P))
 (107 21 (:REWRITE ALIST-KEYS-WHEN-ATOM))
 (87 87 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-ALIST-KEYS))
 (84 1 (:REWRITE SV::SVEX-ENV-P-WHEN-NOT-CONSP))
 (32 32 (:REWRITE SV::SVEX-ENV-LOOKUP-USE-EXEC))
 (26 21 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (21 21 (:REWRITE-QUOTED-CONSTANT SV::SVAR-FIX-UNDER-SVAR-EQUIV))
 (21 21 (:REWRITE-QUOTED-CONSTANT SV::MAYBE-SVAR-FIX-UNDER-MAYBE-SVAR-EQUIV))
 (11 11 (:REWRITE-QUOTED-CONSTANT SV::SVARLIST-FIX-UNDER-SVARLIST-EQUIV))
 (6 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ELABSCOPES-P . 1))
 (4 4 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-CONS-LISTP))
 (4 4 (:REWRITE CONSP-WHEN-MEMBER-EQUAL-OF-ATOM-LISTP))
 (3 3 (:TYPE-PRESCRIPTION SV::SVEX-ENV-FIX$INLINE))
 (2 2 (:TYPE-PRESCRIPTION SV::SVEX-ENV-P))
 (2 2 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (2 2 (:TYPE-PRESCRIPTION BOOLEANP))
 (2 2 (:REWRITE VL::VL-ELABSCOPES-P-OF-VL-ELABSCOPES-INIT))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-UNPARAM-INSTKEYMAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-UNPARAM-INSTKEYMAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-UNPARAM-DONELIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-UNPARAM-DONELIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-TYPE-ERROR-ALIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-TYPE-ERROR-ALIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SVEX-KEYVALLIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SVEX-KEYVALLIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-STRING/INT-ALIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-STRING/INT-ALIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEITEM-ALIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-SCOPEDEF-ALIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-REPORTCARD-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-REPORTCARD-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-PACKAGEMAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-PACKAGEMAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-PREFIXMAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDB-NAMESET-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDARG-ALIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-NAMEDARG-ALIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-LEXSCOPE-DECLS-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-LEXSCOPE-DECLS-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-INCLUDESKIPS-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-INCLUDESKIPS-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IMPORTRESULT-ALIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFPORT-ALIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFPORT-ALIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFDEF-USE-MAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-IFDEF-USE-MAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-FILEMAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-FILEMAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ELABTRAVERSAL-STACK-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ELABTRAVERSAL-STACK-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ELABSCOPES-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ELABSCOPE-ALIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ELABSCOPE-ALIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DIRXLIST-CACHE-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DIRXLIST-CACHE-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DIRXCACHE-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DIRXCACHE-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DIRLIST-CACHE-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DIRLIST-CACHE-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DIRCACHE-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DIRCACHE-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DESCALIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DESCALIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEPGRAPH-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEPGRAPH-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEFINES-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEFINES-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEF-USE-MAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DEF-USE-MAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DATATYPE-MAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-DATATYPE-MAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-BLAMEALIST-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-BLAMEALIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-BINDELIM-INSTTABLE-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-BINDELIM-INSTTABLE-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-BINDDELTA-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-VL-BINDDELTA-P . 1))
 (2 2 (:REWRITE SV::CONSP-WHEN-MEMBER-EQUAL-OF-SVAR-SIZE-ALIST-P . 2))
 (2 2 (:REWRITE SV::CONSP-WHEN-MEMBER-EQUAL-OF-SVAR-SIZE-ALIST-P . 1))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-CLASSNAME/PARAMS-UNPARAM-MAP-P . 2))
 (2 2 (:REWRITE VL::CONSP-WHEN-MEMBER-EQUAL-OF-CLASSNAME/PARAMS-UNPARAM-MAP-P . 1))
 (2 2 (:REWRITE CONSP-BY-LEN))
 )
(SV::BOOTHPIPE-RUN-ALIST-AUTOINS-IDEMPOTENT)
(SV::BOOTHPIPE-RUN-ALIST-AUTOINS-LOOKUP)
(SV::BOOTHPIPE-RUN-ALIST-AUTOHYPS-OF-AUTOINS)
(SV::BOOTHPIPE-RUN-ENV-AUTOHYPS-OF-AUTOINS)
(SV::BOOTHPIPE-DATA)
(SV::SVTV-DATA-OBJ-P-OF-BOOTHPIPE-DATA)
(SV::FLATTEN-VALIDP-OF-BOOTHPIPE-DATA)
(SV::BOOTHPIPE-DATA-CORRECT)
(SV::BOOTHPIPE-DATA-PIPELINE-IS-BOOTHPIPE-RUN-OUTEXPRS)
(SV::BOOTHPIPE-DATA-MONO-CONDITIONS)
(SV::BOOTHPIPE-RUN-OVERRIDE-TEST-VARS)
(SV::SVARLIST-P-OF-BOOTHPIPE-RUN-OVERRIDE-TEST-VARS)
(SV::OVERRIDE-VARS-OF-BOOTHPIPE-DATA)
(SV::BOOTHPIPE-RUN-PARTIAL-MONOTONIC)
(SV::BOOTHPIPE-RUN-MONOTONICITY)
(SV::BOOTHPIPE-RUN-PIPELINE-OVERRIDE-TRIPLES)
(SV::BOOTHPIPE-RUN-FSM-CYCLE-OVERRIDE-SIGNALS)
(SV::BOOTHPIPE-RUN-FSM-OVERRIDE-INPUTS-OK-LEMMA)
(SV::BOOTHPIPE-RUN-FSM-OVERRIDE-INPUTS-OK)
(SV::BOOTHPIPE-RUN-IS-PIPELINE-RESULT)
(SV::PIPELINE-VALIDP-OF-BOOTHPIPE-DATA)
(SV::BOOTHPIPE-RUN-FSM-OVERRIDE-VARS-DONT-INTERSECT-STATES)
(SV::BOOTHPIPE-RUN-FSM-OVERRIDE-REFVARS-SUBSETP-VALUES)
(SV::BOOTHPIPE-RUN-PIPELINE-OVERRIDE-REFVARS-SUBSETP-PROBES)
(SV::BOOTHPIPE-RUN-NO-DUPLICATE-STATES)
(SV::BOOTHPIPE-RUN-NO-VAL/TESTVAR-INTERSECT)
(SV::BOOTHPIPE-RUN-PIPELINE-OVERRIDE-VALVARS-DONT-INTERSECT-INITST-VARS)
(SV::BOOTHPIPE-RUN-PIPELINE-OVERRIDE-VALVARS-DONT-INTERSECT-INITST-OVERRIDE-VARS)
(SV::BOOTHPIPE-RUN-PIPELINE-OVERRIDE-TESTVARS-DONT-INTERSECT-INITST-VARS)
(SV::NCYCLES-OF-BOOTHPIPE-RUN)
(SV::NCYCLES-OF-BOOTHPIPE-RUN-FSM-CYCLE-OVERRIDE-SIGNALS)
(SV::SVEX-ENV-LOOKUP-WHEN-SVEX-ENVS-AGREE-EXCEPT-BOOTHPIPE-RUN)
(SV::SVEX-ENV-LOOKUP-WHEN-SVEX-ENV-NO-1S-P-BOOTHPIPE-RUN)
(SV::BOOTHPIPE-RUN-FSM-ENVS-OK-WHEN-PIPELINE-ENVS-OK)
(SV::BOOTHPIPE-RUN-FSM-TRIPLE-SET)
(SV::NO-DUPLICATE-VARS-OF-BOOTHPIPE-RUN-FSM-TRIPLE-SET)
(SV::NO-STATE-VARS-OF-BOOTHPIPE-RUN-FSM-TRIPLE-SET)
(SV::SVEX-OVERRIDE-TRIPLE-SUBSETLIST-P-OF-BOOTHPIPE-RUN-FSM-TRIPLE-SET)
(SV::SVEXLIST-CHECK-OVERRIDETRIPLES-OF-BOOTHPIPE-RUN-FSM-TRIPLE-SET)
(SV::BASE-FSM-EVAL-OF-OVERRIDES-FOR-BOOTHPIPE-RUN)
(SV::BOOTHPIPE-RUN-INITST-NORM)
(SV::PROBE-NAMEMAP-PROPS-FOR-BOOTHPIPE-RUN)
(SV::BOOTHPIPE-RUN-OVERRIDES-CRUX)
(SV::BOOTHPIPE-RUN-REFVARS-SUBSET-OF-OUTPUT-VARS)
(SV::BOOTHPIPE-RUN-PIPELINE-OVERRIDE-TRIPLE-TESTVARS-SUBSET-OF-MONOTONICITY-TESTVARS)
(SV::BOOTHPIPE-RUN-NON-TRIPLE-OVERRIDE-TESTS)
(SV::SVARLIST-P-OF-BOOTHPIPE-RUN-NON-TRIPLE-OVERRIDE-TESTS)
(SV::BOOTHPIPE-RUN-NON-TRIPLE-OVERRIDE-TESTS-IS-SET-DIFFERENCE)
(SV::BOOTHPIPE-RUN-OVERRIDE-TEST-VARS-UNDER-SET-EQUIV)
(SV::BOOTHPIPE-RUN-OVERRIDE-TEST-VARS-NOT-INTERSECT-VALVARS)
(SV::BOOTHPIPE-RUN-OVERRIDES-CORRECT)
(SV::BOOTHPIPE-PP-CORRECT-OVERRIDE-LEMMA)
(SV::BOOTHPIPE-PP-CORRECT-<<=-LEMMA
 (2 2 (:REWRITE SV::ALIST-KEYS-OF-SVTV-RUN))
 )
(SV::BOOTHPIPE-PP-CORRECT)
(SV::BOOTHPIPE-SUM-CORRECT-OVERRIDE-LEMMA)
(SV::BOOTHPIPE-SUM-CORRECT-<<=-LEMMA
 (3 3 (:REWRITE SV::ALIST-KEYS-OF-SVTV-RUN))
 )
(SV::BOOTHPIPE-SUM-CORRECT)
(SV::BOOTH-SUM-IMPL-REDEF
 (555 5 (:REWRITE SV::OUR-LOGEXT-IDENTITY))
 (435 5 (:DEFINITION SIGNED-BYTE-P))
 (235 5 (:DEFINITION INTEGER-RANGE-P))
 (130 5 (:DEFINITION EXPT))
 (120 120 (:TYPE-PRESCRIPTION POSP-OF-POS-FIX))
 (120 60 (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (110 5 (:REWRITE POS-FIX-WHEN-POSP))
 (90 5 (:REWRITE POSP-REDEFINITION))
 (79 50 (:REWRITE DEFAULT-+-2))
 (62 32 (:REWRITE DEFAULT-<-2))
 (60 60 (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (60 60 (:TYPE-PRESCRIPTION SV::BOOTHPIPE-PP-SPEC))
 (59 50 (:REWRITE DEFAULT-+-1))
 (43 8 (:REWRITE ZP-OPEN))
 (42 32 (:REWRITE DEFAULT-<-1))
 (40 10 (:REWRITE REDUCE-INTEGERP-+-CONSTANT))
 (36 10 (:REWRITE ZP-WHEN-INTEGERP))
 (34 9 (:REWRITE FOLD-CONSTS-IN-+))
 (32 12 (:REWRITE DEFAULT-*-2))
 (30 10 (:REWRITE ZP-WHEN-GT-0))
 (25 25 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (25 15 (:REWRITE EXPT-WITH-VIOLATED-GUARDS))
 (25 5 (:REWRITE ZIP-OPEN))
 (20 10 (:DEFINITION FIX))
 (20 5 (:REWRITE DEFAULT-UNARY-MINUS))
 (12 12 (:REWRITE DEFAULT-*-1))
 (12 12 (:DEFINITION NOT))
 (12 2 (:REWRITE DISTRIBUTIVITY))
 (10 10 (:REWRITE VL::POSP-WHEN-MEMBER-EQUAL-OF-POS-LISTP))
 (10 10 (:REWRITE SV::FIX-OF-NUMBER))
 (10 5 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (5 5 (:TYPE-PRESCRIPTION SIGNED-BYTE-P))
 (5 5 (:TYPE-PRESCRIPTION POSP))
 )
(SV::BOOTH-SUM-OF-PRODUCTS-CORRECT
 (38 9 (:REWRITE DEFAULT-+-2))
 (30 10 (:REWRITE SV::OUR-LOGEXT-IDENTITY))
 (20 20 (:TYPE-PRESCRIPTION SIGNED-BYTE-P))
 (17 9 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE FOLD-CONSTS-IN-+))
 (4 2 (:REWRITE DEFAULT-*-2))
 (4 2 (:REWRITE DEFAULT-*-1))
 (2 2 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (2 2 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 )
(SV::BOOTHPIPE-PP-SPEC-BOUND
 (32 17 (:REWRITE DEFAULT-+-2))
 (25 17 (:REWRITE DEFAULT-+-1))
 (10 5 (:REWRITE DEFAULT-*-2))
 (8 8 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (8 1 (:REWRITE SV::OUR-LOGEXT-IDENTITY))
 (7 7 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (6 1 (:DEFINITION SIGNED-BYTE-P))
 (5 5 (:REWRITE DEFAULT-*-1))
 (4 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (1 1 (:TYPE-PRESCRIPTION SIGNED-BYTE-P))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(SV::BOOTHPIPE-CORRECT-GEN
 (146 14 (:REWRITE SV::OUR-LOGEXT-IDENTITY))
 (120 12 (:DEFINITION SIGNED-BYTE-P))
 (108 12 (:DEFINITION INTEGER-RANGE-P))
 (69 8 (:REWRITE TRUTH::UNSIGNED-BYTE-P-WHEN-TRUTH-IDX-P))
 (60 60 (:REWRITE-QUOTED-CONSTANT SV::SVAR-FIX-UNDER-SVAR-EQUIV))
 (60 60 (:REWRITE-QUOTED-CONSTANT SV::MAYBE-SVAR-FIX-UNDER-MAYBE-SVAR-EQUIV))
 (56 56 (:TYPE-PRESCRIPTION SV::BOOTHPIPE-PP-SPEC))
 (53 20 (:REWRITE SV::BOOTHPIPE-RUN-OVERRIDES-CRUX))
 (46 46 (:REWRITE SV::SVEX-ENV-LOOKUP-USE-EXEC))
 (44 4 (:REWRITE TRUTH::TRUTH-IDX-P-WHEN-UNSIGNED-BYTE-P))
 (36 8 (:REWRITE TRUTH::UNSIGNED-BYTE-P-WHEN-TRUTH4-P))
 (27 27 (:TYPE-PRESCRIPTION ASH))
 (27 27 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (27 6 (:REWRITE DEFAULT-+-2))
 (22 14 (:REWRITE DEFAULT-<-1))
 (22 1 (:REWRITE SV::SVEX-ENVS-AGREE-WHEN-LOOKUP-EQUAL))
 (20 20 (:REWRITE SV::SVTV-RUN-NORMALIZE-IRRELEVANT-INPUTS))
 (17 17 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (14 14 (:REWRITE DEFAULT-<-2))
 (12 12 (:TYPE-PRESCRIPTION SIGNED-BYTE-P))
 (12 6 (:REWRITE DEFAULT-+-1))
 (11 11 (:TYPE-PRESCRIPTION TRUTH::TRUTH-IDX-P))
 (9 4 (:REWRITE EQUAL-OF-BOOLEANS-REWRITE))
 (8 8 (:TYPE-PRESCRIPTION TRUTH::TRUTH4-P))
 (8 4 (:REWRITE TRUTH::TRUTH4-P-WHEN-UNSIGNED-BYTE-P))
 (6 6 (:TYPE-PRESCRIPTION LOGEXT-TYPE))
 (6 3 (:REWRITE DEFAULT-*-2))
 (6 3 (:REWRITE DEFAULT-*-1))
 (5 5 (:TYPE-PRESCRIPTION SV::SVAR-OVERRIDE-TRIPLELIST-LOOKUP-VALVAR))
 (5 5 (:REWRITE FOLD-CONSTS-IN-+))
 (5 1 (:REWRITE SV::LOOKUP-OF-SVAR-OVERRIDE-TRIPLELIST-MAP-REFS-TO-VALUES))
 (4 2 (:REWRITE SV::SVAR-OVERRIDE-TRIPLELIST->TESTVARS-WHEN-NOT-CONSP))
 (3 3 (:TYPE-PRESCRIPTION SV::SVEX-ENVS-AGREE))
 (3 3 (:TYPE-PRESCRIPTION SV::BOOTHPIPE-RUN-PIPELINE-OVERRIDE-TRIPLES))
 (3 3 (:REWRITE SV::SVEX-ENV-LOOKUP-IN-SVTV-RUN-WITH-SKIP))
 (3 3 (:REWRITE SV::SVEX-ENV-LOOKUP-IN-SVTV-RUN-WITH-INCLUDE))
 (2 2 (:TYPE-PRESCRIPTION SV::SVEX-ENVS-AGREE-EXCEPT))
 (2 2 (:REWRITE SV::SVEX-ENVS-AGREE-EXCEPT-REFL))
 (2 1 (:REWRITE SV::SVAR-OVERRIDE-TRIPLELIST->VALVARS-WHEN-NOT-CONSP))
 (1 1 (:REWRITE SV::SVEX-ENVS-AGREE-WHEN-SUBSET))
 )
(SV::BOOTHPIPE-CORRECT
 (14 4 (:REWRITE SV::OUR-LOGEXT-IDENTITY))
 (12 4 (:REWRITE TRUTH::UNSIGNED-BYTE-P-WHEN-TRUTH4-P))
 (12 4 (:REWRITE SV::4VEC-P-WHEN-MAYBE-4VEC-P))
 (10 10 (:REWRITE DEFAULT-CAR))
 (8 8 (:REWRITE SV::4VEC-P-WHEN-MEMBER-EQUAL-OF-4VECLIST-P))
 (8 2 (:DEFINITION SIGNED-BYTE-P))
 (6 6 (:REWRITE-QUOTED-CONSTANT SV::SVAR-FIX-UNDER-SVAR-EQUIV))
 (6 6 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (6 6 (:REWRITE-QUOTED-CONSTANT SV::MAYBE-SVAR-FIX-UNDER-MAYBE-SVAR-EQUIV))
 (6 6 (:REWRITE-QUOTED-CONSTANT IFIX-UNDER-INT-EQUIV))
 (6 2 (:DEFINITION INTEGER-RANGE-P))
 (4 4 (:TYPE-PRESCRIPTION TRUTH::TRUTH4-P))
 (4 4 (:TYPE-PRESCRIPTION SV::MAYBE-4VEC-P))
 (4 4 (:TYPE-PRESCRIPTION LOGEXT-TYPE))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE TRUTH::TRUTH4-P-WHEN-UNSIGNED-BYTE-P))
 (4 2 (:REWRITE SV::MAYBE-4VEC-P-WHEN-4VEC-P))
 (4 2 (:REWRITE DEFAULT-*-2))
 (4 2 (:REWRITE DEFAULT-*-1))
 (2 2 (:TYPE-PRESCRIPTION SIGNED-BYTE-P))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 1 (:REWRITE SV::SVAR-OVERRIDE-TRIPLELIST->TESTVARS-WHEN-NOT-CONSP))
 (1 1 (:TYPE-PRESCRIPTION SV::BOOTHPIPE-RUN-PIPELINE-OVERRIDE-TRIPLES))
 (1 1 (:REWRITE SV::SVTV-RUN-NORMALIZE-IRRELEVANT-INPUTS))
 (1 1 (:REWRITE SV::BOOTHPIPE-RUN-OVERRIDES-CRUX))
 )
