(define (problem problem1) (:domain restaurant-check )


(:objects plate -physob
          custom  -customer
          PUA PMA PLA AUA AMA ALA  - location)  
(:init
(at BTA plate)
(at BTA Robot)
(at PMA custom)
(adjacent BTA AUA)(adjacent AUA AMA)(adjacent ALA AMA)
(adjacent ALA PLA)(adjacent PMA PLA)(adjacent PMA PUA)(adjacent AUA PUA)
)

(:goal (and (served custom)  
       (at BTA Robot)
       )
)
)
