(define (problem cleaning3x3_1) (:domain office-robot)
(:objects of1 of2 of3 of4 of5 of6 of7 of8 of9 A B C)

(:init
        (robot-location of7)
        (box-location A of1)(box-location B of6)(box-location C of9)
        (empty of2) (empty of3) (empty of4) (empty of5) (empty of7)(empty of8)
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
(robot-location of4)
(box-location A of2)(box-location B of3)(box-location C of7) 
;(empty of5) ;These predicate was added because without it, the final position of the 
;box A was he of5 even when it was explicitly declared as of2 in the goal
)
)

)
