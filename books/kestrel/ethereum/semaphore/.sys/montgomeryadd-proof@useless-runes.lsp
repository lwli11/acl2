(PRIMALITY-THEOREM-FOR-MAKE-R1CS-EVENT)
(MONTGOMERYADD-VARS)
(VAR-LISTP-OF-MONTGOMERYADD-VARS)
(MONTGOMERYADD-CONSTRAINTS)
(R1CS-CONSTRAINT-LISTP-OF-MONTGOMERYADD-CONSTRAINTS)
(GOOD-R1CS-CONSTRAINT-LISTP-OF-MONTGOMERYADD-CONSTRAINTS)
(MONTGOMERYADD-MAKE-R1CS)
(ZKSEMAPHORE::PRECOND)
(ZKSEMAPHORE::BOOLEANP-OF-PRECOND)
(ZKSEMAPHORE::MONTGOMERY-ADD
 (48 27 (:REWRITE PFIELD::ADD-WHEN-NOT-INTEGERP-ARG2-CHEAP))
 (42 27 (:REWRITE PFIELD::ADD-WHEN-NOT-INTEGERP-ARG1-CHEAP))
 (39 39 (:REWRITE PFIELD::ADD-SUBST-CONSTANT-ARG2))
 (39 39 (:REWRITE PFIELD::ADD-SUBST-CONSTANT-ARG1))
 (34 34 (:REWRITE PFIELD::ADD-OF-CONSTANTS))
 (27 20 (:REWRITE PFIELD::NEG-WHEN-NOT-INTEGERP-CHEAP))
 (20 20 (:REWRITE PFIELD::NEG-WHEN-NOT-POSP-ARG2-CHEAP))
 (18 18 (:REWRITE PFIELD::MUL-OF--1-BECOMES-NEG-ALT))
 (18 10 (:REWRITE PFIELD::MUL-WHEN-NOT-INTEGERP-ARG2-CHEAP))
 (16 16 (:REWRITE PFIELD::NEG-WHEN-CONSTANT-ARG1))
 (15 15 (:REWRITE PFIELD::ADD-OF-ADD-COMBINE-CONSTANTS))
 (14 14 (:REWRITE PFIELD::MUL-WHEN-EQUAL-OF-MOD-SUBST-ARG2))
 (14 14 (:REWRITE PFIELD::MUL-WHEN-EQUAL-OF-MOD-SUBST-ARG1))
 (14 14 (:REWRITE PFIELD::MUL-WHEN-CONSTANT-REDUCE-ARG1))
 (14 10 (:REWRITE PFIELD::MUL-WHEN-NOT-INTEGERP-ARG1-CHEAP))
 (12 4 (:DEFINITION NATP))
 (8 6 (:REWRITE DEFAULT-<-1))
 (7 7 (:REWRITE PFIELD::SUB-WHEN-CONSTANTS))
 (7 7 (:REWRITE PFIELD::ADD-COMMUTATIVE-WHEN-CONSTANT))
 (7 6 (:REWRITE IFIX-WHEN-NOT-INTEGERP-UNLIMITED))
 (6 6 (:REWRITE PFIELD::FEP-WHEN-FE-LISTP-AND-MEMBER-EQUAL))
 (6 6 (:REWRITE DEFAULT-<-2))
 (4 4 (:TYPE-PRESCRIPTION NATP))
 (4 4 (:REWRITE PFIELD::FEP-WHEN-CONSTANT))
 (3 3 (:REWRITE PFIELD::NEG-OF-MUL-WHEN-CONSTANT))
 (3 3 (:REWRITE PFIELD::MUL-OF-MUL-COMBINE-CONSTANTS))
 (1 1 (:REWRITE PFIELD::MUL-OF-ADD-OF-MUL-COMBINE-CONSTANTS))
 )
