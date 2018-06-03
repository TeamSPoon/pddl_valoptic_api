(DEFINE (PROBLEM STRIPS-GRIPPER4)
   (:DOMAIN GRIPPER-STRIPS)
   (:OBJECTS ROOMA ROOMB BALL1 BALL2 BALL3 BALL4 LEFT RIGHT)
   (:INIT (ROOM ROOMA)
          (ROOM ROOMB)
          (BALL BALL1)
          (BALL BALL2)
          (BALL BALL3)
          (BALL BALL4)
          (GRIPPER LEFT)
          (GRIPPER RIGHT)
          (AT-ROBBY ROOMA)
          (FREE LEFT)
          (FREE RIGHT)
          (AT BALL1 ROOMA)
          (AT BALL2 ROOMA)
          (AT BALL3 ROOMA)
          (AT BALL4 ROOMA))
   (:GOAL (AND (AT BALL1 ROOMB)
               (AT BALL2 ROOMB)
               (AT BALL3 ROOMB)
               (AT BALL4 ROOMB))))