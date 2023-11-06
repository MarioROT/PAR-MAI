(define (problem easy_less_1) 
    (:domain lunar) 
    (:objects red yellow orange purple green - spacecraft 
              n1 n2 n3 n4 n5 - number) 
              
    (:init 
        (less n1 n2) 
        (less n1 n3) 
        (less n1 n4) 
        (less n1 n5) 
        (less n2 n3) 
        (less n2 n4) 
        (less n2 n5) 
        (less n3 n4) 
        (less n3 n5) 
        (less n4 n5) 
        
        (one-less n1 n2) 
        (one-less n2 n3) 
        (one-less n3 n4) 
        (one-less n4 n5) 
        
        (pos red n3 n1) 
        (pos yellow n3 n4) 
        (pos orange n2 n2) 
        (pos purple n1 n1) 
        (pos green n5 n5) 
    ) 
    
    (:goal (and (pos red n3 n3))) 
)