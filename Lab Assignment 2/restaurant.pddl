(define (domain restaurant-conditional-effects)
(:requirements :strips :equality  :adl :typing :conditional-effects :negative-preconditions )
(:types location physob customer) 


(:constants Robot - physob
            BTA - location
)

(:predicates 
 (at ?room - location ?x - object ) 
 (busy ?x -object ?plate - physob)
 (plate-full ?plate -physob)
 (served ?customer -customer)
 (adjacent ?room1  ?room2 -location)
 )

(:action hold
    :parameters (?room - location  ?plate - physob)
    :precondition (and(at ?room Robot)(at ?room ?plate)(not (= ?plate Robot)) (forall(?x - physob)(not(busy Robot ?x))) (forall (?holder -object)  (not (busy ?holder ?plate) )))                                                                 
    :effect (busy Robot ?plate)                                        
)

(:action fill
    :parameters (?plate - physob)
    :precondition (and(not (= ?plate Robot))(busy Robot ?plate)(at BTA Robot)(not(plate-full ?plate )) )
    :effect   (plate-full ?plate )                                     
)

(:action serve
    :parameters (?room - location ?customer - customer ?plate - physob)
    :precondition (and (not (served ?customer)) (at ?room Robot) (at ?room ?customer) (at ?room ?plate) (busy Robot ?plate) (plate-full ?plate))  
    :effect  (and (served ?customer) (not(busy Robot ?plate) ) (busy ?customer ?plate) )                                 
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