(ZKSEMAPHORE::PFEP-OF-MONTGOMERY-ADD.X3
 (32 17 (:REWRITE PFIELD::ADD-WHEN-NOT-INTEGERP-ARG2-CHEAP))
 (27 27 (:REWRITE PFIELD::ADD-SUBST-CONSTANT-ARG2))
 (27 27 (:REWRITE PFIELD::ADD-SUBST-CONSTANT-ARG1))
 (27 17 (:REWRITE PFIELD::ADD-WHEN-NOT-INTEGERP-ARG1-CHEAP))
 (22 22 (:REWRITE PFIELD::ADD-OF-CONSTANTS))
 (22 11 (:REWRITE PFIELD::NEG-WHEN-NOT-POSP-ARG2-CHEAP))
 (15 15 (:REWRITE PFIELD::MUL-OF--1-BECOMES-NEG-ALT))
 (15 11 (:REWRITE PFIELD::NEG-WHEN-NOT-INTEGERP-CHEAP))
 (12 12 (:REWRITE PFIELD::ADD-OF-ADD-COMBINE-CONSTANTS))
 (12 6 (:REWRITE PFIELD::MUL-WHEN-NOT-INTEGERP-ARG2-CHEAP))
 (11 11 (:TYPE-PRESCRIPTION PFIELD::NATP-OF-NEG))
 (10 10 (:REWRITE PFIELD::MUL-WHEN-EQUAL-OF-MOD-SUBST-ARG2))
 (10 10 (:REWRITE PFIELD::MUL-WHEN-EQUAL-OF-MOD-SUBST-ARG1))
 (10 10 (:REWRITE PFIELD::MUL-WHEN-CONSTANT-REDUCE-ARG1))
 (8 6 (:REWRITE PFIELD::MUL-WHEN-NOT-INTEGERP-ARG1-CHEAP))
 (7 7 (:TYPE-PRESCRIPTION PFIELD::NATP-OF-DIV))
 (6 2 (:DEFINITION NATP))
 (5 5 (:REWRITE PFIELD::ADD-COMMUTATIVE-WHEN-CONSTANT))
 (4 4 (:REWRITE PFIELD::SUB-WHEN-CONSTANTS))
 (4 3 (:REWRITE IFIX-WHEN-NOT-INTEGERP-UNLIMITED))
 (4 3 (:REWRITE PFIELD::FEP-WHEN-CONSTANT))
 (3 3 (:REWRITE PFIELD::FEP-WHEN-FE-LISTP-AND-MEMBER-EQUAL))
 (3 3 (:REWRITE PFIELD::ADD-OF-MUL-AND-MUL-COMBINE-CONSTANTS-2))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (2 2 (:REWRITE PFIELD::NEG-OF-MUL-WHEN-CONSTANT))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE PFIELD::MUL-OF-MUL-COMBINE-CONSTANTS))
 (1 1 (:REWRITE PFIELD::MUL-COMMUTATIVE-2))
 (1 1 (:REWRITE PFIELD::ADD-ASSOCIATIVE-WHEN-CONSTANT))
 )
(ZKSEMAPHORE::PFEP-OF-MONTGOMERY-ADD.Y3
 (32 17 (:REWRITE PFIELD::ADD-WHEN-NOT-INTEGERP-ARG2-CHEAP))
 (27 27 (:REWRITE PFIELD::ADD-SUBST-CONSTANT-ARG2))
 (27 27 (:REWRITE PFIELD::ADD-SUBST-CONSTANT-ARG1))
 (27 17 (:REWRITE PFIELD::ADD-WHEN-NOT-INTEGERP-ARG1-CHEAP))
 (22 22 (:REWRITE PFIELD::ADD-OF-CONSTANTS))
 (22 11 (:REWRITE PFIELD::NEG-WHEN-NOT-POSP-ARG2-CHEAP))
 (15 15 (:REWRITE PFIELD::MUL-OF--1-BECOMES-NEG-ALT))
 (15 11 (:REWRITE PFIELD::NEG-WHEN-NOT-INTEGERP-CHEAP))
 (12 12 (:REWRITE PFIELD::ADD-OF-ADD-COMBINE-CONSTANTS))
 (12 6 (:REWRITE PFIELD::MUL-WHEN-NOT-INTEGERP-ARG2-CHEAP))
 (11 11 (:TYPE-PRESCRIPTION PFIELD::NATP-OF-NEG))
 (10 10 (:REWRITE PFIELD::MUL-WHEN-EQUAL-OF-MOD-SUBST-ARG2))
 (10 10 (:REWRITE PFIELD::MUL-WHEN-EQUAL-OF-MOD-SUBST-ARG1))
 (10 10 (:REWRITE PFIELD::MUL-WHEN-CONSTANT-REDUCE-ARG1))
 (8 6 (:REWRITE PFIELD::MUL-WHEN-NOT-INTEGERP-ARG1-CHEAP))
 (7 7 (:TYPE-PRESCRIPTION PFIELD::NATP-OF-DIV))
 (6 2 (:DEFINITION NATP))
 (5 5 (:REWRITE PFIELD::ADD-COMMUTATIVE-WHEN-CONSTANT))
 (4 4 (:REWRITE PFIELD::SUB-WHEN-CONSTANTS))
 (4 3 (:REWRITE IFIX-WHEN-NOT-INTEGERP-UNLIMITED))
 (4 3 (:REWRITE PFIELD::FEP-WHEN-CONSTANT))
 (3 3 (:REWRITE PFIELD::FEP-WHEN-FE-LISTP-AND-MEMBER-EQUAL))
 (3 3 (:REWRITE PFIELD::ADD-OF-MUL-AND-MUL-COMBINE-CONSTANTS-2))
 (2 2 (:TYPE-PRESCRIPTION NATP))
 (2 2 (:REWRITE PFIELD::NEG-OF-MUL-WHEN-CONSTANT))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE PFIELD::MUL-OF-MUL-COMBINE-CONSTANTS))
 (1 1 (:REWRITE PFIELD::MUL-COMMUTATIVE-2))
 (1 1 (:REWRITE PFIELD::ADD-ASSOCIATIVE-WHEN-CONSTANT))
 )
