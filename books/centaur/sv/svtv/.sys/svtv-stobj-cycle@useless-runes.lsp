(SV::HQ)
(SV::EVAL-OUTS-LOOKUP-OF-SVTV-CYCLE-COMPILE
 (25 5 (:REWRITE SV::SVEX-EVAL-WHEN-FNCALL))
 (20 5 (:DEFINITION EQ))
 (6 6 (:REWRITE SV::SVEX-UNIFY-CORRECT))
 (5 5 (:REWRITE SV::SVEX-EVAL-OF-QUOTED))
 (3 3 (:REWRITE SV::SVTV-DATA$C-PIPELINE-OKP-NECC))
 )
(SV::OUTS-LOOKUP-EXISTS-OF-SVTV-CYCLE-COMPILE
 (6 6 (:REWRITE SV::SVTV-DATA$C-PIPELINE-OKP-NECC))
 )
(SV::EVAL-NEXTST-LOOKUP-OF-SVTV-CYCLE-COMPILE
 (25 5 (:REWRITE SV::SVEX-EVAL-WHEN-FNCALL))
 (20 5 (:DEFINITION EQ))
 (6 6 (:REWRITE SV::SVEX-UNIFY-CORRECT))
 (5 5 (:REWRITE SV::SVEX-EVAL-OF-QUOTED))
 (3 3 (:REWRITE SV::SVTV-DATA$C-PIPELINE-OKP-NECC))
 )
(SV::NEXTST-LOOKUP-EXISTS-OF-SVTV-CYCLE-COMPILE
 (6 6 (:REWRITE SV::SVTV-DATA$C-PIPELINE-OKP-NECC))
 )
(SV::BASE-FSM-EVAL-EQUIV-CONGRUENCE-OF-SVTV-CYCLE-COMPILE-OUTS
 (5 5 (:REWRITE SV::SVTV-DATA$C-PIPELINE-OKP-NECC))
 )
(SV::BASE-FSM-EVAL-EQUIV-CONGRUENCE-OF-SVTV-CYCLE-COMPILE-NEXTST
 (2 2 (:REWRITE SV::SVTV-DATA$C-PIPELINE-OKP-NECC))
 (2 2 (:REWRITE SV::SVTV-DATA$C-CYCLE-FSM-OKP-NECC))
 )
(SV::PREV-ST-CONGRUENCE-OF-SVTV-CYCLE-COMPILE-OUTS
 (5 5 (:REWRITE SV::SVTV-DATA$C-PIPELINE-OKP-NECC))
 )
(SV::PREV-ST-CONGRUENCE-OF-SVTV-CYCLE-COMPILE-NEXTST
 (5 5 (:REWRITE SV::SVTV-DATA$C-PIPELINE-OKP-NECC))
 )
(SV::SVEX-ALIST-EVAL-EQUIV-IMPLIES-BASE-FSM-EVAL-EQUIV-BASE-FSM-1
 (19 4 (:REWRITE SV::SVEX-ALIST-FIX-WHEN-SVEX-ALIST-P))
 (6 6 (:TYPE-PRESCRIPTION SV::SVEX-ALIST-P))
 (6 6 (:REWRITE SV::SVEX-ALIST-P-WHEN-SUBSETP-EQUAL))
 (3 3 (:REWRITE SV::SVEX-ALIST-P-WHEN-NOT-CONSP))
 )
(SV::SVEX-ALIST-EVAL-EQUIV!-IMPLIES-BASE-FSM-EVAL-EQUIV-BASE-FSM-2
 (19 4 (:REWRITE SV::SVEX-ALIST-FIX-WHEN-SVEX-ALIST-P))
 (6 6 (:TYPE-PRESCRIPTION SV::SVEX-ALIST-P))
 (6 6 (:REWRITE SV::SVEX-ALIST-P-WHEN-SUBSETP-EQUAL))
 (3 3 (:REWRITE SV::SVEX-ALIST-P-WHEN-NOT-CONSP))
 )
