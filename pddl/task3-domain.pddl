(define (domain birthday-dinner)
(:predicates 
(clean ?c)
(dinner ?d)
(quiet ?q)
(present ?p)
(garbage ?g))
 (:action cook
    :parameters (?a)
    :precondition (and (clean ?a))
    :effect (and (dinner ?a)))
 (:action wrap
    :parameters (?b)
    :precondition (and (quiet ?b))
    :effect (and (present ?b)))
 (:action throw
    :parameters (?d)
    :precondition (and (garbage ?d))
    :effect (and (not (garbage ?d)) (not (quiet ?d)))
    )
 (:action tidy
    :parameters (?c)
    :precondition (and (not(clean ?c)))
    :effect (and (not (quiet ?c)) (clean ?c))
 )
)