(ZKSEMAPHORE::SPEC)
(ZKSEMAPHORE::AUXP)
(ZKSEMAPHORE::BOOLEANP-OF-AUXP)
(ZKSEMAPHORE::CIRCUIT-CORE
 (49 49 (:REWRITE DEFAULT-CAR))
 (42 42 (:REWRITE DEFAULT-CDR))
 (21 7 (:DEFINITION NATP))
 (7 7 (:TYPE-PRESCRIPTION NATP))
 (7 7 (:REWRITE PFIELD::FEP-WHEN-FE-LISTP-AND-MEMBER-EQUAL))
 (7 7 (:REWRITE PFIELD::FEP-WHEN-CONSTANT))
 (7 7 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE R1CS::R1CS-VALUATIONP-WHEN-NOT-CONSP))
 )
(ZKSEMAPHORE::BOOLEANP-OF-CIRCUIT-CORE)
(ZKSEMAPHORE::CIRCUIT)
(ZKSEMAPHORE::CIRCUIT-SUFF)
(ZKSEMAPHORE::BOOLEANP-OF-CIRCUIT)
(ZKSEMAPHORE::CIRCUIT)
(ZKSEMAPHORE::CIRCOM
 (173 100 (:REWRITE PFIELD::ADD-WHEN-NOT-INTEGERP-ARG1-CHEAP))
 (163 100 (:REWRITE PFIELD::ADD-WHEN-NOT-INTEGERP-ARG2-CHEAP))
 (155 155 (:REWRITE PFIELD::ADD-SUBST-CONSTANT-ARG2))
 (155 155 (:REWRITE PFIELD::ADD-SUBST-CONSTANT-ARG1))
 (149 149 (:REWRITE PFIELD::ADD-OF-CONSTANTS))
 (83 67 (:REWRITE PFIELD::NEG-WHEN-NOT-INTEGERP-CHEAP))
 (72 72 (:REWRITE PFIELD::MUL-OF--1-BECOMES-NEG-ALT))
 (67 67 (:REWRITE PFIELD::NEG-WHEN-NOT-POSP-ARG2-CHEAP))
 (67 67 (:REWRITE PFIELD::NEG-WHEN-CONSTANT-ARG1))
 (58 58 (:REWRITE PFIELD::ADD-COMMUTATIVE-WHEN-CONSTANT))
 (40 40 (:REWRITE PFIELD::MUL-WHEN-NOT-INTEGERP-ARG2-CHEAP))
 (40 40 (:REWRITE PFIELD::MUL-WHEN-NOT-INTEGERP-ARG1-CHEAP))
 (40 40 (:REWRITE PFIELD::MUL-WHEN-EQUAL-OF-MOD-SUBST-ARG2))
 (40 40 (:REWRITE PFIELD::MUL-WHEN-EQUAL-OF-MOD-SUBST-ARG1))
 (40 40 (:REWRITE PFIELD::MUL-WHEN-CONSTANT-REDUCE-ARG1))
 (40 40 (:REWRITE PFIELD::MUL-COMMUTATIVE))
 (33 33 (:REWRITE PFIELD::SUB-WHEN-CONSTANTS))
 (31 31 (:REWRITE PFIELD::ADD-OF-ADD-COMBINE-CONSTANTS))
 (21 21 (:REWRITE PFIELD::EQUAL-OF-ADD-COMBINE-CONSTANTS-ALT))
 (21 21 (:REWRITE PFIELD::EQUAL-OF-ADD-COMBINE-CONSTANTS))
 (21 7 (:DEFINITION NATP))
 (16 16 (:REWRITE PFIELD::NEG-OF-MUL-WHEN-CONSTANT))
 (15 15 (:REWRITE PFIELD::EQUAL-OF-CONSTANT-AND-ADD-OF-NEG-ARG1))
 (11 9 (:REWRITE DEFAULT-<-1))
 (9 9 (:REWRITE PFIELD::FEP-WHEN-FE-LISTP-AND-MEMBER-EQUAL))
 (9 9 (:REWRITE DEFAULT-<-2))
 (7 7 (:TYPE-PRESCRIPTION NATP))
 (7 7 (:REWRITE PFIELD::FEP-WHEN-CONSTANT))
 (2 1 (:REWRITE IFIX-WHEN-NOT-INTEGERP-UNLIMITED))
 )
