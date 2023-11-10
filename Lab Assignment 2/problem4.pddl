(define (problem problem4) (:domain restaurant-conditional-effects )


(:objects plate1 plate2 plate3 plate4 plate5 plate6 -physob
          custom1 custom2 custom3 custom4 custom5 custom6       -customer
          PUA PMA PLA AUA AMA ALA  - location)  
(:init
(at BTA plate1)(at BTA plate2)(at BTA plate3)
(at PLA plate4)(at PUA plate5)(at BTA plate6)
(at BTA Robot)
(at PMA custom1)(at PUA custom2)(at PUA custom3)
(at ALA custom4)(at ALA custom5)(at ALA custom6)
(adjacent BTA AUA)(adjacent AUA AMA)(adjacent ALA AMA)
(adjacent ALA PLA)(adjacent PMA PLA)(adjacent PMA PUA)(adjacent AUA PUA)
)

(:goal (and (served custom1) (served custom2) (served custom3)
        (served custom4) (served custom5) (served custom6)
       )
)
)
