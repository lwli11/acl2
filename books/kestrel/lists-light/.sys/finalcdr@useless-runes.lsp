(FINALCDR)
(FINALCDR-IFF
 (13 13 (:REWRITE DEFAULT-CDR))
 )
(LEN-OF-FINALCDR-2
 (2 1 (:DEFINITION FINALCDR))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(NTHCDR-OF-LEN-SAME
 (24 3 (:REWRITE ZP-OPEN))
 (17 12 (:REWRITE DEFAULT-+-2))
 (13 12 (:REWRITE DEFAULT-+-1))
 (9 9 (:REWRITE DEFAULT-CDR))
 (6 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 )
(EQUAL-OF-APPEND-SAME-ARG1
 (320 160 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (160 160 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (160 160 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (21 18 (:REWRITE DEFAULT-CDR))
 (15 12 (:REWRITE DEFAULT-CAR))
 )
