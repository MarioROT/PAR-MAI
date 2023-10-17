(define (problem cleaning2x2) (:domain office-robot)
(:objects of1 of2 of3 of4 b1 b2 b3)

(:init
     (robot-location of2)
        (box-location b1 of1)
        (box-location b2 of2)
        (box-location b3 of3)
        (dirty of1)
        (empty of4)
        (adjacent of1 of2)
        (adjacent of1 of3)
        (adjacent of2 of4)
        (adjacent of3 of4)
        (adjacent of2 of1)
        (adjacent of3 of1)
        (adjacent of4 of2)
        (adjacent of4 of3)

        
)

(:goal (and 
 (robot-location of1)
 (box-location b1 of4)
 (box-location b2 of3)
 (box-location b3 of1)
 (clean of1) 

)
)

)
