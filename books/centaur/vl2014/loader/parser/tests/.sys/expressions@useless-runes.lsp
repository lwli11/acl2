(VL2014::EXPRTEST-P
 (5 5 (:TYPE-PRESCRIPTION CONSP-ASSOC-EQUAL))
 )
(VL2014::EXPRTEST)
(VL2014::HONSED-EXPRTEST)
(VL2014::EXPRTEST->INPUT$INLINE
 (6 6 (:DEFINITION ASSOC-EQUAL))
 )
(VL2014::EXPRTEST->SUCCESSP$INLINE
 (6 6 (:DEFINITION ASSOC-EQUAL))
 )
(VL2014::EXPRTEST->EXPECT$INLINE
 (6 6 (:DEFINITION ASSOC-EQUAL))
 )
(VL2014::EXPRTEST->REMAINDER$INLINE
 (6 6 (:DEFINITION ASSOC-EQUAL))
 )
(VL2014::EXPRTEST->WARNINGS$INLINE
 (6 6 (:DEFINITION ASSOC-EQUAL))
 )
(VL2014::CONSP-OF-EXPRTEST)
(VL2014::BOOLEANP-OF-EXPRTEST-P)
(VL2014::EXPRTEST-P-OF-EXPRTEST)
(VL2014::TAG-OF-EXPRTEST)
(VL2014::TAG-WHEN-EXPRTEST-P)
(VL2014::EXPRTEST-P-WHEN-WRONG-TAG)
(VL2014::CONSP-WHEN-EXPRTEST-P)
(VL2014::EXPRTEST->INPUT-OF-EXPRTEST)
(VL2014::EXPRTEST->SUCCESSP-OF-EXPRTEST)
(VL2014::EXPRTEST->EXPECT-OF-EXPRTEST)
(VL2014::EXPRTEST->REMAINDER-OF-EXPRTEST)
(VL2014::EXPRTEST->WARNINGS-OF-EXPRTEST)
(VL2014::RETURN-TYPE-OF-EXPRTEST->INPUT)
(VL2014::RETURN-TYPE-OF-EXPRTEST->SUCCESSP)
(VL2014::RETURN-TYPE-OF-EXPRTEST->REMAINDER)
(VL2014::RETURN-TYPE-OF-EXPRTEST->WARNINGS)
(STD::DEFLIST-LOCAL-BOOLEANP-ELEMENT-THM)
(VL2014::EXPRTESTLIST-P)
(VL2014::EXPRTESTLIST-P-OF-CONS)
(VL2014::EXPRTESTLIST-P-OF-CDR-WHEN-EXPRTESTLIST-P)
(VL2014::EXPRTESTLIST-P-WHEN-NOT-CONSP)
(VL2014::EXPRTEST-P-OF-CAR-WHEN-EXPRTESTLIST-P)
(VL2014::EXPRTESTLIST-P-OF-APPEND)
(VL2014::EXPRTESTLIST-P-OF-LIST-FIX)
(VL2014::EXPRTESTLIST-P-OF-SFIX)
(VL2014::EXPRTESTLIST-P-OF-INSERT)
(VL2014::EXPRTESTLIST-P-OF-DELETE)
(VL2014::EXPRTESTLIST-P-OF-MERGESORT)
(VL2014::EXPRTESTLIST-P-OF-UNION)
(VL2014::EXPRTESTLIST-P-OF-INTERSECT-1)
(VL2014::EXPRTESTLIST-P-OF-INTERSECT-2)
(VL2014::EXPRTESTLIST-P-OF-DIFFERENCE)
(VL2014::EXPRTESTLIST-P-OF-DUPLICATED-MEMBERS)
(VL2014::EXPRTESTLIST-P-OF-REV)
(VL2014::EXPRTESTLIST-P-OF-RCONS)
(VL2014::EXPRTEST-P-WHEN-MEMBER-EQUAL-OF-EXPRTESTLIST-P)
(VL2014::EXPRTESTLIST-P-WHEN-SUBSETP-EQUAL)
(VL2014::EXPRTESTLIST-P-SET-EQUIV-CONGRUENCE)
(VL2014::EXPRTESTLIST-P-OF-SET-DIFFERENCE-EQUAL)
(VL2014::EXPRTESTLIST-P-OF-INTERSECTION-EQUAL-1)
(VL2014::EXPRTESTLIST-P-OF-INTERSECTION-EQUAL-2)
(VL2014::EXPRTESTLIST-P-OF-UNION-EQUAL)
(VL2014::EXPRTESTLIST-P-OF-TAKE)
(VL2014::EXPRTESTLIST-P-OF-REPEAT)
(VL2014::EXPRTEST-P-OF-NTH-WHEN-EXPRTESTLIST-P)
(VL2014::EXPRTESTLIST-P-OF-UPDATE-NTH)
(VL2014::EXPRTESTLIST-P-OF-BUTLAST)
(VL2014::EXPRTESTLIST-P-OF-NTHCDR)
(VL2014::EXPRTESTLIST-P-OF-LAST)
(VL2014::EXPRTESTLIST-P-OF-REMOVE)
(VL2014::EXPRTESTLIST-P-OF-REVAPPEND)
(VL2014::MAKE-EXPRTEST-FAIL)
(VL2014::MAKE-EXPRTESTS-FAIL-EXEC)
(VL2014::MAKE-EXPRTESTS-FAIL-NREV)
(VL2014::MAKE-EXPRTESTS-FAIL)
(VL2014::MAKE-EXPRTESTS-FAIL-NIL-PRESERVINGP-LEMMA)
(VL2014::MAKE-EXPRTESTS-FAIL-NREV-REMOVAL
 (118 5 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
 (90 3 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
 (75 3 (:DEFINITION TRUE-LISTP))
 (48 6 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (45 3 (:DEFINITION LEN))
 (33 3 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
 (19 19 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-USERTYPES-P . 2))
 (19 19 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-USERTYPES-P . 1))
 (19 19 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (19 19 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (19 19 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (19 19 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (19 19 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (19 19 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (19 19 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (19 19 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (16 16 (:REWRITE DEFAULT-CDR))
 (15 15 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (12 12 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (12 12 (:REWRITE VL2014::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (12 6 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (12 6 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (10 10 (:REWRITE DEFAULT-CAR))
 (6 6 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (6 6 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (6 6 (:REWRITE SET::IN-SET))
 (6 6 (:LINEAR LOWER-BOUND-OF-LEN-WHEN-SUBLISTP))
 (6 6 (:LINEAR LISTPOS-UPPER-BOUND-STRONG-2))
 (6 6 (:LINEAR LEN-WHEN-PREFIXP))
 (6 3 (:REWRITE DEFAULT-+-2))
 (3 3 (:REWRITE DEFAULT-+-1))
 (3 3 (:LINEAR VL2014::LEN-WHEN-VL-MATCHES-STRING-P-FC))
 (3 3 (:LINEAR STR::COUNT-LEADING-CHARSET-LEN))
 (2 2 (:TYPE-PRESCRIPTION TYPE-OF-RCONS))
 )
(VL2014::MAKE-EXPRTESTS-FAIL-EXEC-REMOVAL
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-USERTYPES-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-USERTYPES-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 )
(VL2014::MAKE-EXPRTESTS-FAIL-OF-TAKE)
(VL2014::SET-EQUIV-CONGRUENCE-OVER-MAKE-EXPRTESTS-FAIL)
(VL2014::SUBSETP-OF-MAKE-EXPRTESTS-FAIL-WHEN-SUBSETP)
(VL2014::MEMBER-OF-MAKE-EXPRTEST-FAIL-IN-MAKE-EXPRTESTS-FAIL)
(VL2014::MAKE-EXPRTESTS-FAIL-OF-REV)
(VL2014::MAKE-EXPRTESTS-FAIL-OF-LIST-FIX)
(VL2014::MAKE-EXPRTESTS-FAIL-OF-APPEND)
(VL2014::CDR-OF-MAKE-EXPRTESTS-FAIL)
(VL2014::CAR-OF-MAKE-EXPRTESTS-FAIL)
(VL2014::MAKE-EXPRTESTS-FAIL-UNDER-IFF)
(VL2014::CONSP-OF-MAKE-EXPRTESTS-FAIL)
(VL2014::LEN-OF-MAKE-EXPRTESTS-FAIL)
(VL2014::TRUE-LISTP-OF-MAKE-EXPRTESTS-FAIL)
(VL2014::MAKE-EXPRTESTS-FAIL-WHEN-NOT-CONSP)
(VL2014::MAKE-EXPRTESTS-FAIL-OF-CONS)
(VL2014::MAKE-EXPRTESTS-FAIL-NREV
 (44 2 (:DEFINITION TRUE-LISTP))
 (32 4 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (8 8 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (8 8 (:REWRITE VL2014::TRUE-LISTP-WHEN-MEMBER-EQUAL-OF-TRUE-LIST-LISTP))
 (8 4 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (8 4 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (4 4 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (4 4 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (4 4 (:REWRITE SET::IN-SET))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-USERTYPES-P . 2))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-USERTYPES-P . 1))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (4 4 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (3 3 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE VL2014::EXPRTESTLIST-P-WHEN-NOT-CONSP))
 (1 1 (:REWRITE SUBSETP-TRANS2))
 (1 1 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(VL2014::MAKE-EXPRTESTS-FAIL)
(VL2014::MAKE-EXPRTESTS-FAIL-EXEC
 (2 2 (:REWRITE VL2014::EXPRTESTLIST-P-WHEN-NOT-CONSP))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-USERTYPES-P . 2))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-USERTYPES-P . 1))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (2 2 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (1 1 (:REWRITE SUBSETP-TRANS2))
 (1 1 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
(VL2014::RUN-EXPRTEST-FN
 (540 24 (:REWRITE SET::MERGESORT-SET-IDENTITY))
 (336 24 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (144 24 (:REWRITE OMAP::MFIX-IMPLIES-MAPP))
 (132 12 (:REWRITE VL2014::VL-WARNINGLIST->TYPES-WHEN-NOT-CONSP))
 (120 24 (:REWRITE OMAP::MAPP-WHEN-NOT-EMPTY))
 (96 96 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (72 48 (:TYPE-PRESCRIPTION OMAP::MFIX))
 (72 24 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (68 8 (:REWRITE VL2014::EXPRTEST-P-WHEN-WRONG-TAG))
 (48 48 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (48 48 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (48 48 (:TYPE-PRESCRIPTION OMAP::EMPTY))
 (48 24 (:REWRITE OMAP::MFIX-WHEN-MAPP))
 (48 24 (:REWRITE OMAP::MAPP-NON-NIL-IMPLIES-NON-EMPTY))
 (32 25 (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
 (25 25 (:REWRITE-QUOTED-CONSTANT POS-FIX-UNDER-POS-EQUIV))
 (25 25 (:REWRITE-QUOTED-CONSTANT NFIX-UNDER-NAT-EQUIV))
 (25 25 (:REWRITE-QUOTED-CONSTANT VL2014::MAYBE-STRING-FIX-UNDER-MAYBE-STRING-EQUIV))
 (24 24 (:REWRITE SET::IN-SET))
 (16 16 (:REWRITE VL2014::EXPRTEST-P-WHEN-MEMBER-EQUAL-OF-EXPRTESTLIST-P))
 (12 12 (:REWRITE-QUOTED-CONSTANT VL2014::VL-USERTYPES-FIX-UNDER-VL-USERTYPES-EQUIV))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-USERTYPES-P . 2))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-USERTYPES-P . 1))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (12 12 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (6 3 (:REWRITE VL2014::TAG-WHEN-VL-TIMETOKEN-P))
 (6 3 (:REWRITE VL2014::TAG-WHEN-VL-SYSIDTOKEN-P))
 (6 3 (:REWRITE VL2014::TAG-WHEN-VL-STRINGTOKEN-P))
 (6 3 (:REWRITE VL2014::TAG-WHEN-VL-REALTOKEN-P))
 (6 3 (:REWRITE VL2014::TAG-WHEN-VL-OPINFO-P))
 (6 3 (:REWRITE VL2014::TAG-WHEN-VL-INTTOKEN-P))
 (6 3 (:REWRITE VL2014::TAG-WHEN-VL-IDTOKEN-P))
 (6 3 (:REWRITE VL2014::TAG-WHEN-VL-EXTINTTOKEN-P))
 (6 3 (:REWRITE VL2014::TAG-WHEN-VL-ERANGE-P))
 (6 3 (:REWRITE VL2014::TAG-WHEN-EXPRTEST-P))
 (3 3 (:TYPE-PRESCRIPTION VL2014::BOOLEANP-OF-VL-TIMETOKEN-P))
 (3 3 (:TYPE-PRESCRIPTION VL2014::BOOLEANP-OF-VL-SYSIDTOKEN-P))
 (3 3 (:TYPE-PRESCRIPTION VL2014::BOOLEANP-OF-VL-STRINGTOKEN-P))
 (3 3 (:TYPE-PRESCRIPTION VL2014::BOOLEANP-OF-VL-REALTOKEN-P))
 (3 3 (:TYPE-PRESCRIPTION VL2014::BOOLEANP-OF-VL-OPINFO-P))
 (3 3 (:TYPE-PRESCRIPTION VL2014::BOOLEANP-OF-VL-INTTOKEN-P))
 (3 3 (:TYPE-PRESCRIPTION VL2014::BOOLEANP-OF-VL-IDTOKEN-P))
 (3 3 (:TYPE-PRESCRIPTION VL2014::BOOLEANP-OF-VL-EXTINTTOKEN-P))
 (3 3 (:TYPE-PRESCRIPTION VL2014::BOOLEANP-OF-VL-ERANGE-P))
 )
(VL2014::RUN-EXPRTESTS-FN
 (11 1 (:REWRITE VL2014::EXPRTESTLIST-P-WHEN-NOT-CONSP))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-USERTYPES-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-USERTYPES-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-GENCASELIST-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-COMMENTMAP-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-CASELIST-P . 1))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 2))
 (5 5 (:REWRITE VL2014::CONSP-WHEN-MEMBER-EQUAL-OF-VL-ATTS-P . 1))
 (1 1 (:REWRITE SUBSETP-TRANS2))
 (1 1 (:REWRITE SUBSETP-TRANS))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
