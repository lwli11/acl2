(FLAG-LEMMA-FOR-UNIFY-TERM-AND-DAG-ITEM-FAST-CORRECT-HELPER
 (1340 639 (:REWRITE DEFAULT-CAR))
 (1057 33 (:DEFINITION LENGTH))
 (1037 163 (:REWRITE USE-ALL-CONSP-FOR-CAR))
 (815 55 (:DEFINITION LEN))
 (557 453 (:REWRITE DEFAULT-CDR))
 (555 163 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
 (503 503 (:REWRITE USE-ALL-CONSP-2))
 (503 503 (:REWRITE USE-ALL-CONSP))
 (378 11 (:DEFINITION SYMBOL-LISTP))
 (370 370 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
 (370 370 (:TYPE-PRESCRIPTION ALL-CONSP))
 (326 163 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (297 185 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (226 226 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (208 104 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1))
 (185 185 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (173 173 (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (163 163 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (163 163 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
 (163 163 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (153 153 (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (139 139 (:TYPE-PRESCRIPTION LEN))
 (130 60 (:REWRITE DEFAULT-+-2))
 (120 60 (:REWRITE SYMBOL-ALISTP-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (115 115 (:TYPE-PRESCRIPTION PSEUDO-DAG-ARRAYP-AUX))
 (110 110 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (110 110 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (110 110 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (110 22 (:REWRITE ALL-CONSP-OF-CDR))
 (104 104 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (99 99 (:REWRITE EQUAL-OF-NON-NATP-AND-CAAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (84 42 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (66 22 (:REWRITE PSEUDO-DAGP-OF-CDR-WHEN-PSEUDO-DAGP))
 (61 61 (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
 (60 60 (:REWRITE DEFAULT-+-1))
 (58 58 (:REWRITE SYMBOLP-OF-CAR-WHEN-BOUNDED-DAG-EXPRP))
 (47 47 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (45 5 (:REWRITE CONSP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE-IFF))
 (44 44 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (42 42 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (38 38 (:REWRITE QUOTE-LEMMA-FOR-BOUNDED-DARG-LISTP-GEN-ALT))
 (33 8 (:REWRITE CAR-OF-DARGS-BECOMES-NTH-0-OF-DARGS))
 (29 4 (:DEFINITION NTH))
 (22 22 (:REWRITE DEFAULT-COERCE-2))
 (22 22 (:REWRITE DEFAULT-COERCE-1))
 (22 11 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-SIMPLE))
 (22 11 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX-SIMPLE))
 (21 21 (:TYPE-PRESCRIPTION PSEUDO-DAG-ARRAYP))
 (15 15 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (15 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (11 11 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DARGS-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP))
 (11 11 (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
 (11 11 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-BOUNDED-DARG-LISTP))
 (6 6 (:REWRITE ASSOC-EQUAL-WHEN-PSEUDO-DAGP-AUX))
 (6 3 (:REWRITE IFF-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (5 5 (:REWRITE USE-ALL-RATIONALP-2))
 (5 5 (:REWRITE USE-ALL-RATIONALP))
 (5 5 (:REWRITE PSEUDO-DAG-ARRAYP-MONOTONE))
 (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP))
 )
(UNIFY-TERM-AND-DAG-ITEM-FAST-CORRECT-HELPER)
(UNIFY-TERMS-AND-DAG-ITEMS-FAST-CORRECT-HELPER)
(UNIFY-TERM-AND-DAG-ITEM-FAST-CORRECT
 (181 1 (:DEFINITION PSEUDO-TERMP))
 (95 3 (:DEFINITION LENGTH))
 (73 5 (:DEFINITION LEN))
 (33 1 (:DEFINITION SYMBOL-LISTP))
 (28 2 (:REWRITE USE-ALL-CONSP-FOR-CAR))
 (21 15 (:REWRITE DEFAULT-CAR))
 (19 17 (:REWRITE DEFAULT-CDR))
 (13 13 (:REWRITE USE-ALL-CONSP-2))
 (13 13 (:REWRITE USE-ALL-CONSP))
 (12 4 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (12 2 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
 (11 11 (:TYPE-PRESCRIPTION LEN))
 (10 10 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (10 10 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (10 10 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (10 5 (:REWRITE DEFAULT-+-2))
 (10 2 (:REWRITE ALL-CONSP-OF-CDR))
 (8 8 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
 (8 8 (:TYPE-PRESCRIPTION ALL-CONSP))
 (6 2 (:REWRITE PSEUDO-DAGP-OF-CDR-WHEN-PSEUDO-DAGP))
 (5 5 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (4 2 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (3 3 (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
 (2 2 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (2 2 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (2 2 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (2 2 (:REWRITE SYMBOLP-OF-CAR-WHEN-BOUNDED-DAG-EXPRP))
 (2 2 (:REWRITE DEFAULT-COERCE-2))
 (2 2 (:REWRITE DEFAULT-COERCE-1))
 (2 2 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
 (2 2 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (2 2 (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (1 1 (:TYPE-PRESCRIPTION SYMBOL-LISTP))
 (1 1 (:TYPE-PRESCRIPTION PSEUDO-TERM-LISTP))
 (1 1 (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
 (1 1 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-BOUNDED-DARG-LISTP))
 (1 1 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (1 1 (:REWRITE QUOTE-LEMMA-FOR-BOUNDED-DARG-LISTP-GEN-ALT))
 (1 1 (:REWRITE EQUAL-OF-NON-NATP-AND-CAAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 )
(UNIFY-TERMS-AND-DAG-ITEMS-FAST-CORRECT
 (8 1 (:DEFINITION PSEUDO-TERM-LISTP))
 (2 2 (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
 (1 1 (:TYPE-PRESCRIPTION PSEUDO-TERMP))
 (1 1 (:REWRITE USE-ALL-CONSP-2))
 (1 1 (:REWRITE USE-ALL-CONSP))
 (1 1 (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
 (1 1 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
