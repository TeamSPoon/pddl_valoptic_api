(define (domain zeon)
  (:predicates
    (aircraft ?x0)
    (person ?x0)
    (city ?x0)
    (flevel ?x0)
    (at ?x0 ?x1)
    (in ?x0 ?x1)
    (fuel_level ?x0 ?x1)
    (next ?x0 ?x1)
    (autstate_1_2 ?x0)
    (autstate_1_1 ?x0)
    (autstate_1_3 ?x0)
    (prev_autstate_1_2 ?x0)
    (prev_autstate_1_1 ?x0)
    (prev_autstate_1_3 ?x0)
    (autstate_2_3 ?x0 ?x1)
    (autstate_2_1 ?x0 ?x1)
    (autstate_2_4 ?x0 ?x1)
    (autstate_2_2 ?x0 ?x1)
    (prev_autstate_2_3 ?x0 ?x1)
    (prev_autstate_2_1 ?x0 ?x1)
    (prev_autstate_2_4 ?x0 ?x1)
    (prev_autstate_2_2 ?x0 ?x1)
    (autstate_3_2)
    (autstate_3_1)
    (prev_autstate_3_2)
    (prev_autstate_3_1)
    (autstate_4_2)
    (autstate_4_1)
    (prev_autstate_4_2)
    (prev_autstate_4_1)
    (aut_in_final_1 ?x0)
    (aut_in_final_2 ?x0 ?x1)
    (aut_in_final_3)
    (aut_in_final_4)
  )
  (:action board
    :parameters (?x0 ?x1 ?x2)
    :precondition 
      (and
        (person ?x0)
        (and
          (aircraft ?x1)
          (and
            (city ?x2)
            (and
              (at ?x0 ?x2)
              (at ?x1 ?x2)))))
    :effect
      (and
        (in ?x0 ?x1)
        (forall (?x3)
          (when
            (autstate_1_2 ?x3)
            (prev_autstate_1_2 ?x3)))

        (forall (?x3)
          (when
            (autstate_1_1 ?x3)
            (prev_autstate_1_1 ?x3)))

        (forall (?x3)
          (when
            (autstate_1_3 ?x3)
            (prev_autstate_1_3 ?x3)))

        (forall (?x3 ?x4)
          (when
            (autstate_2_3 ?x3 ?x4)
            (prev_autstate_2_3 ?x3 ?x4)))

        (forall (?x3 ?x4)
          (when
            (autstate_2_1 ?x3 ?x4)
            (prev_autstate_2_1 ?x3 ?x4)))

        (forall (?x3 ?x4)
          (when
            (autstate_2_4 ?x3 ?x4)
            (prev_autstate_2_4 ?x3 ?x4)))

        (forall (?x3 ?x4)
          (when
            (autstate_2_2 ?x3 ?x4)
            (prev_autstate_2_2 ?x3 ?x4)))

        (when
          (autstate_3_2)
          (prev_autstate_3_2))
        (when
          (autstate_3_1)
          (prev_autstate_3_1))
        (when
          (autstate_4_2)
          (prev_autstate_4_2))
        (when
          (autstate_4_1)
          (prev_autstate_4_1))
        (not 
          (at ?x0 ?x2))
        (forall (?x3)
          (when
            (not 
              (autstate_1_2 ?x3))
            (not 
              (prev_autstate_1_2 ?x3))))

        (forall (?x3)
          (when
            (not 
              (autstate_1_1 ?x3))
            (not 
              (prev_autstate_1_1 ?x3))))

        (forall (?x3)
          (when
            (not 
              (autstate_1_3 ?x3))
            (not 
              (prev_autstate_1_3 ?x3))))

        (forall (?x3 ?x4)
          (when
            (not 
              (autstate_2_3 ?x3 ?x4))
            (not 
              (prev_autstate_2_3 ?x3 ?x4))))

        (forall (?x3 ?x4)
          (when
            (not 
              (autstate_2_1 ?x3 ?x4))
            (not 
              (prev_autstate_2_1 ?x3 ?x4))))

        (forall (?x3 ?x4)
          (when
            (not 
              (autstate_2_4 ?x3 ?x4))
            (not 
              (prev_autstate_2_4 ?x3 ?x4))))

        (forall (?x3 ?x4)
          (when
            (not 
              (autstate_2_2 ?x3 ?x4))
            (not 
              (prev_autstate_2_2 ?x3 ?x4))))

        (when
          (not 
            (autstate_3_2))
          (not 
            (prev_autstate_3_2)))
        (when
          (not 
            (autstate_3_1))
          (not 
            (prev_autstate_3_1)))
        (when
          (not 
            (autstate_4_2))
          (not 
            (prev_autstate_4_2)))
        (when
          (not 
            (autstate_4_1))
          (not 
            (prev_autstate_4_1)))
      )
    )
  (:action debark
    :parameters (?x0 ?x1 ?x2)
    :precondition 
      (and
        (person ?x0)
        (and
          (aircraft ?x1)
          (and
            (city ?x2)
            (and
              (in ?x0 ?x1)
              (at ?x1 ?x2)))))
    :effect
      (and
        (at ?x0 ?x2)
        (forall (?x3)
          (when
            (autstate_1_2 ?x3)
            (prev_autstate_1_2 ?x3)))

        (forall (?x3)
          (when
            (autstate_1_1 ?x3)
            (prev_autstate_1_1 ?x3)))

        (forall (?x3)
          (when
            (autstate_1_3 ?x3)
            (prev_autstate_1_3 ?x3)))

        (forall (?x3 ?x4)
          (when
            (autstate_2_3 ?x3 ?x4)
            (prev_autstate_2_3 ?x3 ?x4)))

        (forall (?x3 ?x4)
          (when
            (autstate_2_1 ?x3 ?x4)
            (prev_autstate_2_1 ?x3 ?x4)))

        (forall (?x3 ?x4)
          (when
            (autstate_2_4 ?x3 ?x4)
            (prev_autstate_2_4 ?x3 ?x4)))

        (forall (?x3 ?x4)
          (when
            (autstate_2_2 ?x3 ?x4)
            (prev_autstate_2_2 ?x3 ?x4)))

        (when
          (autstate_3_2)
          (prev_autstate_3_2))
        (when
          (autstate_3_1)
          (prev_autstate_3_1))
        (when
          (autstate_4_2)
          (prev_autstate_4_2))
        (when
          (autstate_4_1)
          (prev_autstate_4_1))
        (not 
          (in ?x0 ?x1))
        (forall (?x3)
          (when
            (not 
              (autstate_1_2 ?x3))
            (not 
              (prev_autstate_1_2 ?x3))))

        (forall (?x3)
          (when
            (not 
              (autstate_1_1 ?x3))
            (not 
              (prev_autstate_1_1 ?x3))))

        (forall (?x3)
          (when
            (not 
              (autstate_1_3 ?x3))
            (not 
              (prev_autstate_1_3 ?x3))))

        (forall (?x3 ?x4)
          (when
            (not 
              (autstate_2_3 ?x3 ?x4))
            (not 
              (prev_autstate_2_3 ?x3 ?x4))))

        (forall (?x3 ?x4)
          (when
            (not 
              (autstate_2_1 ?x3 ?x4))
            (not 
              (prev_autstate_2_1 ?x3 ?x4))))

        (forall (?x3 ?x4)
          (when
            (not 
              (autstate_2_4 ?x3 ?x4))
            (not 
              (prev_autstate_2_4 ?x3 ?x4))))

        (forall (?x3 ?x4)
          (when
            (not 
              (autstate_2_2 ?x3 ?x4))
            (not 
              (prev_autstate_2_2 ?x3 ?x4))))

        (when
          (not 
            (autstate_3_2))
          (not 
            (prev_autstate_3_2)))
        (when
          (not 
            (autstate_3_1))
          (not 
            (prev_autstate_3_1)))
        (when
          (not 
            (autstate_4_2))
          (not 
            (prev_autstate_4_2)))
        (when
          (not 
            (autstate_4_1))
          (not 
            (prev_autstate_4_1)))
      )
    )
  (:action fly
    :parameters (?x0 ?x1 ?x2 ?x3 ?x4)
    :precondition 
      (and
        (aircraft ?x0)
        (and
          (city ?x2)
          (and
            (at ?x0 ?x1)
            (and
              (fuel_level ?x0 ?x3)
              (next ?x4 ?x3)))))
    :effect
      (and
        (at ?x0 ?x2)
        (fuel_level ?x0 ?x4)
        (forall (?x5)
          (when
            (autstate_1_2 ?x5)
            (prev_autstate_1_2 ?x5)))

        (forall (?x5)
          (when
            (autstate_1_1 ?x5)
            (prev_autstate_1_1 ?x5)))

        (forall (?x5)
          (when
            (autstate_1_3 ?x5)
            (prev_autstate_1_3 ?x5)))

        (forall (?x5 ?x6)
          (when
            (autstate_2_3 ?x5 ?x6)
            (prev_autstate_2_3 ?x5 ?x6)))

        (forall (?x5 ?x6)
          (when
            (autstate_2_1 ?x5 ?x6)
            (prev_autstate_2_1 ?x5 ?x6)))

        (forall (?x5 ?x6)
          (when
            (autstate_2_4 ?x5 ?x6)
            (prev_autstate_2_4 ?x5 ?x6)))

        (forall (?x5 ?x6)
          (when
            (autstate_2_2 ?x5 ?x6)
            (prev_autstate_2_2 ?x5 ?x6)))

        (when
          (autstate_3_2)
          (prev_autstate_3_2))
        (when
          (autstate_3_1)
          (prev_autstate_3_1))
        (when
          (autstate_4_2)
          (prev_autstate_4_2))
        (when
          (autstate_4_1)
          (prev_autstate_4_1))
        (not 
          (fuel_level ?x0 ?x3))
        (not 
          (at ?x0 ?x1))
        (forall (?x5)
          (when
            (not 
              (autstate_1_2 ?x5))
            (not 
              (prev_autstate_1_2 ?x5))))

        (forall (?x5)
          (when
            (not 
              (autstate_1_1 ?x5))
            (not 
              (prev_autstate_1_1 ?x5))))

        (forall (?x5)
          (when
            (not 
              (autstate_1_3 ?x5))
            (not 
              (prev_autstate_1_3 ?x5))))

        (forall (?x5 ?x6)
          (when
            (not 
              (autstate_2_3 ?x5 ?x6))
            (not 
              (prev_autstate_2_3 ?x5 ?x6))))

        (forall (?x5 ?x6)
          (when
            (not 
              (autstate_2_1 ?x5 ?x6))
            (not 
              (prev_autstate_2_1 ?x5 ?x6))))

        (forall (?x5 ?x6)
          (when
            (not 
              (autstate_2_4 ?x5 ?x6))
            (not 
              (prev_autstate_2_4 ?x5 ?x6))))

        (forall (?x5 ?x6)
          (when
            (not 
              (autstate_2_2 ?x5 ?x6))
            (not 
              (prev_autstate_2_2 ?x5 ?x6))))

        (when
          (not 
            (autstate_3_2))
          (not 
            (prev_autstate_3_2)))
        (when
          (not 
            (autstate_3_1))
          (not 
            (prev_autstate_3_1)))
        (when
          (not 
            (autstate_4_2))
          (not 
            (prev_autstate_4_2)))
        (when
          (not 
            (autstate_4_1))
          (not 
            (prev_autstate_4_1)))
      )
    )
  (:action refuel
    :parameters (?x0 ?x1 ?x2 ?x3)
    :precondition 
      (and
        (aircraft ?x0)
        (and
          (city ?x1)
          (and
            (fuel_level ?x0 ?x2)
            (next ?x2 ?x3))))
    :effect
      (and
        (fuel_level ?x0 ?x3)
        (forall (?x4)
          (when
            (autstate_1_2 ?x4)
            (prev_autstate_1_2 ?x4)))

        (forall (?x4)
          (when
            (autstate_1_1 ?x4)
            (prev_autstate_1_1 ?x4)))

        (forall (?x4)
          (when
            (autstate_1_3 ?x4)
            (prev_autstate_1_3 ?x4)))

        (forall (?x4 ?x5)
          (when
            (autstate_2_3 ?x4 ?x5)
            (prev_autstate_2_3 ?x4 ?x5)))

        (forall (?x4 ?x5)
          (when
            (autstate_2_1 ?x4 ?x5)
            (prev_autstate_2_1 ?x4 ?x5)))

        (forall (?x4 ?x5)
          (when
            (autstate_2_4 ?x4 ?x5)
            (prev_autstate_2_4 ?x4 ?x5)))

        (forall (?x4 ?x5)
          (when
            (autstate_2_2 ?x4 ?x5)
            (prev_autstate_2_2 ?x4 ?x5)))

        (when
          (autstate_3_2)
          (prev_autstate_3_2))
        (when
          (autstate_3_1)
          (prev_autstate_3_1))
        (when
          (autstate_4_2)
          (prev_autstate_4_2))
        (when
          (autstate_4_1)
          (prev_autstate_4_1))
        (not 
          (fuel_level ?x0 ?x2))
        (forall (?x4)
          (when
            (not 
              (autstate_1_2 ?x4))
            (not 
              (prev_autstate_1_2 ?x4))))

        (forall (?x4)
          (when
            (not 
              (autstate_1_1 ?x4))
            (not 
              (prev_autstate_1_1 ?x4))))

        (forall (?x4)
          (when
            (not 
              (autstate_1_3 ?x4))
            (not 
              (prev_autstate_1_3 ?x4))))

        (forall (?x4 ?x5)
          (when
            (not 
              (autstate_2_3 ?x4 ?x5))
            (not 
              (prev_autstate_2_3 ?x4 ?x5))))

        (forall (?x4 ?x5)
          (when
            (not 
              (autstate_2_1 ?x4 ?x5))
            (not 
              (prev_autstate_2_1 ?x4 ?x5))))

        (forall (?x4 ?x5)
          (when
            (not 
              (autstate_2_4 ?x4 ?x5))
            (not 
              (prev_autstate_2_4 ?x4 ?x5))))

        (forall (?x4 ?x5)
          (when
            (not 
              (autstate_2_2 ?x4 ?x5))
            (not 
              (prev_autstate_2_2 ?x4 ?x5))))

        (when
          (not 
            (autstate_3_2))
          (not 
            (prev_autstate_3_2)))
        (when
          (not 
            (autstate_3_1))
          (not 
            (prev_autstate_3_1)))
        (when
          (not 
            (autstate_4_2))
          (not 
            (prev_autstate_4_2)))
        (when
          (not 
            (autstate_4_1))
          (not 
            (prev_autstate_4_1)))
      )
    )
(:derived 
    (autstate_1_1 ?x0)
    (or
      (and
        (prev_autstate_1_2 ?x0)
        (not 
          (aircraft ?x0)))
      (or
        (and
          (prev_autstate_1_2 ?x0)
          (at ?x0 city4))
        (or
          (prev_autstate_1_1 ?x0)
          (and
            (prev_autstate_1_3 ?x0)
            (at ?x0 city4)))))
)

(:derived 
    (autstate_1_3 ?x0)
    (or
      (prev_autstate_1_2 ?x0)
      (prev_autstate_1_3 ?x0))
)

(:derived 
    (autstate_2_1 ?x0 ?x1)
    (or
      (and
        (prev_autstate_2_3 ?x0 ?x1)
        (not 
          (aircraft ?x0)))
      (or
        (and
          (prev_autstate_2_3 ?x0 ?x1)
          (not 
            (city ?x1)))
        (or
          (and
            (prev_autstate_2_3 ?x0 ?x1)
            (not 
              (at ?x0 ?x1)))
          (prev_autstate_2_1 ?x0 ?x1))))
)

(:derived 
    (autstate_2_4 ?x0 ?x1)
    (or
      (prev_autstate_2_3 ?x0 ?x1)
      (prev_autstate_2_4 ?x0 ?x1))
)

(:derived 
    (autstate_2_2 ?x0 ?x1)
    (or
      (and
        (prev_autstate_2_3 ?x0 ?x1)
        (at ?x0 ?x1))
      (and
        (prev_autstate_2_4 ?x0 ?x1)
        (at ?x0 ?x1)))
)

(:derived 
    (autstate_3_2)
    (prev_autstate_3_2)
)

(:derived 
    (autstate_3_1)
    (and
      (prev_autstate_3_2)
      (at person1 city3))
)

(:derived 
    (autstate_4_2)
    (prev_autstate_4_2)
)

(:derived 
    (autstate_4_1)
    (and
      (prev_autstate_4_2)
      (at person3 city4))
)

(:derived 
    (aut_in_final_1 ?x0)
    (autstate_1_1 ?x0)
)

(:derived 
    (aut_in_final_2 ?x0 ?x1)
    (or
      (autstate_2_1 ?x0 ?x1)
      (autstate_2_2 ?x0 ?x1))
)

(:derived 
    (aut_in_final_3)
    (autstate_3_1)
)

(:derived 
    (aut_in_final_4)
    (autstate_4_1)
)

)