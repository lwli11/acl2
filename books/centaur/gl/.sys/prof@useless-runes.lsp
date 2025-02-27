(GL::PROF-ARRAYP-IS-U32-LISTP
 (22 22 (:REWRITE DEFAULT-<-2))
 (22 22 (:REWRITE DEFAULT-<-1))
 (14 14 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE DEFAULT-CDR))
 )
(GL::INTEGERP-+)
(GL::ACL2-NUMBERP-WHEN-INTEGERP)
(GL::PROF-ENSURE-INDEX
 (946 86 (:REWRITE NTH-IN-U32-LISTP-INTEGERP))
 (860 129 (:DEFINITION U32-LISTP))
 (821 641 (:REWRITE DEFAULT-+-2))
 (800 164 (:DEFINITION LEN))
 (694 549 (:REWRITE DEFAULT-<-2))
 (641 641 (:REWRITE DEFAULT-+-1))
 (639 408 (:REWRITE DEFAULT-*-2))
 (604 549 (:REWRITE DEFAULT-<-1))
 (598 469 (:REWRITE DEFAULT-CDR))
 (516 86 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (408 408 (:REWRITE DEFAULT-*-1))
 (344 43 (:DEFINITION TRUE-LISTP))
 (314 314 (:REWRITE DEFAULT-CAR))
 (179 5 (:DEFINITION RESIZE-LIST))
 (172 172 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (172 86 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (171 15 (:REWRITE RESIZE-LIST-OF-LEN-FREE))
 (86 86 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (86 86 (:REWRITE SET::IN-SET))
 (84 21 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (84 21 (:REWRITE GL::ACL2-NUMBERP-WHEN-INTEGERP))
 (25 15 (:REWRITE RESIZE-LIST-WHEN-ATOM))
 (17 10 (:REWRITE RESIZE-LIST-WHEN-ZP))
 (12 2 (:REWRITE ZP-OPEN))
 (10 3 (:REWRITE REPEAT-WHEN-ZP))
 (2 2 (:TYPE-PRESCRIPTION ZP))
 )
(GL::NATP-OF-PROF-ENSURE-INDEX.INDEX
 (194 18 (:REWRITE RESIZE-LIST-OF-LEN-FREE))
 (190 6 (:DEFINITION RESIZE-LIST))
 (116 28 (:DEFINITION LEN))
 (88 8 (:REWRITE NTH-IN-U32-LISTP-INTEGERP))
 (78 57 (:REWRITE DEFAULT-CDR))
 (71 46 (:REWRITE DEFAULT-+-2))
 (64 8 (:DEFINITION U32-LISTP))
 (63 34 (:REWRITE DEFAULT-<-1))
 (56 7 (:DEFINITION HONS-ASSOC-EQUAL))
 (53 20 (:REWRITE DEFAULT-*-2))
 (46 46 (:REWRITE DEFAULT-+-1))
 (44 34 (:REWRITE DEFAULT-<-2))
 (42 42 (:REWRITE DEFAULT-CAR))
 (40 40 (:TYPE-PRESCRIPTION U32-LISTP))
 (36 5 (:REWRITE GL::ACL2-NUMBERP-WHEN-INTEGERP))
 (34 18 (:REWRITE RESIZE-LIST-WHEN-ATOM))
 (30 30 (:DEFINITION UPDATE-NTH-ARRAY))
 (26 12 (:REWRITE RESIZE-LIST-WHEN-ZP))
 (24 4 (:REWRITE ZP-OPEN))
 (20 20 (:REWRITE DEFAULT-*-1))
 (18 18 (:TYPE-PRESCRIPTION NFIX))
 (16 16 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (16 2 (:REWRITE REPEAT-WHEN-ZP))
 (14 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (7 7 (:DEFINITION HONS-EQUAL))
 (4 4 (:TYPE-PRESCRIPTION ZP))
 )
(GL::PROF-INDEX-IN-RANGE-OF-PROF-ENSURE-INDEX
 (669 145 (:DEFINITION LEN))
 (651 498 (:REWRITE DEFAULT-+-2))
 (551 391 (:REWRITE DEFAULT-<-1))
 (543 301 (:REWRITE DEFAULT-*-2))
 (506 46 (:REWRITE NTH-IN-U32-LISTP-INTEGERP))
 (504 391 (:REWRITE DEFAULT-<-2))
 (498 498 (:REWRITE DEFAULT-+-1))
 (479 335 (:REWRITE DEFAULT-CDR))
 (440 42 (:REWRITE RESIZE-LIST-OF-LEN-FREE))
 (412 14 (:DEFINITION RESIZE-LIST))
 (384 48 (:DEFINITION HONS-ASSOC-EQUAL))
 (368 46 (:DEFINITION U32-LISTP))
 (301 301 (:REWRITE DEFAULT-*-1))
 (252 252 (:REWRITE DEFAULT-CAR))
 (230 230 (:TYPE-PRESCRIPTION U32-LISTP))
 (160 28 (:REWRITE GL::ACL2-NUMBERP-WHEN-INTEGERP))
 (94 28 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (92 92 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (60 42 (:REWRITE RESIZE-LIST-WHEN-ATOM))
 (48 48 (:DEFINITION HONS-EQUAL))
 (42 42 (:TYPE-PRESCRIPTION NFIX))
 (42 28 (:REWRITE RESIZE-LIST-WHEN-ZP))
 (24 4 (:REWRITE ZP-OPEN))
 (18 4 (:REWRITE REPEAT-WHEN-ZP))
 (4 4 (:TYPE-PRESCRIPTION ZP))
 )
(GL::PROF-ENSURE-INDEX-FRAME
 (440 42 (:REWRITE RESIZE-LIST-OF-LEN-FREE))
 (412 14 (:DEFINITION RESIZE-LIST))
 (309 73 (:DEFINITION LEN))
 (271 183 (:REWRITE DEFAULT-<-1))
 (242 22 (:REWRITE NTH-IN-U32-LISTP-INTEGERP))
 (221 158 (:REWRITE DEFAULT-CDR))
 (211 183 (:REWRITE DEFAULT-<-2))
 (209 140 (:REWRITE DEFAULT-+-2))
 (179 69 (:REWRITE DEFAULT-*-2))
 (176 22 (:DEFINITION U32-LISTP))
 (168 21 (:DEFINITION HONS-ASSOC-EQUAL))
 (140 140 (:REWRITE DEFAULT-+-1))
 (120 120 (:REWRITE DEFAULT-CAR))
 (112 16 (:REWRITE GL::ACL2-NUMBERP-WHEN-INTEGERP))
 (110 110 (:TYPE-PRESCRIPTION U32-LISTP))
 (69 69 (:REWRITE DEFAULT-*-1))
 (60 42 (:REWRITE RESIZE-LIST-WHEN-ATOM))
 (56 56 (:REWRITE SUBSETP-MEMBER . 4))
 (56 56 (:REWRITE SUBSETP-MEMBER . 3))
 (56 56 (:REWRITE SUBSETP-MEMBER . 2))
 (56 56 (:REWRITE SUBSETP-MEMBER . 1))
 (56 56 (:REWRITE INTERSECTP-MEMBER . 3))
 (56 56 (:REWRITE INTERSECTP-MEMBER . 2))
 (46 16 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (44 44 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (42 42 (:TYPE-PRESCRIPTION NFIX))
 (42 28 (:REWRITE RESIZE-LIST-WHEN-ZP))
 (24 4 (:REWRITE ZP-OPEN))
 (21 21 (:DEFINITION HONS-EQUAL))
 (18 4 (:REWRITE REPEAT-WHEN-ZP))
 (12 4 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:TYPE-PRESCRIPTION ZP))
 )
(GL::PROF-INCREMENT-STACKCOUNT
 (35 7 (:DEFINITION LEN))
 (29 11 (:REWRITE DEFAULT-+-2))
 (20 3 (:DEFINITION U32-LISTP))
 (14 12 (:REWRITE DEFAULT-<-2))
 (12 12 (:REWRITE DEFAULT-<-1))
 (12 2 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (11 11 (:REWRITE DEFAULT-CDR))
 (11 11 (:REWRITE DEFAULT-+-1))
 (8 1 (:DEFINITION TRUE-LISTP))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (4 2 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (3 3 (:REWRITE DEFAULT-CAR))
 (3 3 (:REWRITE DEFAULT-*-2))
 (3 3 (:REWRITE DEFAULT-*-1))
 (3 1 (:REWRITE LOGHEAD-IDENTITY))
 (2 2 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (2 2 (:REWRITE SET::IN-SET))
 )
(GL::PROF-INCREMENT-STACKCOUNT-FRAME
 (105 15 (:REWRITE NTH-IN-U32-LISTP-INTEGERP))
 (101 47 (:REWRITE DEFAULT-+-2))
 (96 6 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (85 16 (:REWRITE GL::ACL2-NUMBERP-WHEN-INTEGERP))
 (72 9 (:DEFINITION U32-LISTP))
 (65 23 (:REWRITE DEFAULT-*-2))
 (56 47 (:REWRITE DEFAULT-+-1))
 (48 12 (:REWRITE GL::INTEGERP-+))
 (45 45 (:TYPE-PRESCRIPTION U32-LISTP))
 (24 24 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (23 23 (:REWRITE DEFAULT-*-1))
 (23 21 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE DEFAULT-<-2))
 (16 16 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (15 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (9 9 (:REWRITE DEFAULT-CDR))
 (9 9 (:REWRITE DEFAULT-CAR))
 (9 6 (:REWRITE RATIONALP-+))
 (9 3 (:REWRITE LOGHEAD-IDENTITY))
 (9 3 (:REWRITE DEFAULT-NUMERATOR))
 (6 6 (:DEFINITION IFIX))
 (6 3 (:REWRITE DEFAULT-DENOMINATOR))
 (3 3 (:REWRITE RATIONALP-*))
 (2 2 (:REWRITE SUBSETP-MEMBER . 4))
 (2 2 (:REWRITE SUBSETP-MEMBER . 3))
 (2 2 (:REWRITE SUBSETP-MEMBER . 2))
 (2 2 (:REWRITE SUBSETP-MEMBER . 1))
 (2 2 (:REWRITE INTERSECTP-MEMBER . 3))
 (2 2 (:REWRITE INTERSECTP-MEMBER . 2))
 )
(GL::PROF-INCREMENT-STACKCOUNT-LEN
 (117 56 (:REWRITE DEFAULT-+-2))
 (105 15 (:REWRITE NTH-IN-U32-LISTP-INTEGERP))
 (96 6 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (84 15 (:REWRITE GL::ACL2-NUMBERP-WHEN-INTEGERP))
 (72 9 (:DEFINITION U32-LISTP))
 (65 56 (:REWRITE DEFAULT-+-1))
 (65 23 (:REWRITE DEFAULT-*-2))
 (48 12 (:REWRITE GL::INTEGERP-+))
 (45 45 (:TYPE-PRESCRIPTION U32-LISTP))
 (35 7 (:DEFINITION LEN))
 (24 24 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (24 23 (:REWRITE DEFAULT-<-2))
 (23 23 (:REWRITE DEFAULT-<-1))
 (23 23 (:REWRITE DEFAULT-*-1))
 (16 16 (:REWRITE DEFAULT-CDR))
 (15 15 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (15 12 (:REWRITE DEFAULT-UNARY-MINUS))
 (9 9 (:REWRITE DEFAULT-CAR))
 (9 6 (:REWRITE RATIONALP-+))
 (9 3 (:REWRITE LOGHEAD-IDENTITY))
 (9 3 (:REWRITE DEFAULT-NUMERATOR))
 (6 6 (:DEFINITION IFIX))
 (6 3 (:REWRITE DEFAULT-DENOMINATOR))
 (3 3 (:REWRITE RATIONALP-*))
 )
(GL::PROF-DECREMENT-STACKCOUNT
 (95 19 (:DEFINITION LEN))
 (86 34 (:REWRITE DEFAULT-+-2))
 (65 5 (:REWRITE GL::ACL2-NUMBERP-WHEN-INTEGERP))
 (62 35 (:REWRITE DEFAULT-<-1))
 (60 9 (:DEFINITION U32-LISTP))
 (43 35 (:REWRITE DEFAULT-<-2))
 (36 6 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (34 34 (:REWRITE DEFAULT-+-1))
 (31 31 (:REWRITE DEFAULT-CDR))
 (24 3 (:DEFINITION TRUE-LISTP))
 (12 12 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (12 6 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (11 11 (:REWRITE DEFAULT-*-2))
 (11 11 (:REWRITE DEFAULT-*-1))
 (9 9 (:REWRITE DEFAULT-CAR))
 (6 6 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (6 6 (:REWRITE SET::IN-SET))
 )
(GL::NATP-OF-PROF-DECREMENT-STACKCOUNT.NEW-STACKCOUNT
 (165 15 (:REWRITE NTH-IN-U32-LISTP-INTEGERP))
 (120 15 (:DEFINITION U32-LISTP))
 (85 34 (:REWRITE DEFAULT-<-1))
 (75 75 (:TYPE-PRESCRIPTION U32-LISTP))
 (42 9 (:REWRITE GL::ACL2-NUMBERP-WHEN-INTEGERP))
 (34 34 (:REWRITE DEFAULT-<-2))
 (30 30 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (29 29 (:REWRITE DEFAULT-+-2))
 (29 29 (:REWRITE DEFAULT-+-1))
 (17 17 (:REWRITE DEFAULT-*-2))
 (17 17 (:REWRITE DEFAULT-*-1))
 (15 15 (:REWRITE DEFAULT-CDR))
 (15 15 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(GL::PROF-DECREMENT-STACKCOUNT-FRAME
 (165 15 (:REWRITE NTH-IN-U32-LISTP-INTEGERP))
 (120 15 (:DEFINITION U32-LISTP))
 (97 46 (:REWRITE DEFAULT-<-1))
 (75 75 (:TYPE-PRESCRIPTION U32-LISTP))
 (46 46 (:REWRITE DEFAULT-<-2))
 (42 9 (:REWRITE GL::ACL2-NUMBERP-WHEN-INTEGERP))
 (30 30 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (29 29 (:REWRITE DEFAULT-+-2))
 (29 29 (:REWRITE DEFAULT-+-1))
 (24 24 (:REWRITE SUBSETP-MEMBER . 4))
 (24 24 (:REWRITE SUBSETP-MEMBER . 3))
 (24 24 (:REWRITE SUBSETP-MEMBER . 2))
 (24 24 (:REWRITE SUBSETP-MEMBER . 1))
 (24 24 (:REWRITE INTERSECTP-MEMBER . 3))
 (24 24 (:REWRITE INTERSECTP-MEMBER . 2))
 (17 17 (:REWRITE DEFAULT-*-2))
 (17 17 (:REWRITE DEFAULT-*-1))
 (15 15 (:REWRITE DEFAULT-CDR))
 (15 15 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(GL::PROF-DECREMENT-STACKCOUNT-LEN
 (180 36 (:DEFINITION LEN))
 (165 15 (:REWRITE NTH-IN-U32-LISTP-INTEGERP))
 (121 70 (:REWRITE DEFAULT-<-1))
 (120 15 (:DEFINITION U32-LISTP))
 (113 77 (:REWRITE DEFAULT-+-2))
 (82 70 (:REWRITE DEFAULT-<-2))
 (77 77 (:REWRITE DEFAULT-+-1))
 (75 75 (:TYPE-PRESCRIPTION U32-LISTP))
 (51 51 (:REWRITE DEFAULT-CDR))
 (42 9 (:REWRITE GL::ACL2-NUMBERP-WHEN-INTEGERP))
 (30 30 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (21 21 (:REWRITE DEFAULT-*-2))
 (21 21 (:REWRITE DEFAULT-*-1))
 (15 15 (:REWRITE DEFAULT-CAR))
 (9 9 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 )
(GL::PROF-PUSH
 (22 2 (:REWRITE NTH-IN-U32-LISTP-INTEGERP))
 (20 3 (:DEFINITION U32-LISTP))
 (15 3 (:DEFINITION LEN))
 (12 2 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (10 5 (:REWRITE DEFAULT-+-2))
 (8 8 (:REWRITE DEFAULT-CDR))
 (8 1 (:DEFINITION TRUE-LISTP))
 (6 4 (:REWRITE DEFAULT-<-2))
 (6 4 (:REWRITE DEFAULT-<-1))
 (5 5 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (5 5 (:REWRITE DEFAULT-+-1))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (4 4 (:REWRITE DEFAULT-CAR))
 (4 2 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (4 2 (:REWRITE DEFAULT-*-2))
 (2 2 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (2 2 (:REWRITE SET::IN-SET))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(GL::PROF-INCREMENT-INDEX
 (170 34 (:DEFINITION LEN))
 (150 72 (:REWRITE DEFAULT-+-2))
 (140 21 (:DEFINITION U32-LISTP))
 (84 14 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (79 70 (:REWRITE DEFAULT-<-2))
 (72 72 (:REWRITE DEFAULT-+-1))
 (70 70 (:REWRITE DEFAULT-<-1))
 (62 62 (:REWRITE DEFAULT-CDR))
 (56 7 (:DEFINITION TRUE-LISTP))
 (30 30 (:REWRITE DEFAULT-*-2))
 (30 30 (:REWRITE DEFAULT-*-1))
 (28 28 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (28 14 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (21 21 (:REWRITE DEFAULT-CAR))
 (14 14 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (14 14 (:REWRITE SET::IN-SET))
 (14 6 (:REWRITE LOGHEAD-IDENTITY))
 (8 2 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (2 2 (:REWRITE REDUCE-INTEGERP-+-CONSTANT))
 )
(GL::PROF-INCREMENT-INDEX-FRAME
 (708 36 (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (450 362 (:REWRITE DEFAULT-+-1))
 (278 278 (:REWRITE DEFAULT-*-1))
 (274 148 (:REWRITE GL::ACL2-NUMBERP-WHEN-INTEGERP))
 (224 24 (:REWRITE NTH-IN-U32-LISTP-INTEGERP))
 (184 148 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (166 148 (:REWRITE DEFAULT-<-1))
 (160 148 (:REWRITE DEFAULT-<-2))
 (160 20 (:DEFINITION U32-LISTP))
 (102 72 (:REWRITE DEFAULT-UNARY-MINUS))
 (101 77 (:REWRITE GL::INTEGERP-+))
 (100 100 (:TYPE-PRESCRIPTION U32-LISTP))
 (90 90 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (76 26 (:REWRITE DEFAULT-NUMERATOR))
 (76 22 (:REWRITE LOGHEAD-IDENTITY))
 (60 26 (:REWRITE DEFAULT-DENOMINATOR))
 (48 32 (:REWRITE RATIONALP-+))
 (36 36 (:DEFINITION IFIX))
 (20 20 (:REWRITE DEFAULT-CDR))
 (20 20 (:REWRITE DEFAULT-CAR))
 (16 16 (:REWRITE RATIONALP-*))
 (10 4 (:REWRITE DIFFERENCE-UNSIGNED-BYTE-P))
 (2 2 (:REWRITE SUBSETP-MEMBER . 4))
 (2 2 (:REWRITE SUBSETP-MEMBER . 3))
 (2 2 (:REWRITE SUBSETP-MEMBER . 2))
 (2 2 (:REWRITE SUBSETP-MEMBER . 1))
 (2 2 (:REWRITE INTERSECTP-MEMBER . 3))
 (2 2 (:REWRITE INTERSECTP-MEMBER . 2))
 )
(GL::PROF-INCREMENT-BASE
 (25 5 (:DEFINITION LEN))
 (22 2 (:REWRITE NTH-IN-U32-LISTP-INTEGERP))
 (21 18 (:REWRITE DEFAULT-<-2))
 (20 3 (:DEFINITION U32-LISTP))
 (19 14 (:REWRITE DEFAULT-+-2))
 (18 18 (:REWRITE DEFAULT-<-1))
 (14 14 (:REWRITE DEFAULT-+-1))
 (12 2 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (9 9 (:REWRITE DEFAULT-CDR))
 (8 1 (:DEFINITION TRUE-LISTP))
 (5 5 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (4 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE DEFAULT-*-1))
 (4 2 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 2 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (2 2 (:REWRITE SET::IN-SET))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 (2 1 (:REWRITE GL::PROF-DECREMENT-STACKCOUNT-FRAME))
 (1 1 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 )
(GL::PROF-INCREMENT-BASE-FRAME
 (247 27 (:REWRITE GL::ACL2-NUMBERP-WHEN-INTEGERP))
 (245 31 (:REWRITE DEFAULT-+-2))
 (220 20 (:REWRITE NTH-IN-U32-LISTP-INTEGERP))
 (160 20 (:DEFINITION U32-LISTP))
 (100 100 (:TYPE-PRESCRIPTION U32-LISTP))
 (83 31 (:REWRITE DEFAULT-+-1))
 (40 40 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (27 27 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (23 19 (:REWRITE DEFAULT-<-1))
 (21 21 (:REWRITE SUBSETP-MEMBER . 4))
 (21 21 (:REWRITE SUBSETP-MEMBER . 3))
 (21 21 (:REWRITE SUBSETP-MEMBER . 2))
 (21 21 (:REWRITE SUBSETP-MEMBER . 1))
 (21 21 (:REWRITE INTERSECTP-MEMBER . 3))
 (21 21 (:REWRITE INTERSECTP-MEMBER . 2))
 (20 20 (:REWRITE DEFAULT-CDR))
 (20 20 (:REWRITE DEFAULT-CAR))
 (19 19 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
 )
(GL::PROF-POP-INCREMENT
 (154 14 (:REWRITE NTH-IN-U32-LISTP-INTEGERP))
 (140 21 (:DEFINITION U32-LISTP))
 (84 14 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (56 7 (:DEFINITION TRUE-LISTP))
 (50 10 (:DEFINITION LEN))
 (46 46 (:REWRITE DEFAULT-CDR))
 (42 42 (:REWRITE DEFAULT-CAR))
 (35 35 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (28 28 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (28 14 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (23 13 (:REWRITE DEFAULT-+-2))
 (18 16 (:REWRITE DEFAULT-<-2))
 (16 16 (:REWRITE DEFAULT-<-1))
 (14 14 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (14 14 (:REWRITE SET::IN-SET))
 (13 13 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE DEFAULT-*-1))
 (2 1 (:REWRITE RATIONALP-+))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE RATIONALP-*))
 (1 1 (:REWRITE GL::ACL2-NUMBERP-WHEN-INTEGERP))
 )
(GL::PROF-POP-INCREMENT-REDUCES-STACK
 (39 21 (:REWRITE DEFAULT-+-2))
 (21 21 (:REWRITE DEFAULT-+-1))
 (18 18 (:REWRITE DEFAULT-CDR))
 (9 9 (:REWRITE DEFAULT-CAR))
 (9 3 (:REWRITE DEFAULT-*-2))
 (6 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE DEFAULT-*-1))
 (3 3 (:REWRITE GL::ACL2-NUMBERP-WHEN-INTEGERP))
 )
(GL::PROF-POP-INCREMENT-FRAME
 (15 3 (:DEFINITION LEN))
 (9 9 (:REWRITE DEFAULT-CAR))
 (9 6 (:REWRITE DEFAULT-+-2))
 (9 3 (:REWRITE DEFAULT-*-2))
 (8 8 (:REWRITE DEFAULT-CDR))
 (8 5 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE SUBSETP-MEMBER . 4))
 (7 7 (:REWRITE SUBSETP-MEMBER . 3))
 (7 7 (:REWRITE SUBSETP-MEMBER . 2))
 (7 7 (:REWRITE SUBSETP-MEMBER . 1))
 (7 7 (:REWRITE INTERSECTP-MEMBER . 3))
 (7 7 (:REWRITE INTERSECTP-MEMBER . 2))
 (6 6 (:REWRITE DEFAULT-+-1))
 (5 5 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE DEFAULT-*-1))
 (3 3 (:REWRITE GL::ACL2-NUMBERP-WHEN-INTEGERP))
 )
(GL::PROF-SIMPLE-INCREMENT
 (22 2 (:REWRITE NTH-IN-U32-LISTP-INTEGERP))
 (20 3 (:DEFINITION U32-LISTP))
 (15 3 (:DEFINITION LEN))
 (12 2 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (10 5 (:REWRITE DEFAULT-+-2))
 (8 1 (:DEFINITION TRUE-LISTP))
 (7 7 (:REWRITE DEFAULT-CDR))
 (6 4 (:REWRITE DEFAULT-<-2))
 (6 4 (:REWRITE DEFAULT-<-1))
 (5 5 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (5 5 (:REWRITE DEFAULT-+-1))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (4 2 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (4 2 (:REWRITE DEFAULT-*-2))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 2 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (2 2 (:REWRITE SET::IN-SET))
 (2 2 (:REWRITE DEFAULT-*-1))
 )
(GL::PROF-SIMPLE-INCREMENT-DEF)
(GL::PROF-SIMPLE-INCREMENT-EXEC)
(GL::PROF-SIMPLE-INCREMENT-G)
(GL::PROF-RESET)
(GL::PROF-UNWIND-STACK-AUX
 (22 2 (:REWRITE NTH-IN-U32-LISTP-INTEGERP))
 (20 3 (:DEFINITION U32-LISTP))
 (15 3 (:DEFINITION LEN))
 (12 2 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (8 4 (:REWRITE DEFAULT-+-2))
 (8 1 (:DEFINITION TRUE-LISTP))
 (7 7 (:REWRITE DEFAULT-CDR))
 (5 5 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (4 4 (:REWRITE DEFAULT-+-1))
 (4 3 (:REWRITE DEFAULT-<-2))
 (4 3 (:REWRITE DEFAULT-<-1))
 (4 2 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 2 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (2 2 (:REWRITE SET::IN-SET))
 )
(GL::PROF-UNWIND-STACK)
(GL::PROF-ENTRY-P
 (5 5 (:TYPE-PRESCRIPTION CONSP-ASSOC-EQUAL))
 )
(GL::PROF-ENTRY)
(GL::HONSED-PROF-ENTRY)
(GL::PROF-ENTRY->NAME$INLINE
 (4 4 (:DEFINITION ASSOC-EQUAL))
 )
(GL::PROF-ENTRY->TRIES-SUCC$INLINE
 (4 4 (:DEFINITION ASSOC-EQUAL))
 )
(GL::PROF-ENTRY->TRIES-FAIL$INLINE
 (4 4 (:DEFINITION ASSOC-EQUAL))
 )
(GL::PROF-ENTRY->FRAMES-SUCC$INLINE
 (4 4 (:DEFINITION ASSOC-EQUAL))
 )
(GL::PROF-ENTRY->FRAMES-FAIL$INLINE
 (4 4 (:DEFINITION ASSOC-EQUAL))
 )
(GL::CONSP-OF-PROF-ENTRY)
(GL::BOOLEANP-OF-PROF-ENTRY-P)
(GL::PROF-ENTRY-P-OF-PROF-ENTRY)
(GL::CONSP-WHEN-PROF-ENTRY-P)
(GL::PROF-ENTRY->NAME-OF-PROF-ENTRY)
(GL::PROF-ENTRY->TRIES-SUCC-OF-PROF-ENTRY)
(GL::PROF-ENTRY->TRIES-FAIL-OF-PROF-ENTRY)
(GL::PROF-ENTRY->FRAMES-SUCC-OF-PROF-ENTRY)
(GL::PROF-ENTRY->FRAMES-FAIL-OF-PROF-ENTRY)
(GL::RETURN-TYPE-OF-PROF-ENTRY->TRIES-SUCC)
(GL::RETURN-TYPE-OF-PROF-ENTRY->TRIES-FAIL)
(GL::RETURN-TYPE-OF-PROF-ENTRY->FRAMES-SUCC)
(GL::RETURN-TYPE-OF-PROF-ENTRY->FRAMES-FAIL)
(STD::DEFLIST-LOCAL-BOOLEANP-ELEMENT-THM)
(GL::PROF-ENTRYLIST-P)
(GL::PROF-ENTRYLIST-P-OF-CONS)
(GL::PROF-ENTRYLIST-P-OF-CDR-WHEN-PROF-ENTRYLIST-P)
(GL::PROF-ENTRYLIST-P-WHEN-NOT-CONSP)
(GL::PROF-ENTRY-P-OF-CAR-WHEN-PROF-ENTRYLIST-P)
(GL::TRUE-LISTP-WHEN-PROF-ENTRYLIST-P)
(GL::PROF-ENTRYLIST-P-OF-LIST-FIX)
(GL::PROF-ENTRYLIST-P-OF-SFIX)
(GL::PROF-ENTRYLIST-P-OF-INSERT)
(GL::PROF-ENTRYLIST-P-OF-DELETE)
(GL::PROF-ENTRYLIST-P-OF-MERGESORT)
(GL::PROF-ENTRYLIST-P-OF-UNION)
(GL::PROF-ENTRYLIST-P-OF-INTERSECT-1)
(GL::PROF-ENTRYLIST-P-OF-INTERSECT-2)
(GL::PROF-ENTRYLIST-P-OF-DIFFERENCE)
(GL::PROF-ENTRYLIST-P-OF-DUPLICATED-MEMBERS)
(GL::PROF-ENTRYLIST-P-OF-REV)
(GL::PROF-ENTRYLIST-P-OF-APPEND)
(GL::PROF-ENTRYLIST-P-OF-RCONS)
(GL::PROF-ENTRY-P-WHEN-MEMBER-EQUAL-OF-PROF-ENTRYLIST-P)
(GL::PROF-ENTRYLIST-P-WHEN-SUBSETP-EQUAL)
(GL::PROF-ENTRYLIST-P-OF-SET-DIFFERENCE-EQUAL)
(GL::PROF-ENTRYLIST-P-OF-INTERSECTION-EQUAL-1)
(GL::PROF-ENTRYLIST-P-OF-INTERSECTION-EQUAL-2)
(GL::PROF-ENTRYLIST-P-OF-UNION-EQUAL)
(GL::PROF-ENTRYLIST-P-OF-TAKE)
(GL::PROF-ENTRYLIST-P-OF-REPEAT)
(GL::PROF-ENTRY-P-OF-NTH-WHEN-PROF-ENTRYLIST-P)
(GL::PROF-ENTRYLIST-P-OF-UPDATE-NTH)
(GL::PROF-ENTRYLIST-P-OF-BUTLAST)
(GL::PROF-ENTRYLIST-P-OF-NTHCDR)
(GL::PROF-ENTRYLIST-P-OF-LAST)
(GL::PROF-ENTRYLIST-P-OF-REMOVE)
(GL::PROF-ENTRYLIST-P-OF-REVAPPEND)
(GL::PROF-ENTRY-COMPARE-TRIES)
(GL::PROF-ENTRY-TRIES-TYPE-OF-COMPARE<)
(GL::PROF-ENTRY-TRIES-TYPE-OF-COMPARABLEP)
(GL::PROF-ENTRY-TRIES-COMPARE<-TRANSITIVE
 (222 150 (:TYPE-PRESCRIPTION GL::RETURN-TYPE-OF-PROF-ENTRY->TRIES-SUCC))
 (222 150 (:TYPE-PRESCRIPTION GL::RETURN-TYPE-OF-PROF-ENTRY->TRIES-FAIL))
 (144 144 (:TYPE-PRESCRIPTION GL::PROF-ENTRY-TRIES-TYPE-OF-COMPARABLEP))
 (36 12 (:REWRITE DEFAULT-+-2))
 (36 12 (:REWRITE DEFAULT-+-1))
 (15 3 (:REWRITE DEFAULT-<-2))
 (15 3 (:REWRITE DEFAULT-<-1))
 )
(GL::PROF-ENTRY-TRIES-COMPARE<-NEGATION-TRANSITIVE
 (222 150 (:TYPE-PRESCRIPTION GL::RETURN-TYPE-OF-PROF-ENTRY->TRIES-SUCC))
 (222 150 (:TYPE-PRESCRIPTION GL::RETURN-TYPE-OF-PROF-ENTRY->TRIES-FAIL))
 (144 144 (:TYPE-PRESCRIPTION GL::PROF-ENTRY-TRIES-TYPE-OF-COMPARABLEP))
 (36 12 (:REWRITE DEFAULT-+-2))
 (36 12 (:REWRITE DEFAULT-+-1))
 (15 3 (:REWRITE DEFAULT-<-2))
 (15 3 (:REWRITE DEFAULT-<-1))
 )
(GL::PROF-ENTRY-TRIES-COMPARE<-STRICT
 (54 38 (:TYPE-PRESCRIPTION GL::RETURN-TYPE-OF-PROF-ENTRY->TRIES-SUCC))
 (54 38 (:TYPE-PRESCRIPTION GL::RETURN-TYPE-OF-PROF-ENTRY->TRIES-FAIL))
 (32 32 (:TYPE-PRESCRIPTION GL::PROF-ENTRY-TRIES-TYPE-OF-COMPARABLEP))
 (12 4 (:REWRITE DEFAULT-+-2))
 (12 4 (:REWRITE DEFAULT-+-1))
 (5 1 (:REWRITE DEFAULT-<-2))
 (5 1 (:REWRITE DEFAULT-<-1))
 )
(DEFSORT-COMPARABLE-LIST-CHECK
 (7 4 (:REWRITE GL::PROF-ENTRY-TRIES-COMPARE<-NEGATION-TRANSITIVE))
 )
(DEFSORT-COMPARABLEP-OF-CAR)
(DEFSORT-COMPARABLE-LISTP-OF-CDR
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(GL::PROF-ENTRY-TRIES-ORDERED-P
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE GL::PROF-ENTRY-TRIES-COMPARE<-TRANSITIVE))
 (4 4 (:REWRITE GL::PROF-ENTRY-TRIES-COMPARE<-NEGATION-TRANSITIVE))
 )
(GL::PROF-ENTRY-TRIES-MERGE
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE GL::PROF-ENTRY-TRIES-COMPARE<-TRANSITIVE))
 (4 4 (:REWRITE GL::PROF-ENTRY-TRIES-COMPARE<-NEGATION-TRANSITIVE))
 )
(GL::PROF-ENTRY-TRIES-MERGE-TR
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE GL::PROF-ENTRY-TRIES-COMPARE<-TRANSITIVE))
 (4 4 (:REWRITE GL::PROF-ENTRY-TRIES-COMPARE<-NEGATION-TRANSITIVE))
 )
(GL::PROF-ENTRY-TRIES-MERGESORT-FIXNUM)
(GL::PROF-ENTRY-TRIES-MERGESORT-INTEGERS)
(GL::PROF-ENTRY-TRIES-SORT
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(DEFSORT-SUBST1-OK
 (8 8 (:REWRITE GL::PROF-ENTRY-TRIES-COMPARE<-TRANSITIVE))
 (8 8 (:REWRITE GL::PROF-ENTRY-TRIES-COMPARE<-NEGATION-TRANSITIVE))
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(GL::PROF-ENTRY-TRIES-MERGESORT-FIXNUM)
(GL::PROF-ENTRY-TRIES-MERGESORT-INTEGERS
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(GL::PROF-ENTRY-TRIES-SORT)
(GL::PROF-ENTRY-TRIES-SORT-PRESERVES-DUPLICITY)
(GL::PROF-ENTRY-TRIES-SORT-CREATES-COMPARABLE-LISTP)
(GL::PROF-ENTRY-TRIES-SORT-SORTS)
(GL::PROF-ENTRY-TRIES-SORT-NO-DUPLICATESP-EQUAL)
(GL::PROF-ENTRY-TRIES-SORT-TRUE-LISTP)
(GL::PROF-ENTRY-TRIES-SORT-LEN)
(GL::PROF-ENTRY-TRIES-SORT-CONSP)
(GL::PROF-ENTRY-TRIES-SORT-IS-IDENTITY-UNDER-SET-EQUIV)
(GL::PROF-ENTRY-TRIES-INSERT
 (7 7 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (2 2 (:REWRITE GL::PROF-ENTRY-TRIES-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE GL::PROF-ENTRY-TRIES-COMPARE<-NEGATION-TRANSITIVE))
 )
(GL::PROF-ENTRY-TRIES-INSERTSORT
 (7 7 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(DEFSORT-SUBST2-OK
 (2 2 (:REWRITE GL::PROF-ENTRY-TRIES-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE GL::PROF-ENTRY-TRIES-COMPARE<-NEGATION-TRANSITIVE))
 )
(GL::PROF-ENTRY-TRIES-INSERTSORT)
(GL::PROF-ENTRY-TRIES-MERGESORT-EQUALS-INSERTSORT
 (7 5 (:REWRITE GL::PROF-ENTRY-TRIES-COMPARE<-TRANSITIVE))
 )
(GL::PROF-ENTRY-TRIES-INSERTSORT-PRESERVES-DUPLICITY)
(GL::PROF-ENTRY-TRIES-INSERTSORT-CREATES-COMPARABLE-LISTP)
(GL::PROF-ENTRY-TRIES-INSERTSORT-SORTS)
(GL::PROF-ENTRY-TRIES-INSERTSORT-NO-DUPLICATESP-EQUAL)
(GL::PROF-ENTRY-TRIES-INSERTSORT-TRUE-LISTP)
(GL::PROF-ENTRY-TRIES-INSERTSORT-LEN)
(GL::PROF-ENTRY-TRIES-INSERTSORT-CONSP)
(GL::PROF-ENTRY-COMPARE-FRAMES)
(GL::PROF-ENTRY-FRAMES-TYPE-OF-COMPARE<)
(GL::PROF-ENTRY-FRAMES-TYPE-OF-COMPARABLEP)
(GL::PROF-ENTRY-FRAMES-COMPARE<-TRANSITIVE
 (222 150 (:TYPE-PRESCRIPTION GL::RETURN-TYPE-OF-PROF-ENTRY->FRAMES-SUCC))
 (222 150 (:TYPE-PRESCRIPTION GL::RETURN-TYPE-OF-PROF-ENTRY->FRAMES-FAIL))
 (144 144 (:TYPE-PRESCRIPTION GL::PROF-ENTRY-FRAMES-TYPE-OF-COMPARABLEP))
 (36 12 (:REWRITE DEFAULT-+-2))
 (36 12 (:REWRITE DEFAULT-+-1))
 (15 3 (:REWRITE DEFAULT-<-2))
 (15 3 (:REWRITE DEFAULT-<-1))
 )
(GL::PROF-ENTRY-FRAMES-COMPARE<-NEGATION-TRANSITIVE
 (222 150 (:TYPE-PRESCRIPTION GL::RETURN-TYPE-OF-PROF-ENTRY->FRAMES-SUCC))
 (222 150 (:TYPE-PRESCRIPTION GL::RETURN-TYPE-OF-PROF-ENTRY->FRAMES-FAIL))
 (144 144 (:TYPE-PRESCRIPTION GL::PROF-ENTRY-FRAMES-TYPE-OF-COMPARABLEP))
 (36 12 (:REWRITE DEFAULT-+-2))
 (36 12 (:REWRITE DEFAULT-+-1))
 (15 3 (:REWRITE DEFAULT-<-2))
 (15 3 (:REWRITE DEFAULT-<-1))
 )
(GL::PROF-ENTRY-FRAMES-COMPARE<-STRICT
 (54 38 (:TYPE-PRESCRIPTION GL::RETURN-TYPE-OF-PROF-ENTRY->FRAMES-SUCC))
 (54 38 (:TYPE-PRESCRIPTION GL::RETURN-TYPE-OF-PROF-ENTRY->FRAMES-FAIL))
 (32 32 (:TYPE-PRESCRIPTION GL::PROF-ENTRY-FRAMES-TYPE-OF-COMPARABLEP))
 (12 4 (:REWRITE DEFAULT-+-2))
 (12 4 (:REWRITE DEFAULT-+-1))
 (5 1 (:REWRITE DEFAULT-<-2))
 (5 1 (:REWRITE DEFAULT-<-1))
 )
(DEFSORT-COMPARABLE-LIST-CHECK
 (7 4 (:REWRITE GL::PROF-ENTRY-FRAMES-COMPARE<-NEGATION-TRANSITIVE))
 )
(DEFSORT-COMPARABLEP-OF-CAR)
(DEFSORT-COMPARABLE-LISTP-OF-CDR
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(GL::PROF-ENTRY-FRAMES-ORDERED-P
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE GL::PROF-ENTRY-FRAMES-COMPARE<-TRANSITIVE))
 (4 4 (:REWRITE GL::PROF-ENTRY-FRAMES-COMPARE<-NEGATION-TRANSITIVE))
 )
(GL::PROF-ENTRY-FRAMES-MERGE
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE GL::PROF-ENTRY-FRAMES-COMPARE<-TRANSITIVE))
 (4 4 (:REWRITE GL::PROF-ENTRY-FRAMES-COMPARE<-NEGATION-TRANSITIVE))
 )
(GL::PROF-ENTRY-FRAMES-MERGE-TR
 (18 18 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (4 4 (:REWRITE GL::PROF-ENTRY-FRAMES-COMPARE<-TRANSITIVE))
 (4 4 (:REWRITE GL::PROF-ENTRY-FRAMES-COMPARE<-NEGATION-TRANSITIVE))
 )
(GL::PROF-ENTRY-FRAMES-MERGESORT-FIXNUM)
(GL::PROF-ENTRY-FRAMES-MERGESORT-INTEGERS)
(GL::PROF-ENTRY-FRAMES-SORT
 (13 13 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(DEFSORT-SUBST1-OK
 (8 8 (:REWRITE GL::PROF-ENTRY-FRAMES-COMPARE<-TRANSITIVE))
 (8 8 (:REWRITE GL::PROF-ENTRY-FRAMES-COMPARE<-NEGATION-TRANSITIVE))
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(GL::PROF-ENTRY-FRAMES-MERGESORT-FIXNUM)
(GL::PROF-ENTRY-FRAMES-MERGESORT-INTEGERS
 (2 2 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(GL::PROF-ENTRY-FRAMES-SORT)
(GL::PROF-ENTRY-FRAMES-SORT-PRESERVES-DUPLICITY)
(GL::PROF-ENTRY-FRAMES-SORT-CREATES-COMPARABLE-LISTP)
(GL::PROF-ENTRY-FRAMES-SORT-SORTS)
(GL::PROF-ENTRY-FRAMES-SORT-NO-DUPLICATESP-EQUAL)
(GL::PROF-ENTRY-FRAMES-SORT-TRUE-LISTP)
(GL::PROF-ENTRY-FRAMES-SORT-LEN)
(GL::PROF-ENTRY-FRAMES-SORT-CONSP)
(GL::PROF-ENTRY-FRAMES-SORT-IS-IDENTITY-UNDER-SET-EQUIV)
(GL::PROF-ENTRY-FRAMES-INSERT
 (7 7 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 (2 2 (:REWRITE GL::PROF-ENTRY-FRAMES-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE GL::PROF-ENTRY-FRAMES-COMPARE<-NEGATION-TRANSITIVE))
 )
(GL::PROF-ENTRY-FRAMES-INSERTSORT
 (7 7 (:REWRITE DEFSORT-LEN-WHEN-NOT-CONSP))
 )
(DEFSORT-SUBST2-OK
 (2 2 (:REWRITE GL::PROF-ENTRY-FRAMES-COMPARE<-TRANSITIVE))
 (2 2 (:REWRITE GL::PROF-ENTRY-FRAMES-COMPARE<-NEGATION-TRANSITIVE))
 )
(GL::PROF-ENTRY-FRAMES-INSERTSORT)
(GL::PROF-ENTRY-FRAMES-MERGESORT-EQUALS-INSERTSORT
 (7 5 (:REWRITE GL::PROF-ENTRY-FRAMES-COMPARE<-TRANSITIVE))
 )
(GL::PROF-ENTRY-FRAMES-INSERTSORT-PRESERVES-DUPLICITY)
(GL::PROF-ENTRY-FRAMES-INSERTSORT-CREATES-COMPARABLE-LISTP)
(GL::PROF-ENTRY-FRAMES-INSERTSORT-SORTS)
(GL::PROF-ENTRY-FRAMES-INSERTSORT-NO-DUPLICATESP-EQUAL)
(GL::PROF-ENTRY-FRAMES-INSERTSORT-TRUE-LISTP)
(GL::PROF-ENTRY-FRAMES-INSERTSORT-LEN)
(GL::PROF-ENTRY-FRAMES-INSERTSORT-CONSP)
(GL::PROF->PROF-ENTRY
 (78 6 (:REWRITE NTH-IN-U32-LISTP-INTEGERP))
 (70 14 (:DEFINITION LEN))
 (44 30 (:REWRITE DEFAULT-+-2))
 (30 30 (:REWRITE DEFAULT-+-1))
 (28 24 (:REWRITE DEFAULT-<-1))
 (26 24 (:REWRITE DEFAULT-<-2))
 (22 22 (:REWRITE DEFAULT-*-2))
 (22 22 (:REWRITE DEFAULT-*-1))
 (20 3 (:DEFINITION U32-LISTP))
 (18 18 (:REWRITE DEFAULT-CDR))
 (12 2 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (8 1 (:DEFINITION TRUE-LISTP))
 (5 5 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (4 2 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 2 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (2 2 (:REWRITE SET::IN-SET))
 )
(GL::PROF-ENTRY-P-OF-PROF->PROF-ENTRY
 (44 4 (:REWRITE NTH-IN-U32-LISTP-INTEGERP))
 (32 4 (:DEFINITION U32-LISTP))
 (20 20 (:TYPE-PRESCRIPTION U32-LISTP))
 (8 8 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (6 4 (:REWRITE DEFAULT-*-2))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-CAR))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-*-1))
 (3 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE GL::PROF-ENTRY-P-WHEN-MEMBER-EQUAL-OF-PROF-ENTRYLIST-P))
 (1 1 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE GL::ACL2-NUMBERP-WHEN-INTEGERP))
 )
(GL::PROF->PROF-ENTRYLIST-AUX
 (40 8 (:DEFINITION LEN))
 (23 15 (:REWRITE DEFAULT-+-2))
 (22 2 (:REWRITE NTH-IN-U32-LISTP-INTEGERP))
 (20 3 (:DEFINITION U32-LISTP))
 (19 1 (:REWRITE SUBSETP-OF-CONS))
 (15 15 (:REWRITE DEFAULT-+-1))
 (14 14 (:REWRITE DEFAULT-CDR))
 (13 8 (:REWRITE DEFAULT-<-2))
 (12 2 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (10 10 (:REWRITE DEFAULT-CAR))
 (10 1 (:DEFINITION MEMBER-EQUAL))
 (8 8 (:REWRITE DEFAULT-<-1))
 (8 8 (:REWRITE DEFAULT-*-2))
 (8 8 (:REWRITE DEFAULT-*-1))
 (8 1 (:DEFINITION TRUE-LISTP))
 (6 6 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (5 5 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (5 5 (:REWRITE SUBSETP-TRANS2))
 (5 5 (:REWRITE SUBSETP-TRANS))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (4 2 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (2 2 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (2 2 (:REWRITE SUBSETP-MEMBER . 2))
 (2 2 (:REWRITE SUBSETP-MEMBER . 1))
 (2 2 (:REWRITE GL::PROF-ENTRYLIST-P-WHEN-NOT-CONSP))
 (2 2 (:REWRITE SET::IN-SET))
 )
(GL::PROF-ENTRYLIST-P-OF-PROF->PROF-ENTRYLIST-AUX
 (150 62 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (132 50 (:REWRITE GL::PROF-ENTRYLIST-P-WHEN-NOT-CONSP))
 (100 62 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (73 73 (:REWRITE SUBSETP-TRANS2))
 (73 73 (:REWRITE SUBSETP-TRANS))
 (50 10 (:DEFINITION LEN))
 (48 48 (:REWRITE DEFAULT-CAR))
 (36 36 (:REWRITE DEFAULT-CDR))
 (30 20 (:REWRITE DEFAULT-+-2))
 (20 20 (:REWRITE DEFAULT-+-1))
 (19 10 (:REWRITE DEFAULT-<-2))
 (19 1 (:REWRITE SUBSETP-OF-CONS))
 (16 10 (:REWRITE DEFAULT-*-2))
 (10 10 (:REWRITE DEFAULT-<-1))
 (10 10 (:REWRITE DEFAULT-*-1))
 (10 1 (:DEFINITION MEMBER-EQUAL))
 (6 6 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (3 3 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (3 3 (:REWRITE GL::ACL2-NUMBERP-WHEN-INTEGERP))
 (2 2 (:REWRITE SUBSETP-MEMBER . 2))
 (2 2 (:REWRITE SUBSETP-MEMBER . 1))
 )
(GL::PROF->PROF-ENTRYLIST)
(GL::PROF-ENTRYLIST-P-OF-PROF->PROF-ENTRYLIST)
(GL::PROF-PRINT-SEPARATOR)
(GL::PROF-ENTRY-PRINT
 (49 15 (:REWRITE DEFAULT-*-2))
 (25 15 (:REWRITE DEFAULT-*-1))
 (25 5 (:REWRITE DEFAULT-UNARY-/))
 (12 12 (:REWRITE GL::PROF-ENTRY-P-WHEN-MEMBER-EQUAL-OF-PROF-ENTRYLIST-P))
 (12 6 (:REWRITE DEFAULT-+-2))
 (12 6 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE THIS-NEEDS-TO-BE-ADDED-TO-QUOTIENT-REMAINDER-LEMMAS))
 (2 2 (:DEFINITION MOD))
 )
(GL::PROF-ENTRYLIST-PRINT
 (1 1 (:REWRITE SUBSETP-TRANS2))
 (1 1 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE GL::PROF-ENTRYLIST-P-WHEN-NOT-CONSP))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(GL::PROF-PRINT-REPORT
 (22 2 (:REWRITE NTH-IN-U32-LISTP-INTEGERP))
 (20 3 (:DEFINITION U32-LISTP))
 (12 2 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (8 1 (:DEFINITION TRUE-LISTP))
 (5 5 (:TYPE-PRESCRIPTION UNSIGNED-BYTE-P))
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 1 (:DEFINITION LEN))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (4 2 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 2 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (2 2 (:REWRITE SET::IN-SET))
 (2 2 (:REWRITE DEFAULT-<-2))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(GL::PROF-REPORT)
(GL::IS-PROF-PUSH)
(GL::IS-PROF-POP-INCREMENT)
(GL::IS-PROF-SIMPLE-INCREMENT-DEF)
(GL::IS-PROF-SIMPLE-INCREMENT-EXEC)
(GL::IS-PROF-SIMPLE-INCREMENT-G)
(GL::IS-PROF-UNWIND-STACK)
(GL::IS-PROF-PRINT-REPORT)
(GL::IS-PROF-REPORT)
(GL::IS-PROF-RESET)
(GL::IS-PROF-ENABLE)
(GL::IS-PROF-DISABLE)
(GL::IS-PROF-ENABLEDP)
(GL::UPDATE-IS-PROF-ENABLEDP)
