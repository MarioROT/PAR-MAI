(define (problem cleaning4x4_1) (:domain office-robot)
(:objects of1 of2 of3 of4 of5 of6 of7 of8 of9 of10 of11 of12 of13 of14 of15 of16 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15)

(:init
        (robot-location of4)
        (box-location b1 of1) (box-location b2 of16)(box-location b3 of15)(box-location b4 of10)(box-location b5 of2)(box-location b6 of13)(box-location b7 of8)(box-location b8 of7)
        (box-location b9 of5) (box-location b10 of11)(box-location b11 of3)(box-location b12 of9)(box-location b13 of12)(box-location b14 of14)(box-location b15 of6)
        (dirty of6)(dirty of7)(dirty of10)(dirty of11)
        (empty of4)
        (adjacent of1 of2)(adjacent of1 of5)
        (adjacent of2 of1)(adjacent of2 of3)(adjacent of2 of6)
        (adjacent of3 of2)(adjacent of3 of4)(adjacent of3 of7)
        (adjacent of4 of3)(adjacent of4 of8)
        (adjacent of5 of6)(adjacent of5 of9)(adjacent of5 of1)
        (adjacent of6 of5)(adjacent of6 of7)(adjacent of6 of10)(adjacent of6 of2)
        (adjacent of7 of6)(adjacent of7 of8)(adjacent of7 of11)(adjacent of7 of3)
        (adjacent of8 of7)(adjacent of8 of12)(adjacent of8 of4)
        (adjacent of9 of10)(adjacent of9 of13)(adjacent of9 of5)
        (adjacent of10 of9)(adjacent of10 of11)(adjacent of10 of14)(adjacent of10 of6)
        (adjacent of11 of10)(adjacent of11 of12)(adjacent of11 of15)(adjacent of11 of7)
        (adjacent of13 of9)(adjacent of13 of14)
        (adjacent of14 of13)(adjacent of14 of15)(adjacent of14 of10)
        (adjacent of15 of14)(adjacent of15 of16)(adjacent of15 of11)
        (adjacent of16 of15)(adjacent of16 of12)
        
)

(:goal (and 
 (empty of13)
 (clean of6) 
 (clean of7) 
 (clean of10) 
 (clean of11) 
)
)

)
