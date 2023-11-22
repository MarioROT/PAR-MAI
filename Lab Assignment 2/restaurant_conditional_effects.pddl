(define (domain restaurant-conditional-effects)
(:requirements :strips   :adl :typing :conditional-effects :negative-preconditions)
(:types location physob customer) ;when no creating a customer type, a customer could be served in the plate to fill it


(:constants Robot - physob
            BTA - location
)

(:predicates 
 (at ?room - location ?x - object ) ;object can inherit the characteristics of all types
 (busy ?x -object ?plate - physob)
 (plate-full ?plate -physob)
 (served ?customer -customer)
 (adjacent ?room1  ?room2 -location)
 )

(:action hold
    :parameters (?room - location  ?plate - physob)
    :precondition (not (= ?plate Robot))
    :effect (when (and  (not (busy Robot ?plate))(at ?room Robot)(at ?room ?plate)(forall (?holder -object)  (not (busy ?holder ?plate) ))(forall (?x -physob)  (not (busy Robot ?x) )) )
                      (busy Robot ?plate))                                        
)

(:action fill
    :parameters (?plate - physob)
    :precondition (not (= ?plate Robot))
    :effect (when (and  (busy Robot ?plate)(at BTA Robot)(not(plate-full ?plate )))
                       (plate-full ?plate ))                                        
)

(:action serve
        :parameters (?room - location ?customer -customer ?plate - physob)
        :precondition (not (served ?customer))
        :effect (when (and (at ?room Robot) (at ?room ?customer) (at ?room ?plate)  (plate-full ?plate) (busy Robot ?plate)  )
                      (and (served ?customer) (not(busy Robot ?plate) )  (busy ?customer ?plate))
                )  
)
(:action move
  :parameters (?room1 ?room2 - location)
  :precondition (and (at ?room1 Robot) (not (= ?room1 ?room2))(or(adjacent ?room1 ?room2) (adjacent ?room2 ?room1) ))
  :effect (and (at ?room2 Robot) (not (at ?room1 Robot)) (forall (?plate - physob) 
                                                                        (when (busy Robot ?plate) 
                                                                         (and (at ?room2 ?plate) (not (at ?room1 ?plate) ) ) ) )                             
)

)
)