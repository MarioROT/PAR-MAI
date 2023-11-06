(define (problem wumpus-c-1) 
    (:domain wumpus-c) 
    (:objects sq-1-1 sq-1-2 sq-1-3 
              sq-2-1 sq-2-2 sq-2-3 
              the-gold the-arrow 
              agent wumpus) 
    (:init (adj sq-1-1 sq-1-2) (adj sq-1-2 sq-1-1) 
           (adj sq-1-2 sq-1-3) (adj sq-1-3 sq-1-2) 
           (adj sq-2-1 sq-2-2) (adj sq-2-2 sq-2-1) 
           (adj sq-2-2 sq-2-3) (adj sq-2-3 sq-2-2) 
           (adj sq-1-1 sq-2-1) (adj sq-2-1 sq-1-1) 
           (adj sq-1-2 sq-2-2) (adj sq-2-2 sq-1-2) 
           (adj sq-1-3 sq-2-3) (adj sq-2-3 sq-1-3) 
           
           (pit sq-1-2) 
           (is-gold the-gold) 
           (at the-gold sq-1-3) 
           (is-agent agent) 
           (at agent sq-1-1) 
           (is-arrow the-arrow) 
           (have agent the-arrow) 
           (is-wumpus wumpus) 
           (at wumpus sq-2-3) 
           (wumpus-in sq-2-3)) 
           
    (:goal (and (have agent the-gold) (at agent sq-1-1))) 
)