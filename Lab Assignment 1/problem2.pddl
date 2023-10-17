(define (problem cleaning3x3_2) (:domain office-robot)
(:objects of1 of2 of3 of4 of5 of6 of7 of8 of9 b1 b2 b3 b4)

(:init
     (robot-location of4)
        (box-location b1 of1) (box-location b2 of3)(box-location b3 of6)(box-location b4 of8)
        (dirty of2)(dirty of4)(dirty of9)
        (empty of2)(empty of4)(empty of5)(empty of7)(empty of9)
        (adjacent of1 of2)(adjacent of1 of4)
        (adjacent of2 of1)(adjacent of2 of5)(adjacent of2 of3)
        (adjacent of3 of2)(adjacent of3 of6)
        (adjacent of4 of1)(adjacent of4 of5)(adjacent of4 of7)
        (adjacent of5 of4)(adjacent of5 of8)(adjacent of5 of6)(adjacent of5 of2)
        (adjacent of6 of3)(adjacent of6 of5)(adjacent of6 of9)
        (adjacent of7 of4)(adjacent of7 of8)
        (adjacent of8 of7)(adjacent of8 of5)(adjacent of8 of9)
        (adjacent of9 of8)(adjacent of9 of6)
       
       
)
(:goal (and 
 (robot-location of3)
 (box-location b1 of9) (box-location b2 of7)(box-location b3 of1)(box-location b4 of3)
 (clean of2) (clean of4) (clean of9)
)
)

)
