(define (domain ghostandrobot) 
(:requirements :strips :adl :typing :fluents) 
(:types gridindex - object entity - object robot ghost - entity timestep - object ) 
; Two gridindex identify a position in the board. 
; Robot and ghost are the entities that move through positions 
; timestep is an identificator for the sequence of movements of the ghost 
(:predicates (end); This predicate becomes true through an action that checks ghost and player are in the same position. 
(just_less ?i - gridindex ?j - gridindex) ; Example: just_less 1 2. just_less 1 4 is false. 
(at ?e - entity ?i - gridindex ?j - gridindex) ; Entity e is at coord inates i, j ; The two following predicates tell whether I can move the entities BEFORE advancing the time. 
(movedghost) 
(movedrobot) ; These are for keeping the ghost in its route 
(just_before ?i - timestep ?j - timestep) ; Example: just_before 1 2. just_before 1 4 is false. Good for time manipulation 
(ghostpos ?t - timestep ?i - gridindex ?j - gridindex); This, together with the previous predicate, tells us what the sequence of movements is. 
(currentstep ?t - timestep) ) 

(:functions 
    (time) 
    (cost) 
    (positioncost ?i - gridindex ?j - gridindex) ; Moving or staying in p osition (i, j)'s cost. 
) 
    
    (:action advancetime 
        :parameters () 
        :precondition (movedrobot) ; Required to make it pay, at least via a movestay 
        :effect (and (not (movedghost)) 
                     (not (movedrobot)) 
                     (increase (time) 1) ) ) 
                               
    (:action movestay 
        :parameters (?r - robot ?i - gridindex ?j - gridindex) 
        :precondition (and (not (movedrobot)) 
                           (at ?r ?i ?j) ) 
        :effect (and (movedrobot) 
                     (increase (cost) (positioncost ?i ?j))))

    (:action moveup 
        :parameters (?r - robot ?i - gridindex ?j - gridindex ?i2 - gridindex ) 
        :precondition (and (not (movedrobot)) 
                           (at ?r ?i ?j) 
                           (just_less ?i2 ?i) ) 
        :effect (and (movedrobot) 
                     (not (at ?r ?i ?j)) 
                     (at ?r ?i2 ?j) 
                     (increase (cost) (positioncost ?i2 ?j)))) 
    
    (:action movedown 
        :parameters (?r - robot ?i - gridindex ?j - gridindex ?i2 - gridindex ) 
        :precondition (and (not (movedrobot)) 
                           (at ?r ?i ?j) 
                           (just_less ?i ?i2) ) 
        :effect (and (movedrobot) 
                     (not (at ?r ?i ?j)) 
                     (at ?r ?i2 ?j) 
                     (increase (cost) (positioncost ?i2 ?j)) ) ) 
                     
    (:action moveleft 
        :parameters (?r - robot ?i - gridindex ?j - gridindex ?j2 - gridindex) 
        :precondition (and (not (movedrobot)) 
                           (at ?r ?i ?j) 
                           (just_less ?j2 ?j)) 
        :effect (and (movedrobot) 
                     (not (at ?r ?i ?j)) 
                     (at ?r ?i ?j2) 
                     (increase (cost) (positioncost ?i ?j2))))

    (:action moveright
        :parameters (?r - robot ?i - gridindex ?j - gridindex ?j2 - gridindex ) 
        :precondition (and (not (movedrobot)) 
                           (at ?r ?i ?j) 
                           (just_less ?j ?j2) ) 
        :effect (and (movedrobot) 
                     (not (at ?r ?i ?j)) 
                     (at ?r ?i ?j2) 
                     (increase (cost) (positioncost ?i ?j2)) ) ) 
                     
    (:action moveghost 
        :parameters (?g - ghost ?i - gridindex ?j - gridindex ?i2 - gridindex ?j2 - gridindex ?t -timestep ?t2 -timestep) 
        :precondition (and (not (movedghost)) 
                           (at ?g ?i ?j) 
                           (currentstep ?t) 
                           (just_before ?t ?t2) 
                           (ghostpos ?t2 ?i2 ?j2) ) 
        :effect (and (movedghost) 
                     (not (at ?g ?i ?j)) 
                     (at ?g ?i2 ?j2) 
                     (not (currentstep ?t)) 
                     (currentstep ?t2))) 
    
    (:action end 
        :parameters (?r - robot ?g - ghost ?i - gridindex ?j - gridindex) 
        :precondition (and (at ?r ?i ?j) 
                           (at ?g ?i ?j)) 
        :effect (end))
)