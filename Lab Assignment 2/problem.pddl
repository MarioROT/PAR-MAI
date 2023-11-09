(define (problem deliverable2) (:domain restaurant-check )


(:objects plate1 plate2 plate3 -physob
          custom1 custom3      -customer
          PUA PMA PLA AUA AMA ALA  - location)  
(:init
(at PLA plate1)(at PUA plate2);(at BTA plate3)
(at PLA Robot)
(at PMA custom1)(at AUA custom3)
(adjacent BTA AUA)(adjacent AUA AMA)(adjacent ALA AMA)
(adjacent ALA PLA)(adjacent PMA PLA)(adjacent PMA PUA)(adjacent AUA PUA)
)

(:goal (and (served custom1)
       (served custom3))
)
)