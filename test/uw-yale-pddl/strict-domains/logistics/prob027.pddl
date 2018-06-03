(DEFINE (PROBLEM LOG18)
   (:DOMAIN LOGISTICS-STRIPS)
   (:OBJECTS PACKAGE1 PACKAGE2 PACKAGE3 PACKAGE4 PACKAGE5 PACKAGE6
             PACKAGE7 PACKAGE8 PLANE1 PLANE2 TRUCK1-1 TRUCK1-2 LOC1-1 LOC1-2
             LOC1-3 CITY1 TRUCK2-1 TRUCK2-2 LOC2-1 LOC2-2 LOC2-3 CITY2
             TRUCK3-1 TRUCK3-2 LOC3-1 LOC3-2 LOC3-3 CITY3 TRUCK4-1 TRUCK4-2
             LOC4-1 LOC4-2 LOC4-3 CITY4 TRUCK5-1 TRUCK5-2 LOC5-1 LOC5-2
             LOC5-3 CITY5 TRUCK6-1 TRUCK6-2 LOC6-1 LOC6-2 LOC6-3 CITY6)
   (:INIT (OBJ PACKAGE1)
          (OBJ PACKAGE2)
          (OBJ PACKAGE3)
          (OBJ PACKAGE4)
          (OBJ PACKAGE5)
          (OBJ PACKAGE6)
          (OBJ PACKAGE7)
          (OBJ PACKAGE8)
          (AIRPLANE PLANE1)
          (AIRPLANE PLANE2)
          (TRUCK TRUCK1-1)
          (TRUCK TRUCK1-2)
          (LOCATION LOC1-1)
          (LOCATION LOC1-2)
          (LOCATION LOC1-3)
          (CITY CITY1)
          (AIRPORT LOC1-1)
          (TRUCK TRUCK2-1)
          (TRUCK TRUCK2-2)
          (LOCATION LOC2-1)
          (LOCATION LOC2-2)
          (LOCATION LOC2-3)
          (CITY CITY2)
          (AIRPORT LOC2-1)
          (TRUCK TRUCK3-1)
          (TRUCK TRUCK3-2)
          (LOCATION LOC3-1)
          (LOCATION LOC3-2)
          (LOCATION LOC3-3)
          (CITY CITY3)
          (AIRPORT LOC3-1)
          (TRUCK TRUCK4-1)
          (TRUCK TRUCK4-2)
          (LOCATION LOC4-1)
          (LOCATION LOC4-2)
          (LOCATION LOC4-3)
          (CITY CITY4)
          (AIRPORT LOC4-1)
          (TRUCK TRUCK5-1)
          (TRUCK TRUCK5-2)
          (LOCATION LOC5-1)
          (LOCATION LOC5-2)
          (LOCATION LOC5-3)
          (CITY CITY5)
          (AIRPORT LOC5-1)
          (TRUCK TRUCK6-1)
          (TRUCK TRUCK6-2)
          (LOCATION LOC6-1)
          (LOCATION LOC6-2)
          (LOCATION LOC6-3)
          (CITY CITY6)
          (AIRPORT LOC6-1)
          (IN-CITY LOC1-1 CITY1)
          (IN-CITY LOC1-2 CITY1)
          (IN-CITY LOC1-3 CITY1)
          (IN-CITY LOC2-1 CITY2)
          (IN-CITY LOC2-2 CITY2)
          (IN-CITY LOC2-3 CITY2)
          (IN-CITY LOC3-1 CITY3)
          (IN-CITY LOC3-2 CITY3)
          (IN-CITY LOC3-3 CITY3)
          (IN-CITY LOC4-1 CITY4)
          (IN-CITY LOC4-2 CITY4)
          (IN-CITY LOC4-3 CITY4)
          (IN-CITY LOC5-1 CITY5)
          (IN-CITY LOC5-2 CITY5)
          (IN-CITY LOC5-3 CITY5)
          (IN-CITY LOC6-1 CITY6)
          (IN-CITY LOC6-2 CITY6)
          (IN-CITY LOC6-3 CITY6)
          (AT PLANE1 LOC2-1)
          (AT PLANE2 LOC3-1)
          (AT TRUCK1-1 LOC1-1)
          (AT TRUCK1-2 LOC1-1)
          (AT TRUCK2-1 LOC2-1)
          (AT TRUCK2-2 LOC2-1)
          (AT TRUCK3-1 LOC3-3)
          (AT TRUCK3-2 LOC3-2)
          (AT TRUCK4-1 LOC4-2)
          (AT TRUCK4-2 LOC4-3)
          (AT TRUCK5-1 LOC5-2)
          (AT TRUCK5-2 LOC5-1)
          (AT TRUCK6-1 LOC6-3)
          (AT TRUCK6-2 LOC6-2)
          (AT PACKAGE1 LOC2-3)
          (AT PACKAGE2 LOC4-2)
          (AT PACKAGE3 LOC5-3)
          (AT PACKAGE4 LOC1-2)
          (AT PACKAGE5 LOC5-1)
          (AT PACKAGE6 LOC4-2)
          (AT PACKAGE7 LOC2-1)
          (AT PACKAGE8 LOC1-2))
   (:GOAL (AND (AT PACKAGE1 LOC5-3)
               (AT PACKAGE2 LOC4-3)
               (AT PACKAGE3 LOC5-3)
               (AT PACKAGE4 LOC4-1)
               (AT PACKAGE5 LOC1-2)
               (AT PACKAGE6 LOC1-3)
               (AT PACKAGE7 LOC2-3)
               (AT PACKAGE8 LOC2-3))))