(define (domain lunar)
    (:requirements :strips :typing)
    (:types spacecraft - object
            number - object
    )
    (:predicates
        (less ?n1 - number ?n2 - number)
        (one-less ?n1 - number ?n2 - number)
        (pos ?s - spacecraft ?x - number ?y - number)
    )

    (:action move_up
        :parameters (?s1 ?s2 - spacecraft ?sx ?s1y ?s2y ?new_s1y - number)
        :precondition (and (pos ?s1 ?sx ?s1y) 
                        (pos ?s2 ?sx ?s2y) 
                        (one-less ?new_s1y ?s2y) 
                        (less ?s1y ?s2y) 
                        (forall (?s - spacecraft ?y - number)
                                (not (and (pos ?s ?sx ?y) 
                                          (less ?y ?s2y) 
                                          (less ?s1y ?y)))))
        :effect (and (not (pos ?s1 ?sx ?s1y)) 
                     (pos ?s1 ?sx ?new_s1y))
    )
    (:action move_down
        :parameters (?s1 ?s2 - spacecraft ?sx ?s1y ?s2y ?new_s1y - number)
        :precondition (and (pos ?s1 ?sx ?s1y) 
                           (pos ?s2 ?sx ?s2y) 
                           (one-less ?s2y ?new_s1y) 
                           (less ?s2y ?s1y) 
                           (forall (?s - spacecraft ?y - number)
                                   (not (and (pos ?s ?sx ?y) 
                                             (less ?y ?s1y) 
                                             (less ?s2y ?y)))))
        :effect (and (not (pos ?s1 ?sx ?s1y)) 
                     (pos ?s1 ?sx ?new_s1y))
    )
    (:action move_left
        :parameters (?s1 ?s2 - spacecraft ?sy ?s1x ?s2x ?new_s1x - number)
        :precondition (and (pos ?s1 ?s1x ?sy) 
                           (pos ?s2 ?s2x ?sy) 
                           (one-less ?s2x ?new_s1x) 
                           (less ?s2x ?s1x) 
                           (forall (?s - spacecraft ?x - number)
                                   (not (and (pos ?s ?x ?sy) 
                                             (less ?s2x ?x) 
                                             (less ?x ?s1x)))))
        :effect (and (not (pos ?s1 ?s1x ?sy)) 
                     (pos ?s1 ?new_s1x ?sy)))
    (:action move_right
        :parameters (?s1 ?s2 - spacecraft ?sy ?s1x ?s2x ?new_s1x - number)
        :precondition (and (pos ?s1 ?s1x ?sy) 
                           (pos ?s2 ?s2x ?sy) 
                           (one-less ?new_s1x ?s2x) 
                           (less ?s1x ?s2x) 
                           (forall (?s - spacecraft ?x - number)
                                   (not (and (pos ?s ?x ?sy) 
                                             (less ?x ?s2x) 
                                             (less ?s1x ?x)))))
        :effect (and (not (pos ?s1 ?s1x ?sy)) 
                     (pos ?s1 ?new_s1x ?sy)))
)