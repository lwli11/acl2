(INT-RND-REM::ROUND-AS-FLOOR-&-CEILING
 (1384 126 (:REWRITE NIQ-TYPE . 3))
 (830 724 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (828 688 (:REWRITE DEFAULT-*-2))
 (702 688 (:REWRITE DEFAULT-*-1))
 (414 272 (:REWRITE DEFAULT-UNARY-MINUS))
 (362 362 (:REWRITE DEFAULT-UNARY-/))
 (342 126 (:REWRITE NIQ-TYPE . 2))
 (318 172 (:REWRITE DEFAULT-+-2))
 (308 260 (:REWRITE DEFAULT-<-1))
 (291 260 (:REWRITE DEFAULT-<-2))
 (200 172 (:REWRITE DEFAULT-+-1))
 (198 198 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (92 92 (:REWRITE DEFAULT-NUMERATOR))
 (76 76 (:REWRITE INTEGERP==>DENOMINATOR=1))
 (76 76 (:REWRITE DEFAULT-DENOMINATOR))
 (54 54 (:REWRITE FOLD-CONSTS-IN-*))
 (48 16 (:LINEAR NIQ-TYPE))
 (33 33 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (33 33 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 1))
 (33 33 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (33 33 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (32 16 (:LINEAR X*Y>1-POSITIVE))
 (6 2 (:REWRITE <-*-/-LEFT))
 )
(INT-RND-REM::CEILING-AS-FLOOR
 (68 6 (:REWRITE NIQ-TYPE . 3))
 (54 38 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (32 4 (:REWRITE FUNCTIONAL-COMMUTATIVITY-OF-MINUS-*-LEFT))
 (28 28 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (25 25 (:REWRITE DEFAULT-*-2))
 (25 25 (:REWRITE DEFAULT-*-1))
 (24 6 (:REWRITE COMMUTATIVITY-OF-*))
 (19 19 (:REWRITE DEFAULT-UNARY-/))
 (16 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (16 6 (:REWRITE NIQ-TYPE . 2))
 (11 5 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (7 5 (:REWRITE DEFAULT-+-1))
 (6 6 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (6 6 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 1))
 (6 6 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (6 6 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (6 6 (:REWRITE RATIONAL-IMPLIES2))
 (6 2 (:LINEAR X*Y>1-POSITIVE))
 (5 5 (:REWRITE DEFAULT-NUMERATOR))
 (4 4 (:REWRITE DEFAULT-DENOMINATOR))
 )
(INT-RND-REM::CLOSURE-LAWS)
(INT-RND-REM::EQUIVALENCE-LAW)
(INT-RND-REM::CONGRUENCE-LAWS)
(INT-RND-REM::CLOSURE-OF-IDENTITY)
(INT-RND-REM::EQUIVALENCE-CLASS-LAWS)
(INT-RND-REM::COMMUTATIVITY-LAWS
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 3 (:REWRITE DEFAULT-*-2))
 (3 3 (:REWRITE DEFAULT-*-1))
 )
(INT-RND-REM::ASSOCIATIVITY-LAWS)
(INT-RND-REM::LEFT-DISTRIBUTIVITY-LAW
 (6 2 (:LINEAR X*Y>1-POSITIVE))
 (5 5 (:REWRITE DEFAULT-*-2))
 (5 5 (:REWRITE DEFAULT-*-1))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 )
(INT-RND-REM::LEFT-UNICITY-LAWS)
(INT-RND-REM::RIGHT-INVERSE-LAW
 (3 3 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 )
(INT-RND-REM::ZERO-DIVISOR-LAW
 (1 1 (:REWRITE DEFAULT-*-2))
 (1 1 (:REWRITE DEFAULT-*-1))
 )
(INT-RND-REM::NATP-ABS
 (14 14 (:REWRITE DEFAULT-<-2))
 (14 14 (:REWRITE DEFAULT-<-1))
 (9 9 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:TYPE-PRESCRIPTION INT-RND-REM::NATP-ABS))
 )
(INT-RND-REM::CONGRUENCE-FOR-ABS)
(INT-RND-REM::RND-REM)
(INT-RND-REM::CLOSURE-OF-ROUND-&-RND-REM
 (403 65 (:REWRITE DEFAULT-+-2))
 (327 83 (:REWRITE DEFAULT-*-2))
 (283 33 (:REWRITE DEFAULT-UNARY-MINUS))
 (254 254 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (254 254 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 1))
 (254 254 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (254 254 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (196 28 (:REWRITE FLOOR-=-X/Y . 2))
 (165 65 (:REWRITE DEFAULT-+-1))
 (156 132 (:REWRITE DEFAULT-<-1))
 (146 88 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (144 132 (:REWRITE DEFAULT-<-2))
 (103 83 (:REWRITE DEFAULT-*-1))
 (84 28 (:REWRITE FLOOR-TYPE-4 . 3))
 (84 28 (:REWRITE FLOOR-TYPE-4 . 2))
 (84 28 (:REWRITE FLOOR-TYPE-3 . 3))
 (84 28 (:REWRITE FLOOR-TYPE-3 . 2))
 (58 58 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (44 44 (:REWRITE DEFAULT-UNARY-/))
 (28 28 (:REWRITE FLOOR-=-X/Y . 3))
 (16 16 (:REWRITE FOLD-CONSTS-IN-+))
 (8 8 (:REWRITE FOLD-CONSTS-IN-*))
 (6 2 (:REWRITE <-*-/-LEFT))
 )
(INT-RND-REM::CONGRUENCE-FOR-ROUND-&-RND-REM)
(INT-RND-REM::DIVISION-PROPERTY
 (6443 3477 (:REWRITE DEFAULT-*-2))
 (5692 848 (:REWRITE FLOOR-=-X/Y . 2))
 (3936 1350 (:REWRITE DEFAULT-+-2))
 (3929 2848 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (3839 2574 (:REWRITE DEFAULT-<-1))
 (3529 3477 (:REWRITE DEFAULT-*-1))
 (3394 2574 (:REWRITE DEFAULT-<-2))
 (2090 1350 (:REWRITE DEFAULT-+-1))
 (2033 854 (:REWRITE DEFAULT-UNARY-MINUS))
 (1756 848 (:REWRITE FLOOR-TYPE-4 . 2))
 (1638 848 (:REWRITE FLOOR-TYPE-3 . 3))
 (1590 848 (:REWRITE FLOOR-TYPE-4 . 3))
 (1424 1424 (:REWRITE DEFAULT-UNARY-/))
 (1340 848 (:REWRITE FLOOR-TYPE-3 . 2))
 (1081 1081 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (848 848 (:REWRITE FLOOR-=-X/Y . 3))
 (617 289 (:LINEAR X*Y>1-POSITIVE))
 (201 201 (:REWRITE FOLD-CONSTS-IN-*))
 (59 59 (:REWRITE EQUAL-CONSTANT-+))
 (15 7 (:REWRITE <-*-/-LEFT))
 (7 3 (:REWRITE X*Y>1-POSITIVE))
 (1 1 (:REWRITE <-*-/-RIGHT))
 )
(INT-RND-REM::ABS-*
 (84 76 (:REWRITE DEFAULT-<-2))
 (80 76 (:REWRITE DEFAULT-<-1))
 (45 8 (:LINEAR X*Y>1-POSITIVE))
 (37 36 (:REWRITE DEFAULT-*-2))
 (37 36 (:REWRITE DEFAULT-*-1))
 (20 20 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 1 (:REWRITE ZERO-IS-ONLY-ZERO-DIVISOR))
 )
(INT-RND-REM::DIVIDES-P$-WITNESS)
(INT-RND-REM::DIVIDES-P)
(INT-RND-REM::DIVIDES-P-SUFF
 (4 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE DEFAULT-*-1))
 (4 2 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (2 2 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (2 2 (:REWRITE FOLD-CONSTS-IN-*))
 (1 1 (:REWRITE DEFAULT-UNARY-/))
 )
(INT-RND-REM::UNIT-P)
(INT-RND-REM::ABS-UNIT-P=1
 (409 71 (:REWRITE DEFAULT-+-2))
 (348 99 (:REWRITE DEFAULT-*-2))
 (283 33 (:REWRITE DEFAULT-UNARY-MINUS))
 (254 254 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 2))
 (254 254 (:TYPE-PRESCRIPTION FLOOR-TYPE-3 . 1))
 (254 254 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 2))
 (254 254 (:TYPE-PRESCRIPTION FLOOR-TYPE-1 . 1))
 (196 28 (:REWRITE FLOOR-=-X/Y . 2))
 (171 71 (:REWRITE DEFAULT-+-1))
 (162 137 (:REWRITE DEFAULT-<-1))
 (149 137 (:REWRITE DEFAULT-<-2))
 (146 88 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (120 99 (:REWRITE DEFAULT-*-1))
 (84 28 (:REWRITE FLOOR-TYPE-4 . 3))
 (84 28 (:REWRITE FLOOR-TYPE-4 . 2))
 (84 28 (:REWRITE FLOOR-TYPE-3 . 3))
 (84 28 (:REWRITE FLOOR-TYPE-3 . 2))
 (58 58 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (44 44 (:REWRITE DEFAULT-UNARY-/))
 (28 28 (:REWRITE FLOOR-=-X/Y . 3))
 (16 16 (:REWRITE FOLD-CONSTS-IN-+))
 (10 3 (:LINEAR X*Y>1-POSITIVE))
 (8 8 (:REWRITE FOLD-CONSTS-IN-*))
 (6 2 (:REWRITE <-*-/-LEFT))
 (1 1 (:REWRITE INT-RND-REM::DIVIDES-P-SUFF))
 )
(INT-RND-REM::ABS=1-IMPLIES-UNIT-P)
(INT-RND-REM::UNIT-P=_+1_OR_-1
 (12 6 (:REWRITE DEFAULT-*-2))
 (8 8 (:REWRITE INT-RND-REM::DIVIDES-P-SUFF))
 (6 6 (:REWRITE DEFAULT-*-1))
 (4 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-UNARY-MINUS))
 (3 3 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:LINEAR X*Y>1-POSITIVE))
 )
(INT-RND-REM::ABS-<-ABS-*
 (12 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 (9 9 (:REWRITE DEFAULT-UNARY-MINUS))
 (5 5 (:REWRITE DEFAULT-*-2))
 (5 5 (:REWRITE DEFAULT-*-1))
 (3 1 (:LINEAR X*Y>1-POSITIVE))
 )
(INT-RND-REM::GREATEST-FACTOR
 (10 10 (:TYPE-PRESCRIPTION INT-RND-REM::NATP-ABS))
 (4 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-<-2))
 (2 1 (:REWRITE DEFAULT-*-2))
 (1 1 (:REWRITE ZP-OPEN))
 (1 1 (:REWRITE INT-RND-REM::DIVIDES-P-SUFF))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE DEFAULT-*-1))
 )
(INT-RND-REM::NATP-GREATEST-FACTOR
 (14 7 (:REWRITE DEFAULT-*-2))
 (7 7 (:REWRITE ZP-OPEN))
 (7 7 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE DEFAULT-<-1))
 (7 7 (:REWRITE DEFAULT-*-1))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(INT-RND-REM::DIVIDES-P-GREATEST-FACTOR
 (66 38 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (40 34 (:REWRITE DEFAULT-*-2))
 (38 34 (:REWRITE DEFAULT-*-1))
 (26 17 (:REWRITE DEFAULT-UNARY-/))
 (20 20 (:REWRITE DEFAULT-UNARY-MINUS))
 (16 16 (:REWRITE DEFAULT-<-2))
 (16 16 (:REWRITE DEFAULT-<-1))
 (13 9 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (10 10 (:REWRITE ZP-OPEN))
 (6 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (6 2 (:REWRITE NUMERATOR-MINUS))
 (5 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (5 1 (:REWRITE DEFAULT-NUMERATOR))
 (2 2 (:REWRITE FOLD-CONSTS-IN-*))
 )
(INT-RND-REM::X>1-FORWARD)
(INT-RND-REM::NOT-INTEGERP-/-A
 (4 2 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (1 1 (:REWRITE DEFAULT-UNARY-/))
 (1 1 (:REWRITE DEFAULT-NUMERATOR))
 )
(INT-RND-REM::NOT-INTEGERP-/-B-LEMMA
 (6 4 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (2 2 (:REWRITE DEFAULT-UNARY-/))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
 (1 1 (:REWRITE DEFAULT-NUMERATOR))
 )
(INT-RND-REM::NOT-INTEGERP-/-B)
(INT-RND-REM::GREATEST-FACTOR=1
 (32 25 (:REWRITE DEFAULT-*-1))
 (28 28 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (25 25 (:REWRITE DEFAULT-*-2))
 (16 16 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (16 8 (:REWRITE DEFAULT-<-1))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (14 14 (:REWRITE DEFAULT-UNARY-/))
 (11 11 (:REWRITE DEFAULT-+-2))
 (11 11 (:REWRITE DEFAULT-+-1))
 (10 10 (:REWRITE ZP-OPEN))
 (8 8 (:REWRITE DEFAULT-<-2))
 (1 1 (:REWRITE FOLD-CONSTS-IN-*))
 )
(INT-RND-REM::GREATEST-FACTOR->-1
 (69 19 (:REWRITE DEFAULT-<-2))
 (29 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (19 19 (:REWRITE DEFAULT-<-1))
 (10 5 (:REWRITE DEFAULT-*-2))
 (5 5 (:REWRITE ZP-OPEN))
 (5 5 (:REWRITE DEFAULT-*-1))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(INT-RND-REM::GREATEST-FACTOR->-1-A
 (64 19 (:REWRITE DEFAULT-<-2))
 (29 8 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (24 19 (:REWRITE DEFAULT-<-1))
 (10 5 (:REWRITE DEFAULT-*-2))
 (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 6 (:LINEAR INT-RND-REM::GREATEST-FACTOR->-1))
 (5 5 (:REWRITE ZP-OPEN))
 (5 5 (:REWRITE DEFAULT-*-1))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 )
(INT-RND-REM::GREATEST-FACTOR->=-DIVISOR
 (96 60 (:REWRITE DEFAULT-<-1))
 (75 60 (:REWRITE DEFAULT-<-2))
 (72 9 (:LINEAR X*Y>1-POSITIVE))
 (56 10 (:LINEAR INT-RND-REM::GREATEST-FACTOR->-1))
 (48 10 (:LINEAR INT-RND-REM::GREATEST-FACTOR->-1-A))
 (47 23 (:REWRITE DEFAULT-*-2))
 (24 23 (:REWRITE DEFAULT-*-1))
 (18 9 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (8 8 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-+-1))
 (8 1 (:REWRITE X*Y>1-POSITIVE))
 (7 1 (:REWRITE INT-RND-REM::ABS-*))
 (3 3 (:REWRITE ZP-OPEN))
 (3 2 (:TYPE-PRESCRIPTION INT-RND-REM::NATP-ABS))
 )
(INT-RND-REM::GREATEST-FACTOR-<=-Y
 (105 60 (:REWRITE DEFAULT-<-2))
 (72 9 (:LINEAR X*Y>1-POSITIVE))
 (67 60 (:REWRITE DEFAULT-<-1))
 (59 29 (:REWRITE DEFAULT-*-2))
 (56 10 (:LINEAR INT-RND-REM::GREATEST-FACTOR->-1))
 (48 10 (:LINEAR INT-RND-REM::GREATEST-FACTOR->-1-A))
 (30 29 (:REWRITE DEFAULT-*-1))
 (18 9 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (10 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (8 1 (:REWRITE X*Y>1-POSITIVE))
 (7 6 (:TYPE-PRESCRIPTION INT-RND-REM::NATP-ABS))
 (7 1 (:REWRITE INT-RND-REM::ABS-*))
 (6 6 (:REWRITE ZP-OPEN))
 )
(INT-RND-REM::REDUCIBLE-P$-WITNESS)
(INT-RND-REM::REDUCIBLE-P)
(INT-RND-REM::SUBGOAL-7.4
 (513 366 (:REWRITE DEFAULT-*-2))
 (438 122 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (433 366 (:REWRITE DEFAULT-*-1))
 (134 131 (:REWRITE DEFAULT-<-2))
 (133 131 (:REWRITE DEFAULT-<-1))
 (129 102 (:REWRITE DEFAULT-+-2))
 (107 53 (:REWRITE DEFAULT-UNARY-/))
 (102 102 (:REWRITE DEFAULT-+-1))
 (89 62 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (79 67 (:REWRITE DEFAULT-UNARY-MINUS))
 (54 54 (:TYPE-PRESCRIPTION INT-RND-REM::NATP-ABS))
 (52 52 (:REWRITE FOLD-CONSTS-IN-*))
 (52 13 (:LINEAR INT-RND-REM::GREATEST-FACTOR->-1))
 (46 46 (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (40 40 (:REWRITE X*Y>1-POSITIVE))
 (28 28 (:REWRITE INT-RND-REM::DIVIDES-P-SUFF))
 (20 10 (:REWRITE INT-RND-REM::GREATEST-FACTOR=1))
 (13 13 (:LINEAR INT-RND-REM::GREATEST-FACTOR->=-DIVISOR))
 (13 13 (:LINEAR INT-RND-REM::GREATEST-FACTOR->-1-A))
 (13 13 (:LINEAR INT-RND-REM::GREATEST-FACTOR-<=-Y))
 (8 5 (:LINEAR X*Y>1-POSITIVE))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 1 (:REWRITE NUMERATOR-MINUS))
 )
(INT-RND-REM::SUBGOAL-7.3-LEMMA
 (40 39 (:REWRITE DEFAULT-<-1))
 (39 39 (:REWRITE DEFAULT-<-2))
 (15 5 (:REWRITE X*Y>1-POSITIVE-LEMMA))
 (15 5 (:REWRITE *-PRESERVES->=-FOR-NONNEGATIVES))
 (15 5 (:REWRITE *-PRESERVES->-FOR-NONNEGATIVES-1))
 (10 10 (:REWRITE DEFAULT-*-2))
 (10 10 (:REWRITE DEFAULT-*-1))
 (7 3 (:LINEAR X*Y>1-POSITIVE))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(INT-RND-REM::SUBGOAL-7.3-LEMMA-A)
(INT-RND-REM::SUBGOAL-7.3
 (6 6 (:REWRITE DEFAULT-<-2))
 (6 6 (:REWRITE DEFAULT-<-1))
 (3 3 (:LINEAR X*Y>1-POSITIVE))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(INT-RND-REM::SUBGOAL-7.1
 (114 76 (:REWRITE DEFAULT-*-2))
 (104 12 (:LINEAR X*Y>1-POSITIVE))
 (97 22 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (95 76 (:REWRITE DEFAULT-*-1))
 (41 33 (:REWRITE DEFAULT-<-2))
 (33 33 (:REWRITE DEFAULT-<-1))
 (29 22 (:REWRITE DEFAULT-+-2))
 (29 8 (:LINEAR INT-RND-REM::GREATEST-FACTOR->-1))
 (25 11 (:REWRITE DEFAULT-UNARY-/))
 (22 22 (:REWRITE DEFAULT-+-1))
 (21 7 (:REWRITE FOLD-CONSTS-IN-+))
 (18 11 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (16 16 (:REWRITE X*Y>1-POSITIVE))
 (14 14 (:REWRITE EQUAL-CONSTANT-+))
 (13 13 (:REWRITE FOLD-CONSTS-IN-*))
 (8 8 (:REWRITE INT-RND-REM::DIVIDES-P-SUFF))
 (8 8 (:LINEAR INT-RND-REM::GREATEST-FACTOR->=-DIVISOR))
 (8 8 (:LINEAR INT-RND-REM::GREATEST-FACTOR->-1-A))
 (8 8 (:LINEAR INT-RND-REM::GREATEST-FACTOR-<=-Y))
 (8 4 (:REWRITE INT-RND-REM::GREATEST-FACTOR=1))
 )
(INT-RND-REM::SUBGOAL-5.3-LEMMA
 (41 40 (:REWRITE DEFAULT-<-1))
 (40 40 (:REWRITE DEFAULT-<-2))
 (15 5 (:REWRITE X*Y>1-POSITIVE-LEMMA))
 (15 5 (:REWRITE *-PRESERVES->=-FOR-NONNEGATIVES))
 (15 5 (:REWRITE *-PRESERVES->-FOR-NONNEGATIVES-1))
 (10 10 (:REWRITE DEFAULT-*-2))
 (10 10 (:REWRITE DEFAULT-*-1))
 (9 3 (:LINEAR X*Y>1-POSITIVE))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(INT-RND-REM::SUBGOAL-5.3-LEMMA-A)
(INT-RND-REM::SUBGOAL-5.3
 (9 9 (:REWRITE DEFAULT-<-2))
 (9 9 (:REWRITE DEFAULT-<-1))
 (9 3 (:LINEAR X*Y>1-POSITIVE))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(INT-RND-REM::SUBGOAL-5.2
 (561 393 (:REWRITE DEFAULT-*-2))
 (481 393 (:REWRITE DEFAULT-*-1))
 (466 136 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (145 135 (:REWRITE DEFAULT-<-1))
 (139 135 (:REWRITE DEFAULT-<-2))
 (129 102 (:REWRITE DEFAULT-+-2))
 (126 120 (:REWRITE DEFAULT-UNARY-MINUS))
 (108 108 (:TYPE-PRESCRIPTION INT-RND-REM::NATP-ABS))
 (107 53 (:REWRITE DEFAULT-UNARY-/))
 (102 102 (:REWRITE DEFAULT-+-1))
 (89 62 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (52 52 (:REWRITE FOLD-CONSTS-IN-*))
 (39 13 (:LINEAR INT-RND-REM::GREATEST-FACTOR->-1-A))
 (30 10 (:REWRITE INT-RND-REM::GREATEST-FACTOR=1))
 (28 28 (:REWRITE INT-RND-REM::DIVIDES-P-SUFF))
 (24 8 (:REWRITE NUMERATOR-MINUS))
 (16 5 (:LINEAR X*Y>1-POSITIVE))
 (13 13 (:LINEAR INT-RND-REM::GREATEST-FACTOR->=-DIVISOR))
 (13 13 (:LINEAR INT-RND-REM::GREATEST-FACTOR->-1))
 (13 13 (:LINEAR INT-RND-REM::GREATEST-FACTOR-<=-Y))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(INT-RND-REM::SUBGOAL-5.1
 (170 170 (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (132 12 (:LINEAR X*Y>1-POSITIVE))
 (129 83 (:REWRITE DEFAULT-*-2))
 (111 83 (:REWRITE DEFAULT-*-1))
 (99 22 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (49 37 (:REWRITE DEFAULT-<-2))
 (37 37 (:REWRITE DEFAULT-<-1))
 (29 22 (:REWRITE DEFAULT-+-2))
 (25 11 (:REWRITE DEFAULT-UNARY-/))
 (22 22 (:REWRITE DEFAULT-+-1))
 (22 8 (:LINEAR INT-RND-REM::GREATEST-FACTOR->-1-A))
 (21 7 (:REWRITE FOLD-CONSTS-IN-+))
 (18 11 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (14 14 (:REWRITE EQUAL-CONSTANT-+))
 (13 13 (:REWRITE FOLD-CONSTS-IN-*))
 (12 4 (:REWRITE INT-RND-REM::GREATEST-FACTOR=1))
 (11 11 (:REWRITE DEFAULT-UNARY-MINUS))
 (8 8 (:REWRITE INT-RND-REM::DIVIDES-P-SUFF))
 (8 8 (:LINEAR INT-RND-REM::GREATEST-FACTOR->=-DIVISOR))
 (8 8 (:LINEAR INT-RND-REM::GREATEST-FACTOR->-1))
 (8 8 (:LINEAR INT-RND-REM::GREATEST-FACTOR-<=-Y))
 )
(INT-RND-REM::SUBGOAL-1.4
 (753 144 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (571 414 (:REWRITE DEFAULT-*-2))
 (467 414 (:REWRITE DEFAULT-*-1))
 (179 136 (:REWRITE DEFAULT-+-2))
 (136 136 (:REWRITE DEFAULT-+-1))
 (134 64 (:REWRITE DEFAULT-UNARY-/))
 (127 116 (:REWRITE DEFAULT-<-1))
 (119 116 (:REWRITE DEFAULT-<-2))
 (87 87 (:REWRITE FOLD-CONSTS-IN-*))
 (83 48 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (44 44 (:REWRITE INT-RND-REM::DIVIDES-P-SUFF))
 (43 14 (:LINEAR X*Y>1-POSITIVE))
 (22 11 (:REWRITE INT-RND-REM::GREATEST-FACTOR=1))
 (14 14 (:LINEAR INT-RND-REM::GREATEST-FACTOR->=-DIVISOR))
 (14 14 (:LINEAR INT-RND-REM::GREATEST-FACTOR->-1-A))
 (14 14 (:LINEAR INT-RND-REM::GREATEST-FACTOR-<=-Y))
 (9 9 (:REWRITE DEFAULT-UNARY-MINUS))
 (6 6 (:REWRITE /-CANCELLATION-ON-LEFT))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(INT-RND-REM::SUBGOAL-1.3-LEMMA
 (29 28 (:REWRITE DEFAULT-<-2))
 (28 28 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE DEFAULT-*-2))
 (10 10 (:REWRITE DEFAULT-*-1))
 (9 5 (:REWRITE X*Y>1-POSITIVE-LEMMA))
 (9 5 (:REWRITE *-PRESERVES->-FOR-NONNEGATIVES-1))
 (9 3 (:LINEAR X*Y>1-POSITIVE))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(INT-RND-REM::SUBGOAL-1.3-LEMMA-A)
(INT-RND-REM::SUBGOAL-1.3)
(INT-RND-REM::SUBGOAL-1.1
 (513 12 (:DEFINITION INT-RND-REM::GREATEST-FACTOR))
 (192 14 (:LINEAR X*Y>1-POSITIVE))
 (151 28 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (118 75 (:REWRITE DEFAULT-*-2))
 (90 75 (:REWRITE DEFAULT-*-1))
 (43 31 (:REWRITE DEFAULT-+-2))
 (36 12 (:REWRITE FOLD-CONSTS-IN-+))
 (34 14 (:REWRITE DEFAULT-UNARY-/))
 (31 31 (:REWRITE DEFAULT-+-1))
 (26 24 (:REWRITE DEFAULT-<-2))
 (24 24 (:REWRITE DEFAULT-<-1))
 (24 14 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (22 22 (:REWRITE EQUAL-CONSTANT-+))
 (16 16 (:REWRITE FOLD-CONSTS-IN-*))
 (13 13 (:REWRITE INT-RND-REM::DIVIDES-P-SUFF))
 (12 4 (:REWRITE X*Y>1-POSITIVE))
 (8 4 (:REWRITE INT-RND-REM::GREATEST-FACTOR=1))
 (6 6 (:LINEAR INT-RND-REM::GREATEST-FACTOR->=-DIVISOR))
 (6 6 (:LINEAR INT-RND-REM::GREATEST-FACTOR->-1-A))
 (6 6 (:LINEAR INT-RND-REM::GREATEST-FACTOR-<=-Y))
 )
(INT-RND-REM::REDUCIBLE-P-SUFF
 (673 13 (:DEFINITION INT-RND-REM::GREATEST-FACTOR))
 (209 13 (:DEFINITION INT-RND-REM::DIVIDES-P))
 (167 127 (:REWRITE DEFAULT-*-2))
 (156 127 (:REWRITE DEFAULT-*-1))
 (121 17 (:LINEAR X*Y>1-POSITIVE))
 (114 101 (:REWRITE DEFAULT-<-2))
 (102 16 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (101 101 (:REWRITE DEFAULT-<-1))
 (71 10 (:REWRITE ZP-OPEN))
 (53 53 (:REWRITE DEFAULT-UNARY-MINUS))
 (49 37 (:REWRITE DEFAULT-+-2))
 (37 37 (:REWRITE DEFAULT-+-1))
 (36 12 (:REWRITE FOLD-CONSTS-IN-+))
 (32 8 (:LINEAR INT-RND-REM::GREATEST-FACTOR->-1))
 (21 7 (:REWRITE <-0-+-NEGATIVE-2))
 (20 8 (:LINEAR INT-RND-REM::GREATEST-FACTOR->-1-A))
 (16 16 (:REWRITE EQUAL-CONSTANT-+))
 (16 8 (:REWRITE DEFAULT-UNARY-/))
 (13 13 (:REWRITE INT-RND-REM::DIVIDES-P-SUFF))
 (12 8 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (8 8 (:REWRITE FOLD-CONSTS-IN-*))
 (8 8 (:LINEAR INT-RND-REM::GREATEST-FACTOR->=-DIVISOR))
 (8 8 (:LINEAR INT-RND-REM::GREATEST-FACTOR-<=-Y))
 (8 2 (:REWRITE <-0-+-NEGATIVE-1))
 (3 3 (:REWRITE X*Y>1-POSITIVE))
 )
(INT-RND-REM::IRREDUCIBLE-P)
(INT-RND-REM::IRREDUCIBLE-P-IMPLIES-PRIME-PROPERTY
 (4 2 (:REWRITE DEFAULT-CDR))
 (4 2 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE INT-RND-REM::REDUCIBLE-P-SUFF))
 (2 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(INT-RND-REM::IRREDUCIBLE-FACTORS
 (38 8 (:REWRITE DEFAULT-<-2))
 (38 8 (:REWRITE DEFAULT-<-1))
 (34 10 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (14 14 (:REWRITE INT-RND-REM::REDUCIBLE-P-SUFF))
 (12 9 (:REWRITE DEFAULT-*-2))
 (12 9 (:REWRITE DEFAULT-*-1))
 (6 2 (:LINEAR X*Y>1-POSITIVE))
 (6 2 (:LINEAR INT-RND-REM::ABS-<-ABS-*))
 (3 1 (:REWRITE INT-RND-REM::ABS-<-ABS-*))
 (2 2 (:REWRITE INT-RND-REM::ABS-*))
 (2 2 (:LINEAR INT-RND-REM::ABS-*))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(INT-RND-REM::INTEGERP-LISTP)
(INT-RND-REM::IRREDUCIBLE-LISTP)
(INT-RND-REM::*-LST)
(INT-RND-REM::IRREDUCIBLE-FACTORIZATION-EXISTENCE
 (55 11 (:DEFINITION BINARY-APPEND))
 (31 31 (:REWRITE DEFAULT-CAR))
 (26 26 (:REWRITE DEFAULT-CDR))
 (12 12 (:REWRITE INT-RND-REM::REDUCIBLE-P-SUFF))
 (10 5 (:REWRITE DEFAULT-*-2))
 (5 5 (:REWRITE DEFAULT-*-1))
 )
(INT-RND-REM::UNIT-ASSOCIATES-P$-WITNESS)
(INT-RND-REM::UNIT-ASSOCIATES-P)
(INT-RND-REM::UNIT-ASSOCIATES-P-SUFF
 (28 12 (:REWRITE /R-WHEN-ABS-NUMERATOR=1))
 (20 17 (:REWRITE DEFAULT-*-1))
 (17 17 (:REWRITE DEFAULT-*-2))
 (12 12 (:REWRITE NUMERATOR-WHEN-INTEGERP))
 (12 6 (:REWRITE DEFAULT-UNARY-/))
 (9 9 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE DEFAULT-UNARY-MINUS))
 (4 4 (:REWRITE DEFAULT-NUMERATOR))
 )
(INT-RND-REM::IRREDUCIBLE-P-UNIT-ASSOCIATES
 (6 4 (:REWRITE DEFAULT-*-2))
 (6 4 (:REWRITE DEFAULT-*-1))
 (1 1 (:REWRITE INT-RND-REM::UNIT-ASSOCIATES-P-SUFF))
 )
(INT-RND-REM::ACL2-NUMBER-LISTP)
(INT-RND-REM::MEMBER-UNIT-ASSOCIATE
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(INT-RND-REM::DELETE-ONE-UNIT-ASSOCIATE
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(INT-RND-REM::BAG-EQUAL-UNIT-ASSOCIATES
 (198 198 (:REWRITE DEFAULT-CAR))
 (127 127 (:REWRITE DEFAULT-CDR))
 (113 85 (:REWRITE DEFAULT-*-2))
 (113 85 (:REWRITE DEFAULT-*-1))
 (83 83 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (56 56 (:REWRITE INT-RND-REM::UNIT-ASSOCIATES-P-SUFF))
 (30 10 (:LINEAR X*Y>1-POSITIVE))
 (14 14 (:REWRITE DEFAULT-UNARY-MINUS))
 (10 10 (:REWRITE DEFAULT-<-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 )
(INT-RND-REM::BAG-EQUAL-UNIT-ASSOCIATES->EQUAL-LEN
 (58 38 (:REWRITE DEFAULT-*-2))
 (56 38 (:REWRITE DEFAULT-*-1))
 (50 50 (:REWRITE DEFAULT-CAR))
 (35 35 (:REWRITE DEFAULT-CDR))
 (18 18 (:REWRITE INT-RND-REM::UNIT-ASSOCIATES-P-SUFF))
 )
(INT-RND-REM::BAG-EQUAL-UNIT-ASSOCIATES->IFF-MEMBER-UNIT-ASSOCIATE)
(INT-RND-REM::MULTIPLICITY-UNIT-ASSOCIATE
 (2 2 (:REWRITE DEFAULT-CAR))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(INT-RND-REM::BAG-EQUAL-UNIT-ASSOCIATES->EQUAL-MULTIPLICITY-UNIT-ASSOCIATE
 (20 13 (:REWRITE DEFAULT-*-2))
 (19 13 (:REWRITE DEFAULT-*-1))
 (14 14 (:REWRITE DEFAULT-CDR))
 (14 7 (:REWRITE DEFAULT-+-2))
 (12 12 (:REWRITE DEFAULT-CAR))
 (7 7 (:REWRITE DEFAULT-+-1))
 (6 6 (:REWRITE INT-RND-REM::UNIT-ASSOCIATES-P-SUFF))
 )
(INT-RND-REM::IRREDUCIBLE-FACTORIZATION-UNIQUENESS-GENERAL)
(INT-RND-REM::IRREDUCIBLE-FACTORIZATION-UNIQUENESS)
