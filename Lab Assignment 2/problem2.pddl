(define (problem problem2) (:domain restaurant-conditional-effects )


(:objects plate1 plate2 plate3 -physob
          custom1 custom2 custom3      -customer
          PUA PMA PLA AUA AMA ALA  - location)  
(:init
(at BTA plate1)(at BTA plate2)(at BTA plate3)
(at PLA Robot)
(at PMA custom1)(at PUA custom2)(at AUA custom3)
(adjacent BTA AUA)(adjacent AUA AMA)(adjacent ALA AMA)
(adjacent ALA PLA)(adjacent PMA PLA)(adjacent PMA PUA)(adjacent AUA PUA)
)

(:goal (and (served custom1) (served custom2) (served custom3)
       )
)
)
