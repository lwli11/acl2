(DEFTHM-AXE-FN
 (94 2 (:DEFINITION RULE-ITEM-LISTP))
 (82 2 (:DEFINITION RULE-ITEMP))
 (20 10 (:REWRITE SYMBOLP-OF-CAR-WHEN-AXE-TREEP-CHEAP))
 (13 13 (:REWRITE DEFAULT-CAR))
 (12 4 (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1))
 (11 11 (:REWRITE DEFAULT-CDR))
 (10 10 (:TYPE-PRESCRIPTION AXE-TREEP))
 (10 10 (:REWRITE USE-ALL-CONSP-2))
 (10 10 (:REWRITE USE-ALL-CONSP))
 (10 10 (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
 (10 10 (:REWRITE SYMBOLP-OF-CAR-WHEN-BOUNDED-DAG-EXPRP))
 (8 4 (:REWRITE SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-ALISTP-CHEAP))
 (6 6 (:TYPE-PRESCRIPTION LEN))
 (6 2 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
 (4 4 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
 (4 4 (:REWRITE WFR-HACK5))
 (4 4 (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (4 2 (:REWRITE TRUE-LISTP-WHEN-POSSIBLY-NEGATED-NODENUMSP))
 (4 2 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (2 2 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (2 2 (:TYPE-PRESCRIPTION POSSIBLY-NEGATED-NODENUMSP))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
 (2 2 (:REWRITE TRUE-LISTP-WHEN-BV-ARRAYP))
 (2 2 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (2 2 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-BOUNDED-DARG-LISTP))
 (2 2 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (2 2 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (2 2 (:REWRITE LEN-WHEN-BV-ARRAYP))
 (2 2 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (2 2 (:REWRITE LEN-OF-CAR-WHEN-ITEMS-HAVE-LEN-STRONG))
 (2 2 (:REWRITE LEN-OF-CAR-WHEN-ITEMS-HAVE-LEN))
 (2 2 (:REWRITE EQUAL-WHEN-BVLT-ALT))
 (2 2 (:REWRITE EQUAL-WHEN-BVLT))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-SBVLT))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-2))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-1))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2-ALT))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1-ALT))
 (2 2 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1))
 (2 2 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 (2 2 (:REWRITE EQUAL-CONSTANT-WHEN-NOT-SBVLT))
 (2 2 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (2 2 (:REWRITE SET::EMPTY-SET-UNIQUE))
 (2 2 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
 (2 2 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (2 2 (:REWRITE CONSP-OF-CAR-WHEN-POSSIBLY-NEGATED-NODENUMSP-WEAKEN-CHEAP))
 (2 2 (:REWRITE CLR-DIFFERENTIAL))
 )
