(define (problem pb2)
    (:domain blocksworld)
    (:objects
        a b c d
    )
    (:init
        (on-table a)
        (on-table b)
        (on-table c)
        (on d c)
        (clear a)
        (clear b)
        (clear d)
        (arm-empty)
    )
    (:goal
        (and (on-table d) (on b d) (on a b) (on-table c))
    )
)