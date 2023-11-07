(define (problem cleaning4x4_2) (:domain office-robot)
(:objects of1 of2 of3 of4 of5 of6 of7 of8 of9 of10 of11 of12 of13 of14 of15 of16 b1 b2 b3)

(:init
        (robot-location of2)
        (box-location b1 of1) (box-location b2 of10)(box-location b3 of15)
        (dirty of1)(dirty of3)(dirty of5)(dirty of7)(dirty of9)(dirty of11)(dirty of13)(dirty of15)
        (empty of2)(empty of3)(empty of4)(empty of5)(empty of6)(empty of7)(empty of8)(empty of9)(empty of11)(empty of12)(empty of13)(empty of14)(empty of16)
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
 (robot-location of16)
 (box-location b1 of5) (box-location b2 of1)(box-location b3 of7)
 (clean of1) 
 (clean of3) 
 (clean of5) 
 (clean of7) 
 (clean of9) 
 (clean of11) 
 (clean of13) 
 (clean of15) 
)
)

)

