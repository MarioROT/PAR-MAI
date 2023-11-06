; N=4 
; all positions cost 1
; Ghost trajectory is: (3, 3), (2, 3), (2, 2) ; 3,3 is lower- right board position. In the representation, it is i4, i4. 
(define (problem static1)
    (:domain ghostandrobot)
    (:objects
        i1 i2 i3 i4 - gridindex
        R - robot
        G - ghost
        t1 t2 t3 - timestep
    )
    (:init
        (just_less i1 i2)(just_less i2 i3)(just_less i3 i4)
        (just_before t1 t2)(just_before t2 t3)
        (currentstep t1)
        (ghostpos t2 i3 i4)(ghostpos t3 i3 i3)
        (at R i1 i1)
        (at G i4 i4)
        (= (time) 1)
        (= (cost) 0)
        (= (positioncost i1 i1) 1)
        (= (positioncost i1 i2) 1)
        (= (positioncost i1 i3) 1)
        (= (positioncost i1 i4) 1)
        (= (positioncost i2 i1) 1)
        (= (positioncost i2 i2) 1)
        (= (positioncost i2 i3) 1)
        (= (positioncost i2 i4) 1)
        (= (positioncost i3 i1) 1)
        (= (positioncost i3 i2) 1)
        (= (positioncost i3 i3) 1)
        (= (positioncost i3 i4) 1)
        (= (positioncost i4 i1) 1)
        (= (positioncost i4 i2) 1)
        (= (positioncost i4 i3) 1)
        (= (positioncost i4 i4) 1)
    )
    (:goal
        (end))
    (:metric minimize
        (cost)))