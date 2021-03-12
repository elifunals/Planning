(define (domain seat-arrangement)
  (:predicates 
  (empty ?seat)
  (friend ?f1 ?f2)
  (can_sit ?f3 ?f4)
  (found ?new1)
  (seated ?f1)
  )
  (:action SIT
     :parameters (?s ?a ?b)
     :precondition (and (empty ?s) (can_sit ?a ?b) (not (seated ?a)) (not (seated ?b)))
     :effect (and (not (empty ?s)) (seated ?a) (seated ?b))
     )
    (:action LOOKFOR
     :parameters (?e)
     :precondition (empty ?e)
     :effect  (found ?e)
    )
     (:action SEARCH
     :parameters (?f ?g)
     :precondition (friend ?f ?g)
     :effect  (can_sit ?f ?g)
    )
  
)