(SV::BASE-FSM-EVAL-EQUIV-IMPLIES-BASE-FSM-EVAL-EQUIV-BASE-FSM-TO-CYCLE-2
 (6 6 (:REWRITE SV::SVTV-DATA$C-CYCLE-FSM-OKP-NECC))
 )
(SV::CYCLE-FSM-OKP-OF-BASE-FSM-TO-CYCLE
 (15 3 (:REWRITE SV::SVEX-ENV-EXTRACT-WHEN-ALIST-KEYS-EQUAL))
 (4 4 (:TYPE-PRESCRIPTION SV::SVEX-ALIST-KEYS))
 (4 4 (:TYPE-PRESCRIPTION ALIST-KEYS))
 (4 1 (:REWRITE SV::SVEX-ENV-FIX-WHEN-SVEX-ENV-P))
 (3 3 (:REWRITE SV::SVTV-DATA$C-CYCLE-FSM-OKP-NECC))
 (2 2 (:TYPE-PRESCRIPTION SV::SVEX-ENV-P))
 (2 2 (:REWRITE SV::SVTV-DATA$C-PIPELINE-OKP-NECC))
 (2 2 (:REWRITE SV::SVTV-DATA$C->PHASE-FSM-OF-UPDATE))
 (2 2 (:REWRITE SV::SVTV-DATA$C->CYCLE-PHASES-OF-UPDATE))
 (1 1 (:REWRITE SV::SVEX-ENV-P-WHEN-NOT-CONSP))
 (1 1 (:REWRITE SV::CYCLE-FSM-OKP-WHEN-EQUIVALENT-FSM))
 (1 1 (:REWRITE SV::CYCLE-FSM-OKP-UPDATER-INDEPENDENCE))
 )
(SV::CYCLE-FSM-OKP-IMPLIES-CYCLE-COMPILE-VALUES-EQUIV
 (51 51 (:REWRITE SV::SVTV-DATA$C->PHASE-FSM-OF-UPDATE))
 (43 7 (:REWRITE SV::SVEX-ENV-EXTRACT-WHEN-ALIST-KEYS-EQUAL))
 (26 26 (:REWRITE SV::SVTV-DATA$C->CYCLE-PHASES-OF-UPDATE))
 (12 12 (:TYPE-PRESCRIPTION ALIST-KEYS))
 (12 3 (:REWRITE SV::SVEX-ENV-FIX-WHEN-SVEX-ENV-P))
 (6 6 (:TYPE-PRESCRIPTION SV::SVEX-ENV-P))
 (6 6 (:REWRITE SV::SVTV-DATA$C-PIPELINE-OKP-NECC))
 (5 5 (:REWRITE SV::CYCLE-FSM-OKP-UPDATER-INDEPENDENCE))
 (3 3 (:REWRITE SV::SVEX-ENV-P-WHEN-NOT-CONSP))
 )
(SV::SVTV-DATA-COMPUTE-CYCLE-FSM
 (6 6 (:REWRITE-QUOTED-CONSTANT SV::SVTV-DATA$C-FIELD-FIX-UNDER-SVTV-DATA$C-FIELD-EQUIV))
 (2 2 (:REWRITE SV::SVTV-DATA$C-CYCLE-FSM-OKP-NECC))
 (2 2 (:REWRITE SV::SVTV-DATA$C->PHASE-FSM-VALIDP-OF-UPDATE))
 (2 2 (:REWRITE SV::SVTV-DATA$C->FLATNORM-VALIDP-OF-UPDATE))
 (2 2 (:REWRITE SV::SVTV-DATA$C->CYCLE-FSM-VALIDP-OF-UPDATE))
 )
(SV::SVTV-DATA$C-GET-OF-SVTV-DATA-COMPUTE-CYCLE-FSM
 (6 2 (:REWRITE SV::SVTV-DATA$C-FIELD-FIX-IDEMPOTENT))
 (4 4 (:TYPE-PRESCRIPTION SV::SVTV-DATA$C-FIELD-P))
 (1 1 (:REWRITE SV::SVTV-DATA$C->PHASE-FSM-OF-UPDATE))
 (1 1 (:REWRITE SV::SVTV-DATA$C->CYCLE-PHASES-OF-UPDATE))
 )
