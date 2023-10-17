(define (domain office-robot)
    (:requirements :strips :equality :adl)
    (:predicates
        (robot-location ?office)
        (box-location ?box_num ?office)
        (dirty ?office)
        (clean ?office)
        (empty ?office)
        (adjacent ?office1 ?office2)
    )
    (:action clean-office
        :parameters (?office)
        :precondition (and (robot-location ?office) (dirty ?office) (not (clean ?office)))
        :effect (and (not (dirty ?office)) (clean ?office))
    )
    (:action push 
       :parameters (?box ?office1 ?office2)
       :precondition (and (robot-location ?office1)(box-location ?box ?office1)(adjacent ?office1 ?office2)(empty ?office2)(not(empty ?office1)))
       :effect (and(not(robot-location ?office1)) (robot-location ?office2)(box-location ?box ?office2)(not (box-location ?box ?office1))(empty ?office1)(not(empty ?office2)))
    )
    (:action move
    :parameters (?office1 ?office2)
    :precondition (and (robot-location ?office1)(adjacent ?office1 ?office2))
    :effect (and (not(robot-location ?office1)) (robot-location ?office2))
    )

   
 
)
    
    