(ZKSEMAPHORE::BOOLEANP-OF-CIRCOM)
(ZKSEMAPHORE::CIRCUIT-CORE-IS-CIRCOM
 (166 91 (:REWRITE PFIELD::ADD-WHEN-NOT-INTEGERP-ARG2-CHEAP))
 (135 135 (:REWRITE PFIELD::ADD-SUBST-CONSTANT-ARG2))
 (135 135 (:REWRITE PFIELD::ADD-SUBST-CONSTANT-ARG1))
 (119 91 (:REWRITE PFIELD::ADD-WHEN-NOT-INTEGERP-ARG1-CHEAP))
 (117 117 (:REWRITE PFIELD::ADD-OF-CONSTANTS))
 (61 61 (:REWRITE LOOKUP-EQUAL-WHEN-NOT-CONSP-CHEAP))
 (61 61 (:REWRITE LOOKUP-EQUAL-WHEN-NOT-ASSOC-EQUAL-CHEAP))
 (61 61 (:REWRITE DEFAULT-CAR))
 (45 29 (:REWRITE IFIX-WHEN-NOT-INTEGERP-UNLIMITED))
 (40 33 (:REWRITE PFIELD::NEG-WHEN-NOT-INTEGERP-CHEAP))
 (36 36 (:REWRITE PFIELD::ADD-OF-ADD-COMBINE-CONSTANTS))
 (33 33 (:REWRITE PFIELD::NEG-WHEN-NOT-POSP-ARG2-CHEAP))
 (32 32 (:REWRITE PFIELD::NEG-WHEN-CONSTANT-ARG1))
 (21 14 (:REWRITE DEFAULT-<-1))
 (21 7 (:DEFINITION NATP))
 (16 16 (:TYPE-PRESCRIPTION R1CS::DOT-PRODUCT))
 (15 15 (:REWRITE PFIELD::MUL-WHEN-NOT-INTEGERP-ARG2-CHEAP))
 (15 15 (:REWRITE PFIELD::MUL-WHEN-NOT-INTEGERP-ARG1-CHEAP))
 (15 15 (:REWRITE PFIELD::MUL-WHEN-EQUAL-OF-MOD-SUBST-ARG2))
 (15 15 (:REWRITE PFIELD::MUL-WHEN-EQUAL-OF-MOD-SUBST-ARG1))
 (15 15 (:REWRITE PFIELD::MUL-WHEN-CONSTANT-REDUCE-ARG1))
 (15 15 (:REWRITE PFIELD::MUL-COMMUTATIVE))
 (15 15 (:REWRITE PFIELD::FEP-WHEN-FE-LISTP-AND-MEMBER-EQUAL))
 (15 15 (:REWRITE DEFAULT-CDR))
 (14 14 (:REWRITE DEFAULT-<-2))
 (8 8 (:REWRITE PFIELD::EQUAL-OF-ADD-CANCEL-BIND-FREE))
 (7 7 (:TYPE-PRESCRIPTION NATP))
 (7 7 (:REWRITE PFIELD::FEP-WHEN-CONSTANT))
 (7 7 (:REWRITE PFIELD::EQUAL-OF-ADD-COMBINE-CONSTANTS-ALT))
 (7 7 (:REWRITE PFIELD::EQUAL-OF-ADD-COMBINE-CONSTANTS))
 (6 6 (:REWRITE PFIELD::NEG-OF-MUL-WHEN-CONSTANT))
 (4 4 (:REWRITE PFIELD::SUB-WHEN-CONSTANTS))
 (3 3 (:REWRITE PFIELD::EQUAL-OF-MUL-CONSTANTS-ALT))
 (3 3 (:REWRITE PFIELD::EQUAL-OF-MUL-CONSTANTS))
 (1 1 (:REWRITE PFIELD::ADD-ASSOCIATIVE-WHEN-CONSTANT))
 )
