(TERMINATION-THEOREM$)
(RETURN-TYPE-OF-TERMINATION-THEOREM$
 (184 2 (:DEFINITION PSEUDO-TERMP))
 (108 88 (:REWRITE DEFAULT-CAR))
 (97 87 (:REWRITE DEFAULT-CDR))
 (68 6 (:DEFINITION LENGTH))
 (65 13 (:DEFINITION ASSOC-EQUAL))
 (50 10 (:DEFINITION LEN))
 (26 13 (:DEFINITION NTH))
 (22 22 (:TYPE-PRESCRIPTION LEN))
 (20 10 (:REWRITE DEFAULT-+-2))
 (10 10 (:REWRITE DEFAULT-+-1))
 (6 2 (:DEFINITION SYMBOL-LISTP))
 (4 4 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (4 4 (:REWRITE DEFAULT-COERCE-2))
 (4 4 (:REWRITE DEFAULT-COERCE-1))
 (4 2 (:DEFINITION TRUE-LISTP))
 (2 2 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (2 2 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (2 2 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 )
(CONSP-OF-TERMINATION-THEOREM$)
(MSGP-OF-TERMINATION-THEOREM-WHEN-FAILED
 (8 6 (:REWRITE DEFAULT-CAR))
 (5 1 (:DEFINITION CHARACTER-ALISTP))
 (4 3 (:REWRITE DEFAULT-CDR))
 )
(MSGP-OF-TERMINATION-THEOREM-WHEN-NOT-FAILED
 (25 15 (:REWRITE DEFAULT-CAR))
 (25 5 (:DEFINITION LEN))
 (20 16 (:REWRITE DEFAULT-CDR))
 (10 5 (:REWRITE DEFAULT-+-2))
 (5 5 (:REWRITE DEFAULT-+-1))
 (3 1 (:DEFINITION SYMBOL-LISTP))
 (2 2 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 (2 1 (:DEFINITION TRUE-LISTP))
 (1 1 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 )
