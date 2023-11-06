(define (problem easy_middle_1)
    (:domain lunar-middle)
	(:objects
		red yellow orange purple green - spacecraft
		n1 n2 n3 n4 n5 - position)

	(:init
		(middle-of n1 n2 n3)
		(middle-of n1 n2 n4)
		(middle-of n1 n2 n5)
		(middle-of n1 n3 n4)
		(middle-of n1 n3 n5)
		(middle-of n1 n4 n5)
		(middle-of n2 n3 n4)
		(middle-of n2 n3 n5)
		(middle-of n2 n4 n5)
		(middle-of n3 n4 n5)

		(next-of n1 n2)
		(next-of n2 n3)
		(next-of n3 n4)
		(next-of n4 n5)
		
        (pos red n1 n5)
        (pos yellow n4 n5)
        (pos orange n2 n1)
        (pos purple n2 n4)
        (pos green n4 n2)
    )


    (:goal 
        (and
            (pos red n3 n3)
        )
    )
)
; solution: red up