(ZKSEMAPHORE::CIRCOM-IMPLIES-SPEC
 (170 92 (:REWRITE PFIELD::ADD-WHEN-NOT-INTEGERP-ARG2-CHEAP))
 (153 92 (:REWRITE PFIELD::ADD-WHEN-NOT-INTEGERP-ARG1-CHEAP))
 (149 149 (:REWRITE PFIELD::ADD-SUBST-CONSTANT-ARG2))
 (149 149 (:REWRITE PFIELD::ADD-SUBST-CONSTANT-ARG1))
 (127 127 (:REWRITE PFIELD::ADD-OF-CONSTANTS))
 (122 61 (:REWRITE PFIELD::NEG-WHEN-NOT-POSP-ARG2-CHEAP))
 (80 61 (:REWRITE PFIELD::NEG-WHEN-NOT-INTEGERP-CHEAP))
 (67 67 (:REWRITE PFIELD::MUL-OF--1-BECOMES-NEG-ALT))
 (64 64 (:TYPE-PRESCRIPTION PFIELD::NATP-OF-NEG))
 (64 64 (:REWRITE PFIELD::ADD-OF-ADD-COMBINE-CONSTANTS))
 (45 45 (:REWRITE PFIELD::MUL-WHEN-EQUAL-OF-MOD-SUBST-ARG2))
 (45 45 (:REWRITE PFIELD::MUL-WHEN-EQUAL-OF-MOD-SUBST-ARG1))
 (45 45 (:REWRITE PFIELD::MUL-WHEN-CONSTANT-REDUCE-ARG1))
 (45 37 (:REWRITE PFIELD::MUL-WHEN-NOT-INTEGERP-ARG2-CHEAP))
 (37 37 (:REWRITE PFIELD::MUL-WHEN-NOT-INTEGERP-ARG1-CHEAP))
 (27 27 (:REWRITE PFIELD::ADD-COMMUTATIVE-WHEN-CONSTANT))
 (27 9 (:DEFINITION NATP))
 (23 16 (:REWRITE IFIX-WHEN-NOT-INTEGERP-UNLIMITED))
 (21 21 (:REWRITE PFIELD::SUB-WHEN-CONSTANTS))
 (20 15 (:REWRITE PFIELD::FEP-WHEN-CONSTANT))
 (15 15 (:REWRITE PFIELD::FEP-WHEN-FE-LISTP-AND-MEMBER-EQUAL))
 (12 12 (:REWRITE PFIELD::MUL-OF-MUL-COMBINE-CONSTANTS))
 (11 11 (:REWRITE PFIELD::NEG-OF-MUL-WHEN-CONSTANT))
 (11 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (9 9 (:TYPE-PRESCRIPTION NATP))
 (4 4 (:REWRITE PFIELD::MUL-OF-ADD-OF-MUL-COMBINE-CONSTANTS))
 (4 4 (:REWRITE PFIELD::ADD-ASSOCIATIVE-WHEN-CONSTANT))
 (1 1 (:REWRITE PFIELD::EQUAL-OF-ADD-COMBINE-CONSTANTS-ALT))
 (1 1 (:REWRITE PFIELD::EQUAL-OF-ADD-COMBINE-CONSTANTS))
 )
(ZKSEMAPHORE::CIRCUIT-CORE-IMPLIES-SPEC)
(ZKSEMAPHORE::CIRCUIT-IMPLIES-SPEC)
(ZKSEMAPHORE::LAMBDA-WITNESS)
(ZKSEMAPHORE::SPEC-IMPLIES-CIRCOM
 (198 105 (:REWRITE PFIELD::ADD-WHEN-NOT-INTEGERP-ARG1-CHEAP))
 (153 105 (:REWRITE PFIELD::ADD-WHEN-NOT-INTEGERP-ARG2-CHEAP))
 (132 132 (:REWRITE PFIELD::ADD-SUBST-CONSTANT-ARG2))
 (132 132 (:REWRITE PFIELD::ADD-SUBST-CONSTANT-ARG1))
 (127 127 (:REWRITE PFIELD::ADD-OF-CONSTANTS))
 (100 85 (:REWRITE PFIELD::NEG-WHEN-NOT-INTEGERP-CHEAP))
 (89 89 (:TYPE-PRESCRIPTION PFIELD::NATP-OF-NEG))
 (85 85 (:REWRITE PFIELD::NEG-WHEN-NOT-POSP-ARG2-CHEAP))
 (81 81 (:REWRITE PFIELD::NEG-WHEN-CONSTANT-ARG1))
 (75 38 (:REWRITE PFIELD::MUL-WHEN-NOT-INTEGERP-ARG2-CHEAP))
 (65 65 (:REWRITE PFIELD::ADD-COMMUTATIVE-WHEN-CONSTANT))
 (64 64 (:REWRITE PFIELD::MUL-OF--1-BECOMES-NEG-ALT))
 (49 49 (:REWRITE PFIELD::MUL-WHEN-EQUAL-OF-MOD-SUBST-ARG2))
 (49 49 (:REWRITE PFIELD::MUL-WHEN-EQUAL-OF-MOD-SUBST-ARG1))
 (49 49 (:REWRITE PFIELD::MUL-WHEN-CONSTANT-REDUCE-ARG1))
 (49 38 (:REWRITE PFIELD::MUL-WHEN-NOT-INTEGERP-ARG1-CHEAP))
 (34 34 (:REWRITE PFIELD::ADD-OF-ADD-COMBINE-CONSTANTS))
 (30 10 (:DEFINITION NATP))
 (19 19 (:REWRITE PFIELD::SUB-WHEN-CONSTANTS))
 (10 10 (:TYPE-PRESCRIPTION NATP))
 (10 10 (:REWRITE PFIELD::FEP-WHEN-FE-LISTP-AND-MEMBER-EQUAL))
 (10 10 (:REWRITE PFIELD::FEP-WHEN-CONSTANT))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (9 9 (:REWRITE PFIELD::MUL-OF-MUL-COMBINE-CONSTANTS))
 (7 5 (:REWRITE IFIX-WHEN-NOT-INTEGERP-UNLIMITED))
 (6 6 (:REWRITE PFIELD::EQUAL-OF-ADD-COMBINE-CONSTANTS-ALT))
 (6 6 (:REWRITE PFIELD::EQUAL-OF-ADD-COMBINE-CONSTANTS))
 (3 3 (:REWRITE PFIELD::ADD-OF-MUL-AND-MUL-COMBINE-CONSTANTS-2))
 (2 2 (:REWRITE PFIELD::ADD-ASSOCIATIVE-WHEN-CONSTANT))
 (1 1 (:REWRITE PFIELD::MUL-OF-ADD-OF-MUL-COMBINE-CONSTANTS))
 (1 1 (:REWRITE PFIELD::ADD-OF-NEG-OF-MUL-AND-ADD-OF-NEG-OF-MUL-SAME))
 )
(ZKSEMAPHORE::AUXP-WHEN-PRECOND
 (18 6 (:DEFINITION NATP))
 (6 6 (:TYPE-PRESCRIPTION NATP))
 (6 6 (:REWRITE PFIELD::FEP-WHEN-FE-LISTP-AND-MEMBER-EQUAL))
 (6 6 (:REWRITE PFIELD::FEP-WHEN-CONSTANT))
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE PFIELD::ADD-SUBST-CONSTANT-ARG2))
 (4 4 (:REWRITE PFIELD::ADD-SUBST-CONSTANT-ARG1))
 (4 4 (:REWRITE PFIELD::ADD-OF-CONSTANTS))
 (4 2 (:REWRITE PFIELD::NEG-WHEN-NOT-POSP-ARG2-CHEAP))
 (4 2 (:REWRITE PFIELD::ADD-WHEN-NOT-INTEGERP-ARG1-CHEAP))
 (2 2 (:TYPE-PRESCRIPTION PFIELD::NATP-OF-NEG))
 (2 2 (:REWRITE PFIELD::SUB-WHEN-CONSTANTS))
 (2 2 (:REWRITE PFIELD::NEG-WHEN-NOT-INTEGERP-CHEAP))
 (2 2 (:REWRITE PFIELD::NEG-WHEN-CONSTANT-ARG1))
 (2 2 (:REWRITE PFIELD::ADD-WHEN-NOT-INTEGERP-ARG2-CHEAP))
 (2 2 (:REWRITE PFIELD::ADD-COMMUTATIVE-WHEN-CONSTANT))
 )
(ZKSEMAPHORE::SPEC-IMPLIES-CIRCUIT-CORE)
(ZKSEMAPHORE::SPEC-IMPLIES-CIRCUIT)
(ZKSEMAPHORE::CIRCUIT-IS-SPEC)
