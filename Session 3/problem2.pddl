(define (problem wumpus-b-1)
    (:domain wumpus-b)
    (:objects
        sq-1-1 sq-1-2 sq-1-3 
        sq-2-1 sq-2-2 sq-2-3 
        the-gold 
        the-arrow 
        agent 
        wumpus
    )
    (:init
        (adj sq-1-1 sq-1-2)
        (adj sq-1-2 sq-1-1)
        (adj sq-1-2 sq-1-3)
        (adj sq-1-3 sq-1-2)
        (adj sq-2-1 sq-2-2)
        (adj sq-2-2 sq-2-1)
        (adj sq-2-2 sq-2-3)
        (adj sq-2-3 sq-2-2)
        (adj sq-1-1 sq-2-1)
        (adj sq-2-1 sq-1-1)
        (adj sq-1-2 sq-2-2)
        (adj sq-2-2 sq-1-2)
        (adj sq-1-3 sq-2-3)
        (adj sq-2-3 sq-1-3)

        (pit sq-1-2)
        
        (at the-gold sq-1-3)
        (is-gold the-gold)
        (takeable the-gold)
        (at agent sq-1-1)
        (alive agent)
        (have agent the-arrow)
        (is-arrow the-arrow)
        (takeable the-arrow)
        (at wumpus sq-2-3)
        (alive wumpus)
    )
    (:goal
        (and (have agent the-gold) (at agent sq-1-1))
    )
)