(define (problem Jack-back2)
    (:domain bulldozer)
  (:objects a e g jack bulldozer)
  (:length (:serial 6) (:parallel 6))
  (:goal (and (at bulldozer g) (at Jack a)))
  (:init (at jack a) (at bulldozer e)
	 (vehicle bulldozer)
	 (mobile jack)
	 (person jack)
	 (road a e) (road e a)
	 (road a g) (road g a)))