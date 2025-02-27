(JAVA::PRIMITIVE-TYPE-PREDICATE
 (18 2 (:REWRITE JAVA::PRIMITIVE-TYPE-WHEN-NUMERIC-TYPEP))
 (6 2 (:REWRITE JAVA::NUMERIC-TYPE-WHEN-INTEGRAL-TYPEP))
 (6 2 (:REWRITE JAVA::NUMERIC-TYPE-WHEN-FLOATING-POINT-TYPEP))
 (4 4 (:TYPE-PRESCRIPTION JAVA::NUMERIC-TYPEP))
 (4 4 (:TYPE-PRESCRIPTION JAVA::INTEGRAL-TYPEP))
 (4 4 (:TYPE-PRESCRIPTION JAVA::FLOATING-POINT-TYPEP))
 (4 4 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE DEFAULT-SYMBOL-NAME))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(JAVA::SYMBOLP-OF-PRIMITIVE-TYPE-PREDICATE)
(JAVA::PRIMITIVE-TYPE-CONSTRUCTOR
 (18 2 (:REWRITE JAVA::PRIMITIVE-TYPE-WHEN-NUMERIC-TYPEP))
 (6 2 (:REWRITE JAVA::NUMERIC-TYPE-WHEN-INTEGRAL-TYPEP))
 (6 2 (:REWRITE JAVA::NUMERIC-TYPE-WHEN-FLOATING-POINT-TYPEP))
 (4 4 (:TYPE-PRESCRIPTION JAVA::NUMERIC-TYPEP))
 (4 4 (:TYPE-PRESCRIPTION JAVA::INTEGRAL-TYPEP))
 (4 4 (:TYPE-PRESCRIPTION JAVA::FLOATING-POINT-TYPEP))
 (4 4 (:REWRITE DEFAULT-CAR))
 (2 1 (:REWRITE DEFAULT-SYMBOL-NAME))
 (1 1 (:REWRITE DEFAULT-CDR))
 )
(JAVA::SYMBOLP-OF-PRIMITIVE-TYPE-CONSTRUCTOR)
(JAVA::PRIMITIVE-TYPE-DESTRUCTOR)
(JAVA::SYMBOLP-OF-PRIMITIVE-TYPE-DESTRUCTOR)
(JAVA::DEF-PRIMITIVE-UNARY-FN)
(JAVA::DEF-PRIMITIVE-BINARY-FN
 (84 12 (:REWRITE JAVA::PRIMITIVE-TYPE-WHEN-NUMERIC-TYPEP))
 (27 9 (:REWRITE JAVA::NUMERIC-TYPE-WHEN-INTEGRAL-TYPEP))
 (27 9 (:REWRITE JAVA::NUMERIC-TYPE-WHEN-FLOATING-POINT-TYPEP))
 (18 18 (:TYPE-PRESCRIPTION JAVA::NUMERIC-TYPEP))
 (18 18 (:TYPE-PRESCRIPTION JAVA::INTEGRAL-TYPEP))
 (18 18 (:TYPE-PRESCRIPTION JAVA::FLOATING-POINT-TYPEP))
 (16 2 (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
 (14 1 (:DEFINITION SYMBOL-LISTP))
 (10 1 (:DEFINITION TRUE-LISTP))
 (5 1 (:REWRITE SYMBOLP-OF-CAR-WHEN-SYMBOL-LISTP))
 (5 1 (:REWRITE SYMBOL-LISTP-OF-CDR-WHEN-SYMBOL-LISTP))
 (4 4 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
 (4 4 (:REWRITE SYMBOL-LISTP-WHEN-NOT-CONSP))
 (4 2 (:REWRITE OMAP::SETP-WHEN-MAPP))
 (4 2 (:REWRITE SET::NONEMPTY-MEANS-SET))
 (2 2 (:TYPE-PRESCRIPTION OMAP::MAPP))
 (2 2 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
 (2 2 (:REWRITE SET::IN-SET))
 (2 2 (:REWRITE DEFAULT-CDR))
 (1 1 (:REWRITE DEFAULT-CAR))
 )