(SV::CYCLE-FSM-VALIDP-OF-SVTV-DATA-COMPUTE-CYCLE-FSM
 (1 1 (:REWRITE SV::SVTV-DATA$C->PHASE-FSM-OF-UPDATE))
 (1 1 (:REWRITE SV::SVTV-DATA$C->CYCLE-PHASES-OF-UPDATE))
 )
(SV::SVTV-DATA-MAYBE-COMPUTE-CYCLE-FSM-FN
 (12 12 (:REWRITE-QUOTED-CONSTANT SV::SVTV-DATA$C-FIELD-FIX-UNDER-SVTV-DATA$C-FIELD-EQUIV))
 (3 3 (:REWRITE SV::SVTV-CYCLEPHASELIST-P-WHEN-NOT-CONSP))
 (1 1 (:REWRITE SV::SVTV-DATA$C->CYCLE-PHASES-OF-UPDATE))
 (1 1 (:REWRITE SV::SVTV-DATA$C->CYCLE-FSM-VALIDP-OF-UPDATE))
 )
(SV::SVTV-DATA$C-GET-OF-SVTV-DATA-MAYBE-COMPUTE-CYCLE-FSM
 (87 29 (:REWRITE SV::SVTV-DATA$C-FIELD-FIX-IDEMPOTENT))
 (58 58 (:TYPE-PRESCRIPTION SV::SVTV-DATA$C-FIELD-P))
 (28 7 (:REWRITE SV::SVTV-CYCLEPHASELIST-FIX-WHEN-SVTV-CYCLEPHASELIST-P))
 (14 14 (:TYPE-PRESCRIPTION SV::SVTV-CYCLEPHASELIST-P))
 (7 7 (:REWRITE SV::SVTV-DATA$C->CYCLE-PHASES-OF-UPDATE))
 (7 7 (:REWRITE SV::SVTV-DATA$C->CYCLE-FSM-VALIDP-OF-UPDATE))
 (7 7 (:REWRITE SV::SVTV-CYCLEPHASELIST-P-WHEN-NOT-CONSP))
 )
(SV::CYCLE-FSM-VALIDP-OF-SVTV-DATA-MAYBE-COMPUTE-CYCLE-FSM
 (8 2 (:REWRITE SV::SVTV-CYCLEPHASELIST-FIX-WHEN-SVTV-CYCLEPHASELIST-P))
 (4 4 (:TYPE-PRESCRIPTION SV::SVTV-CYCLEPHASELIST-P))
 (2 2 (:REWRITE SV::SVTV-DATA$C->CYCLE-PHASES-OF-UPDATE))
 (2 2 (:REWRITE SV::SVTV-DATA$C->CYCLE-FSM-VALIDP-OF-UPDATE))
 (2 2 (:REWRITE SV::SVTV-CYCLEPHASELIST-P-WHEN-NOT-CONSP))
 )
(SV::CYCLE-PHASES-VALIDP-OF-SVTV-DATA-MAYBE-COMPUTE-CYCLE-FSM
 (22 7 (:REWRITE SV::SVTV-CYCLEPHASELIST-FIX-WHEN-SVTV-CYCLEPHASELIST-P))
 (10 10 (:TYPE-PRESCRIPTION SV::SVTV-CYCLEPHASELIST-P))
 (10 8 (:REWRITE SV::UPDATE-SVTV-DATA$C->CYCLE-PHASES-PRESERVES-OTHERS))
 (8 8 (:REWRITE-QUOTED-CONSTANT SV::SVTV-DATA$C-FIELD-FIX-UNDER-SVTV-DATA$C-FIELD-EQUIV))
 (5 5 (:REWRITE SV::SVTV-CYCLEPHASELIST-P-WHEN-NOT-CONSP))
 (2 2 (:REWRITE SV::SVTV-DATA$C->CYCLE-FSM-VALIDP-OF-UPDATE))
 )
