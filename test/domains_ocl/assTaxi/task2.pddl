(define (problem task2)
   (:domain mytaxi)
   (:objects
         taxi001 taxi002 - taxi
         new_street old_street high_street low_street water_bridge slope_street cr_1 cr_2 cr_3 cr_4 cr_5 cr_6 cr_7 river_road river_close boat_rent main_road short_street - location
         bill james peter jill ayumi - person
         full threequarter half_full onequarter empty - fuel
        )
    (:init
        (outsideTaxi bill)
        (pLocation bill cr_4)
        (outsideTaxi james)
        (pLocation james cr_7)
        (outsideTaxi peter)
        (pLocation peter cr_1)
        (outsideTaxi jill)
        (pLocation jill cr_3)
        (outsideTaxi ayumi)
        (pLocation ayumi boat_rent)
        (taxiState taxi001)
        (tLocation taxi001 old_street)
        (tFuel taxi001 threequarter)
        (taxiState taxi002)
        (tLocation taxi002 main_road)
        (tFuel taxi002 full)
        (connects cr_1 old_street)
        (connects cr_1 slope_street)
        (connects cr_1 water_bridge)
        (connects cr_1 high_street)
        (connects cr_2 low_street)
        (connects cr_2 old_street)
        (connects cr_3 new_street)
        (connects cr_3 low_street)
        (connects cr_4 high_street)
        (connects cr_4 new_street)
        (connects cr_5 water_bridge)
        (connects cr_5 river_road)
        (connects cr_5 short_street)
        (connects cr_6 main_road)
        (connects cr_6 river_road)
        (connects cr_6 river_close)
        (connects cr_7 main_road)
        (connects cr_7 short_street)
        (connects main_road cr_7)
        (connects short_street cr_7)
        (connects short_street cr_5)
        (connects main_road cr_6)
        (connects river_road cr_5)
        (connects river_road cr_6)
        (connects river_close cr_6)
        (connects river_close boat_rent)
        (connects boat_rent river_close)
        (connects water_bridge cr_5)
        (connects water_bridge cr_1)
        (connects high_street cr_1)
        (connects old_street cr_1)
        (connects high_street cr_4)
        (connects new_street cr_4)
        (connects new_street cr_3)
        (connects low_street cr_3)
        (connects low_street cr_2)
        (connects old_street cr_2)
        (connects slope_street cr_3)
        (usefuel full threequarter)
        (usefuel threequarter half_full)
        (usefuel half_full onequarter)
        (usefuel onequarter empty)
        (fillUpFuel empty full)
        )
    (:goal
      (and
        (outsideTaxi bill)
        (pLocation bill water_bridge)
        (outsideTaxi james)
        (pLocation james boat_rent)
       ))
)
