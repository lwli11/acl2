(R1CS::FEP-ASSUMPTIONS-FOR-VARS-AUX
 (54 1 (:REWRITE R1CS::PSEUDO-VAR-LISTP-FORWARD-TO-TRUE-LISTP))
 (51 1 (:REWRITE R1CS::PSEUDO-VAR-LISTP-WHEN-SYMBOL-LISTP))
 (50 2 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (21 1 (:REWRITE TRUE-LISTP-WHEN-NOT-CONSP))
 (16 3 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (4 4 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (4 4 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (4 4 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (4 4 (:REWRITE LEN-WHEN-BV-ARRAYP))
 (4 4 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (4 4 (:META LEN-CONS-META-RULE))
 (4 2 (:REWRITE SYMBOLP-OF-CAR-WHEN-AXE-TREEP-CHEAP))
 (2 2 (:TYPE-PRESCRIPTION R1CS::PSEUDO-VAR-LISTP))
 (2 2 (:TYPE-PRESCRIPTION AXE-TREEP))
 (2 2 (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
 (2 2 (:REWRITE SYMBOLP-OF-CAR-WHEN-BOUNDED-DAG-EXPRP))
 (2 2 (:REWRITE LEN-GIVES-CONSP))
 (2 2 (:REWRITE DEFAULT-CDR))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (2 1 (:REWRITE TRUE-LISTP-WHEN-POSSIBLY-NEGATED-NODENUMSP))
 (2 1 (:REWRITE DEFAULT-<-2))
 (2 1 (:REWRITE <-TRANS))
 (1 1 (:TYPE-PRESCRIPTION POSSIBLY-NEGATED-NODENUMSP))
 (1 1 (:REWRITE USE-ALL-CONSP-2))
 (1 1 (:REWRITE USE-ALL-CONSP))
 (1 1 (:REWRITE USE-ALL-<-2))
 (1 1 (:REWRITE USE-ALL-<))
 (1 1 (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
 (1 1 (:REWRITE TRUE-LISTP-WHEN-BV-ARRAYP))
 (1 1 (:REWRITE DROP-LINEAR-HYPS2))
 (1 1 (:REWRITE DROP->-HYPS))
 (1 1 (:REWRITE DROP-<-HYPS))
 (1 1 (:REWRITE DEFAULT-<-1))
 (1 1 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (1 1 (:REWRITE CONSP-FROM-LEN-BOUND))
 (1 1 (:REWRITE BOUND-WHEN-USB2))
 (1 1 (:REWRITE <-WHEN-SBVLT-CONSTANTS))
 (1 1 (:REWRITE <-WHEN-BVLT))
 (1 1 (:REWRITE <-WHEN-BOUNDED-DARG-LISTP-GEN))
 (1 1 (:REWRITE <-WHEN-BOUNDED-AXE-TREEP))
 (1 1 (:REWRITE <-TIGHTEN-WHEN-SLICE-IS-0))
 (1 1 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
 (1 1 (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
 (1 1 (:REWRITE <-LEMMA-FOR-KNOWN-OPERATORS-NON-DAG))
 (1 1 (:REWRITE <-FROM-<=-FREE))
 )
(R1CS::FEP-ASSUMPTIONS-FOR-VARS)
(R1CS::R1CS-VAR-TO-LIFTED-VAR-ALIST
 (224 6 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (80 4 (:REWRITE <-0-+-NEGATIVE-1))
 (76 4 (:REWRITE LEN-OF-CDR))
 (50 10 (:REWRITE RULE-ALISTP-MEANS-ALISTP))
 (42 6 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (30 10 (:REWRITE RULE-LIMITSP-FORWARD-TO-ALISTP))
 (30 10 (:REWRITE DAG-VARIABLE-ALISTP-FORWARD-TO-ALIST))
 (20 20 (:TYPE-PRESCRIPTION RULE-LIMITSP))
 (20 20 (:TYPE-PRESCRIPTION RULE-ALISTP))
 (20 20 (:TYPE-PRESCRIPTION DAG-VARIABLE-ALISTP))
 (20 10 (:REWRITE SYMBOLP-OF-CAR-WHEN-AXE-TREEP-CHEAP))
 (20 10 (:REWRITE ALISTP-WHEN-PSEUDO-TERM-ALISTP-CHEAP))
 (19 2 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-SYMBOL-NAME))
 (16 16 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (16 16 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (16 16 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (16 16 (:REWRITE LEN-WHEN-BV-ARRAYP))
 (16 16 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (16 16 (:META LEN-CONS-META-RULE))
 (12 12 (:REWRITE DEFAULT-CAR))
 (11 2 (:REWRITE INTERN-IN-PACKAGE-OF-SYMBOL-IS-IDENTITY))
 (10 10 (:TYPE-PRESCRIPTION PSEUDO-TERM-ALISTP))
 (10 10 (:TYPE-PRESCRIPTION AXE-TREEP))
 (10 10 (:REWRITE USE-ALL-RULE-ALISTP-2))
 (10 10 (:REWRITE USE-ALL-RULE-ALISTP))
 (10 10 (:REWRITE USE-ALL-ALISTP-2))
 (10 10 (:REWRITE USE-ALL-ALISTP))
 (10 10 (:REWRITE SYMBOLP-WHEN-BOUNDED-DAG-EXPRP))
 (10 10 (:REWRITE SYMBOLP-OF-CAR-WHEN-BOUNDED-DAG-EXPRP))
 (10 10 (:REWRITE NODE-REPLACEMENT-ALISTP-FORWARD-TO-ALISTP))
 (10 10 (:REWRITE DEFAULT-CDR))
 (10 10 (:REWRITE ALISTP-WHEN-PSEUDO-DAGP-AUX))
 (10 10 (:REWRITE ALISTP-WHEN-BOUNDED-NATP-ALISTP))
 (9 6 (:REWRITE NOT-EQUAL-WHEN-LESS))
 (8 7 (:REWRITE EQUAL-OF-BOOLEANS-CHEAP))
 (8 6 (:REWRITE DEFAULT-SYMBOL-PACKAGE-NAME))
 (8 6 (:REWRITE DEFAULT-<-2))
 (7 7 (:REWRITE REWRITE-BV-EQUALITY-WHEN-SIZES-DONT-MATCH-2))
 (7 7 (:REWRITE REWRITE-BV-EQUALITY-WHEN-SIZES-DONT-MATCH-1))
 (7 7 (:REWRITE PFIELD::EQUAL-OF-ADD-MOVE-NEGATIONS-BIND-FREE-2B))
 (7 7 (:REWRITE PFIELD::EQUAL-OF-ADD-MOVE-NEGATIONS-BIND-FREE-2A))
 (7 7 (:REWRITE PFIELD::EQUAL-OF-ADD-CANCEL-BIND-FREE))
 (7 7 (:REWRITE ADD-BVCHOPS-TO-EQUALITY-OF-SBPS-1))
 (6 6 (:REWRITE USE-ALL-CONSP-2))
 (6 6 (:REWRITE USE-ALL-CONSP))
 (6 6 (:REWRITE USE-ALL-<-2))
 (6 6 (:REWRITE USE-ALL-<))
 (6 6 (:REWRITE NOT-EQUAL-WHEN-NOT-EQUAL-BVCHOP))
 (6 6 (:REWRITE NOT-EQUAL-OF-CONSTANT-AND-BV-TERM-ALT))
 (6 6 (:REWRITE NOT-EQUAL-OF-CONSTANT-AND-BV-TERM))
 (6 6 (:REWRITE NOT-EQUAL-FROM-BOUND))
 (6 6 (:REWRITE NOT-EQUAL-CONSTANT-WHEN-UNSIGNED-BYTE-P-ALT))
 (6 6 (:REWRITE NOT-EQUAL-CONSTANT-WHEN-UNSIGNED-BYTE-P))
 (6 6 (:REWRITE NOT-EQUAL-CONSTANT-WHEN-BOUND-FORBIDS-IT2))
 (6 6 (:REWRITE NOT-EQUAL-CONSTANT-WHEN-BOUND-FORBIDS-IT))
 (6 6 (:REWRITE LEN-GIVES-CONSP))
 (6 6 (:REWRITE IMPOSSIBLE-VALUE-2))
 (6 6 (:REWRITE IMPOSSIBLE-VALUE-1))
 (6 6 (:REWRITE EQUAL-WHEN-BVLT-ALT))
 (6 6 (:REWRITE EQUAL-WHEN-BVLT))
 (6 6 (:REWRITE EQUAL-WHEN-<-OF-+-ALT))
 (6 6 (:REWRITE EQUAL-WHEN-<-OF-+))
 (6 6 (:REWRITE EQUAL-OF-CONSTANT-WHEN-SBVLT))
 (6 6 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-2))
 (6 6 (:REWRITE EQUAL-OF-CONSTANT-WHEN-NOT-BVLT-CONSTANT-1))
 (6 6 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2-ALT))
 (6 6 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-2))
 (6 6 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1-ALT))
 (6 6 (:REWRITE EQUAL-OF-CONSTANT-WHEN-BVLT-CONSTANT-1))
 (6 6 (:REWRITE EQUAL-CONSTANT-WHEN-SLICE-EQUAL-CONSTANT))
 (6 6 (:REWRITE EQUAL-CONSTANT-WHEN-NOT-SLICE-EQUAL-CONSTANT))
 (6 6 (:REWRITE EQUAL-CONSTANT-WHEN-NOT-SBVLT))
 (6 6 (:REWRITE EQUAL-CONSTANT-WHEN-BVCHOP-EQUAL-CONSTANT-FALSE))
 (6 6 (:REWRITE DROP-LINEAR-HYPS2))
 (6 6 (:REWRITE DROP->-HYPS))
 (6 6 (:REWRITE DROP-<-HYPS))
 (6 6 (:REWRITE DEFAULT-<-1))
 (6 6 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (6 6 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (6 6 (:REWRITE CONSP-FROM-LEN-BOUND))
 (6 6 (:REWRITE BOUND-WHEN-USB2))
 (6 6 (:REWRITE <-WHEN-SBVLT-CONSTANTS))
 (6 6 (:REWRITE <-WHEN-BVLT))
 (6 6 (:REWRITE <-WHEN-BOUNDED-DARG-LISTP-GEN))
 (6 6 (:REWRITE <-WHEN-BOUNDED-AXE-TREEP))
 (6 6 (:REWRITE <-TRANS))
 (6 6 (:REWRITE <-TIGHTEN-WHEN-SLICE-IS-0))
 (6 6 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
 (6 6 (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
 (6 6 (:REWRITE <-LEMMA-FOR-KNOWN-OPERATORS-NON-DAG))
 (6 6 (:REWRITE <-FROM-<=-FREE))
 (4 4 (:TYPE-PRESCRIPTION MEMBER-SYMBOL-NAME))
 (4 4 (:REWRITE PLUS-BVCAT-WITH-0-ALT))
 (4 4 (:REWRITE PLUS-BVCAT-WITH-0))
 (4 4 (:REWRITE DEFAULT-SYMBOL-NAME))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (4 4 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (4 4 (:REWRITE +-OF-MINUS-CONSTANT-VERSION))
 (4 4 (:REWRITE +-OF-MINUS))
 (3 2 (:REWRITE DEFAULT-INTERN-IN-PACKAGE-OF-SYMBOL))
 (2 2 (:REWRITE SYMBOL-PACKAGE-NAME-PKG-WITNESS-NAME))
 (1 1 (:REWRITE DEFAULT-PKG-IMPORTS))
 )
(R1CS::LIFT-R1CS-FN)
