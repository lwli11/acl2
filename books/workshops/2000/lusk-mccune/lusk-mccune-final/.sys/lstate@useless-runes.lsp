(REQUEST-LISTP)
(LSTATEP)
(LSTATE-LISTP)
(LSTATE-LIST-IS-ALIST
 (28 28 (:REWRITE DEFAULT-CDR))
 (27 27 (:REWRITE DEFAULT-CAR))
 (20 4 (:DEFINITION LEN))
 (16 4 (:DEFINITION REQUEST-LISTP))
 (8 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 )
(LSTATE-ASSOC
 (123 123 (:REWRITE DEFAULT-CAR))
 (113 113 (:REWRITE DEFAULT-CDR))
 (32 16 (:DEFINITION TRUE-LISTP))
 (30 15 (:REWRITE DEFAULT-+-2))
 (15 15 (:REWRITE DEFAULT-+-1))
 )
(FIRST-REQUEST
 (185 185 (:REWRITE DEFAULT-CDR))
 (175 175 (:REWRITE DEFAULT-CAR))
 (85 17 (:DEFINITION LEN))
 (68 17 (:DEFINITION REQUEST-LISTP))
 (34 17 (:REWRITE DEFAULT-+-2))
 (34 17 (:DEFINITION TRUE-LISTP))
 (17 17 (:REWRITE DEFAULT-+-1))
 )
(FIRST-REQUEST-GETS-HPID-FD
 (604 604 (:REWRITE DEFAULT-CDR))
 (258 129 (:REWRITE DEFAULT-+-2))
 (129 129 (:REWRITE DEFAULT-+-1))
 )
(POP-REQUEST
 (511 511 (:REWRITE DEFAULT-CAR))
 (90 45 (:REWRITE DEFAULT-+-2))
 (45 45 (:REWRITE DEFAULT-+-1))
 )
(POP-REQUEST-PRESERVES-LSTATE-LISTP
 (836 836 (:REWRITE DEFAULT-CDR))
 (801 801 (:REWRITE DEFAULT-CAR))
 (248 124 (:REWRITE DEFAULT-+-2))
 (124 124 (:REWRITE DEFAULT-+-1))
 )
(NEW-CONNECTION)
(NEW-CONNECTION-PRESERVES-CSTATE-LISTP
 (478 2 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (470 2 (:DEFINITION EVALUATED-EXPRESSIONP))
 (412 38 (:DEFINITION MEMBER-EQUAL))
 (307 307 (:REWRITE DEFAULT-CAR))
 (162 162 (:REWRITE DEFAULT-CDR))
 (27 27 (:TYPE-PRESCRIPTION LEN))
 (24 12 (:REWRITE DEFAULT-+-2))
 (16 4 (:REWRITE CSTATE-PROPERTIES))
 (12 12 (:TYPE-PRESCRIPTION CSTATEP))
 (12 12 (:REWRITE DEFAULT-+-1))
 (8 8 (:TYPE-PRESCRIPTION EVALUATED-EXPRESSIONP))
 (4 2 (:DEFINITION TRUE-LISTP))
 (3 3 (:TYPE-PRESCRIPTION EVALUATED-EXPRESSION-LISTP))
 (2 2 (:TYPE-PRESCRIPTION VARP))
 (2 2 (:TYPE-PRESCRIPTION CONSTP))
 (2 2 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 )
(LISTENING-PAIRS
 (7 7 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE DEFAULT-CAR))
 (5 1 (:DEFINITION LEN))
 (4 1 (:DEFINITION REQUEST-LISTP))
 (2 1 (:REWRITE DEFAULT-+-2))
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
(CONNECTION-PAIRS
 (478 2 (:DEFINITION EVALUATED-EXPRESSION-LISTP))
 (470 2 (:DEFINITION EVALUATED-EXPRESSIONP))
 (412 38 (:DEFINITION MEMBER-EQUAL))
 (190 190 (:REWRITE DEFAULT-CDR))
 (33 18 (:REWRITE DEFAULT-+-2))
 (32 8 (:REWRITE CSTATE-PROPERTIES))
 (24 24 (:TYPE-PRESCRIPTION CSTATEP))
 (18 18 (:REWRITE DEFAULT-+-1))
 (8 8 (:TYPE-PRESCRIPTION EVALUATED-EXPRESSIONP))
 (2 2 (:TYPE-PRESCRIPTION VARP))
 (2 2 (:TYPE-PRESCRIPTION CONSTP))
 (2 2 (:REWRITE INTEGER-OR-CONSTP-NOT-VARP))
 )
(FDS-IN-USE
 (5 5 (:REWRITE DEFAULT-CDR))
 (5 5 (:REWRITE DEFAULT-CAR))
 (5 1 (:DEFINITION LEN))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 )
