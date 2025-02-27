(UNROLL-SPEC-BASIC-RULES)
(FILTER-FUNCTION-NAMES
 (126 3 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (48 2 (:REWRITE <-0-+-NEGATIVE-1))
 (38 2 (:REWRITE LEN-OF-CDR))
 (24 3 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (18 6 (:REWRITE WORLDP-WHEN-INFO-PLIST-WORLDP))
 (18 6 (:REWRITE PLIST-WORLDP-WHEN-SYMBOL-COUNT-WORLDP))
 (15 6 (:REWRITE FUNCTION-SYMBOLP-OF-CAR-WHEN-FUNCTION-SYMBOLSP))
 (12 12 (:TYPE-PRESCRIPTION SYMBOL-COUNT-WORLDP))
 (12 12 (:TYPE-PRESCRIPTION INFO-WORLDP))
 (10 5 (:REWRITE SYMBOLP-OF-CAR-WHEN-AXE-TREEP-CHEAP))
 (8 8 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (8 8 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (8 8 (:REWRITE LEN-WHEN-EQUAL-TAKE))
 (8 8 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (8 8 (:REWRITE LEN-WHEN-BV-ARRAYP))
 (8 8 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (8 8 (:META LEN-CONS-META-RULE))
 (6 6 (:TYPE-PRESCRIPTION FUNCTION-SYMBOLSP))
 (6 6 (:REWRITE DEFAULT-CDR))
 (6 6 (:REWRITE DEFAULT-CAR))
 (6 6 (:REWRITE CAR-WHEN-EQUAL-NTHCDR))
 (5 5 (:TYPE-PRESCRIPTION AXE-TREEP))
 (5 5 (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
 (5 5 (:REWRITE SYMBOLP-OF-CAR-WHEN-BOUNDED-DAG-EXPRP))
 (4 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE USE-ALL-CONSP-2))
 (3 3 (:REWRITE USE-ALL-CONSP))
 (3 3 (:REWRITE USE-ALL-<-2))
 (3 3 (:REWRITE USE-ALL-<))
 (3 3 (:REWRITE MY-NON-INTEGERP-<-INTEGERP))
 (3 3 (:REWRITE MY-INTEGERP-<-NON-INTEGERP))
 (3 3 (:REWRITE LEN-GIVES-CONSP))
 (3 3 (:REWRITE FUNCTION-SYMBOLSP-WHEN-NOT-CONSP))
 (3 3 (:REWRITE DROP-LINEAR-HYPS2))
 (3 3 (:REWRITE DROP->-HYPS))
 (3 3 (:REWRITE DROP-<-HYPS))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (3 3 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (3 3 (:REWRITE CONSP-FROM-LEN-BOUND))
 (3 3 (:REWRITE BOUND-WHEN-USB2))
 (3 3 (:REWRITE <-WHEN-SBVLT-CONSTANTS))
 (3 3 (:REWRITE <-WHEN-BVLT))
 (3 3 (:REWRITE <-WHEN-BOUNDED-DARG-LISTP-GEN))
 (3 3 (:REWRITE <-WHEN-BOUNDED-AXE-TREEP))
 (3 3 (:REWRITE <-TRANS))
 (3 3 (:REWRITE <-TIGHTEN-WHEN-SLICE-IS-0))
 (3 3 (:REWRITE <-OF-NON-INTEGERP-AND-INTEGERP))
 (3 3 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
 (3 3 (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
 (3 3 (:REWRITE <-OF-CONSTANT-WHEN-USB2))
 (3 3 (:REWRITE <-LEMMA-FOR-KNOWN-OPERATORS-NON-DAG))
 (3 3 (:REWRITE <-FROM-<=-FREE))
 (2 2 (:REWRITE DEFAULT-+-2))
 (2 2 (:REWRITE DEFAULT-+-1))
 (2 2 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (2 2 (:REWRITE +-OF-MINUS-CONSTANT-VERSION))
 (2 2 (:REWRITE +-OF-MINUS))
 (1 1 (:REWRITE LEN->-0-WEAKEN))
 )
(SYMBOL-LISTP-OF-FILTER-FUNCTION-NAMES
 (567 15 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (49 15 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (32 8 (:REWRITE FUNCTION-SYMBOLP-OF-CAR-WHEN-FUNCTION-SYMBOLSP))
 (30 15 (:REWRITE DEFAULT-<-2))
 (30 12 (:REWRITE SYMBOLP-OF-CAR-WHEN-AXE-TREEP-CHEAP))
 (25 19 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (20 20 (:REWRITE DEFAULT-CAR))
 (20 20 (:REWRITE CAR-WHEN-EQUAL-NTHCDR))
 (19 19 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (19 19 (:REWRITE LEN-WHEN-EQUAL-TAKE))
 (19 19 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (19 19 (:REWRITE LEN-WHEN-BV-ARRAYP))
 (19 19 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (19 19 (:META LEN-CONS-META-RULE))
 (19 15 (:REWRITE <-TRANS))
 (16 16 (:TYPE-PRESCRIPTION FUNCTION-SYMBOLSP))
 (15 15 (:REWRITE USE-ALL-CONSP-2))
 (15 15 (:REWRITE USE-ALL-CONSP))
 (15 15 (:REWRITE USE-ALL-<-2))
 (15 15 (:REWRITE USE-ALL-<))
 (15 15 (:REWRITE MY-NON-INTEGERP-<-INTEGERP))
 (15 15 (:REWRITE MY-INTEGERP-<-NON-INTEGERP))
 (15 15 (:REWRITE LEN-GIVES-CONSP))
 (15 15 (:REWRITE LEN->-0-WEAKEN))
 (15 15 (:REWRITE DROP-LINEAR-HYPS2))
 (15 15 (:REWRITE DROP->-HYPS))
 (15 15 (:REWRITE DROP-<-HYPS))
 (15 15 (:REWRITE DEFAULT-<-1))
 (15 15 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (15 15 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (15 15 (:REWRITE CONSP-FROM-LEN-BOUND))
 (15 15 (:REWRITE BOUND-WHEN-USB2))
 (15 15 (:REWRITE <-WHEN-SBVLT-CONSTANTS))
 (15 15 (:REWRITE <-WHEN-BVLT))
 (15 15 (:REWRITE <-WHEN-BOUNDED-DARG-LISTP-GEN))
 (15 15 (:REWRITE <-WHEN-BOUNDED-AXE-TREEP))
 (15 15 (:REWRITE <-TIGHTEN-WHEN-SLICE-IS-0))
 (15 15 (:REWRITE <-OF-NON-INTEGERP-AND-INTEGERP))
 (15 15 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
 (15 15 (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
 (15 15 (:REWRITE <-OF-CONSTANT-WHEN-USB2))
 (15 15 (:REWRITE <-LEMMA-FOR-KNOWN-OPERATORS-NON-DAG))
 (15 15 (:REWRITE <-FROM-<=-FREE))
 (12 12 (:TYPE-PRESCRIPTION AXE-TREEP))
 (12 12 (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
 (12 12 (:REWRITE SYMBOLP-OF-CAR-WHEN-BOUNDED-DAG-EXPRP))
 (12 12 (:REWRITE DEFAULT-CDR))
 (8 8 (:REWRITE FUNCTION-SYMBOLSP-WHEN-NOT-CONSP))
 )
(UNROLL-SPEC-BASIC-FN)
