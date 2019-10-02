(define (domain Kelevators-sequencedstrips)
(:requirements :strips :typing)
(:types object
elevator - object
passenger - object
count - object
slow-elevator - elevator
fast-elevator - elevator)
(:constants
 p2 - passenger
 p3 - passenger
 p0 - passenger
 p1 - passenger
 n8 - count
 n0 - count
 n1 - count
 n2 - count
 n3 - count
 n4 - count
 n5 - count
 n6 - count
 slow1-0 - slow-elevator
 n7 - count
)

(:predicates
(next ?n1 - count ?n2 - count)
(passenger-at ?person - passenger ?floor - count)
(above ?floor1 - count ?floor2 - count)
(can-hold ?agent - elevator ?n - count)
(reachable-floor ?agent - elevator ?floor - count)
(lift-at ?lift - elevator ?floor - count)
(boarded ?person - passenger ?lift - elevator)
(passengers ?lift - elevator ?n - count)
)

(:action move-up-slow_slow1-0_n4_n5
:precondition 
(and (lift-at slow1-0 n4) (above n4 n5) (reachable-floor slow1-0 n5))
:effect 
(and (lift-at slow1-0 n5) (not (lift-at slow1-0 n4)) (increase total-cost travel-slow))
)

(:action move-up-slow_slow1-0_n4_n6
:precondition 
(and (lift-at slow1-0 n4) (above n4 n6) (reachable-floor slow1-0 n6))
:effect 
(and (lift-at slow1-0 n6) (not (lift-at slow1-0 n4)) (increase total-cost travel-slow))
)

(:action move-up-slow_slow1-0_n4_n8
:precondition 
(and (lift-at slow1-0 n4) (above n4 n8) (reachable-floor slow1-0 n8))
:effect 
(and (lift-at slow1-0 n8) (not (lift-at slow1-0 n4)) (increase total-cost travel-slow))
)

(:action move-up-slow_slow1-0_n4_n7
:precondition 
(and (lift-at slow1-0 n4) (above n4 n7) (reachable-floor slow1-0 n7))
:effect 
(and (lift-at slow1-0 n7) (not (lift-at slow1-0 n4)) (increase total-cost travel-slow))
)

(:action board_slow1-0_p0_n4_n0_n1
:precondition 
(and (lift-at slow1-0 n4) (passenger-at p0 n4) (passengers slow1-0 n0) (next n0 n1) (can-hold slow1-0 n1))
:effect 
(and (not (passenger-at p0 n4)) (boarded p0 slow1-0) (not (passengers slow1-0 n0)) (passengers slow1-0 n1))
)

(:action board_slow1-0_p3_n4_n0_n1
:precondition 
(and (lift-at slow1-0 n4) (passenger-at p3 n4) (passengers slow1-0 n0) (next n0 n1) (can-hold slow1-0 n1))
:effect 
(and (not (passenger-at p3 n4)) (boarded p3 slow1-0) (not (passengers slow1-0 n0)) (passengers slow1-0 n1))
)

(:action move-up-slow_slow1-0_n5_n6
:precondition 
(and (lift-at slow1-0 n5) (above n5 n6) (reachable-floor slow1-0 n6))
:effect 
(and (lift-at slow1-0 n6) (not (lift-at slow1-0 n5)) (increase total-cost travel-slow))
)

(:action move-up-slow_slow1-0_n5_n8
:precondition 
(and (lift-at slow1-0 n5) (above n5 n8) (reachable-floor slow1-0 n8))
:effect 
(and (lift-at slow1-0 n8) (not (lift-at slow1-0 n5)) (increase total-cost travel-slow))
)

(:action move-up-slow_slow1-0_n5_n7
:precondition 
(and (lift-at slow1-0 n5) (above n5 n7) (reachable-floor slow1-0 n7))
:effect 
(and (lift-at slow1-0 n7) (not (lift-at slow1-0 n5)) (increase total-cost travel-slow))
)

(:action move-up-slow_slow1-0_n6_n8
:precondition 
(and (lift-at slow1-0 n6) (above n6 n8) (reachable-floor slow1-0 n8))
:effect 
(and (lift-at slow1-0 n8) (not (lift-at slow1-0 n6)) (increase total-cost travel-slow))
)

(:action move-up-slow_slow1-0_n6_n7
:precondition 
(and (lift-at slow1-0 n6) (above n6 n7) (reachable-floor slow1-0 n7))
:effect 
(and (lift-at slow1-0 n7) (not (lift-at slow1-0 n6)) (increase total-cost travel-slow))
)

(:action move-up-slow_slow1-0_n7_n8
:precondition 
(and (lift-at slow1-0 n7) (above n7 n8) (reachable-floor slow1-0 n8))
:effect 
(and (lift-at slow1-0 n8) (not (lift-at slow1-0 n7)) (increase total-cost travel-slow))
)

(:action move-down-slow_slow1-0_n5_n4
:precondition 
(and (lift-at slow1-0 n5) (above n4 n5) (reachable-floor slow1-0 n4))
:effect 
(and (lift-at slow1-0 n4) (not (lift-at slow1-0 n5)) (increase total-cost travel-slow))
)

(:action move-down-slow_slow1-0_n6_n4
:precondition 
(and (lift-at slow1-0 n6) (above n4 n6) (reachable-floor slow1-0 n4))
:effect 
(and (lift-at slow1-0 n4) (not (lift-at slow1-0 n6)) (increase total-cost travel-slow))
)

(:action move-down-slow_slow1-0_n6_n5
:precondition 
(and (lift-at slow1-0 n6) (above n5 n6) (reachable-floor slow1-0 n5))
:effect 
(and (lift-at slow1-0 n5) (not (lift-at slow1-0 n6)) (increase total-cost travel-slow))
)

(:action move-down-slow_slow1-0_n8_n4
:precondition 
(and (lift-at slow1-0 n8) (above n4 n8) (reachable-floor slow1-0 n4))
:effect 
(and (lift-at slow1-0 n4) (not (lift-at slow1-0 n8)) (increase total-cost travel-slow))
)

(:action move-down-slow_slow1-0_n8_n5
:precondition 
(and (lift-at slow1-0 n8) (above n5 n8) (reachable-floor slow1-0 n5))
:effect 
(and (lift-at slow1-0 n5) (not (lift-at slow1-0 n8)) (increase total-cost travel-slow))
)

(:action move-down-slow_slow1-0_n8_n6
:precondition 
(and (lift-at slow1-0 n8) (above n6 n8) (reachable-floor slow1-0 n6))
:effect 
(and (lift-at slow1-0 n6) (not (lift-at slow1-0 n8)) (increase total-cost travel-slow))
)

(:action move-down-slow_slow1-0_n8_n7
:precondition 
(and (lift-at slow1-0 n8) (above n7 n8) (reachable-floor slow1-0 n7))
:effect 
(and (lift-at slow1-0 n7) (not (lift-at slow1-0 n8)) (increase total-cost travel-slow))
)

(:action move-down-slow_slow1-0_n7_n4
:precondition 
(and (lift-at slow1-0 n7) (above n4 n7) (reachable-floor slow1-0 n4))
:effect 
(and (lift-at slow1-0 n4) (not (lift-at slow1-0 n7)) (increase total-cost travel-slow))
)

(:action move-down-slow_slow1-0_n7_n5
:precondition 
(and (lift-at slow1-0 n7) (above n5 n7) (reachable-floor slow1-0 n5))
:effect 
(and (lift-at slow1-0 n5) (not (lift-at slow1-0 n7)) (increase total-cost travel-slow))
)

(:action move-down-slow_slow1-0_n7_n6
:precondition 
(and (lift-at slow1-0 n7) (above n6 n7) (reachable-floor slow1-0 n6))
:effect 
(and (lift-at slow1-0 n6) (not (lift-at slow1-0 n7)) (increase total-cost travel-slow))
)

(:action board_slow1-0_p0_n4_n1_n2
:precondition 
(and (lift-at slow1-0 n4) (passenger-at p0 n4) (passengers slow1-0 n1) (next n1 n2) (can-hold slow1-0 n2))
:effect 
(and (not (passenger-at p0 n4)) (boarded p0 slow1-0) (not (passengers slow1-0 n1)) (passengers slow1-0 n2))
)

(:action board_slow1-0_p3_n4_n1_n2
:precondition 
(and (lift-at slow1-0 n4) (passenger-at p3 n4) (passengers slow1-0 n1) (next n1 n2) (can-hold slow1-0 n2))
:effect 
(and (not (passenger-at p3 n4)) (boarded p3 slow1-0) (not (passengers slow1-0 n1)) (passengers slow1-0 n2))
)

(:action leave_slow1-0_p0_n4_n1_n0
:precondition 
(and (lift-at slow1-0 n4) (boarded p0 slow1-0) (passengers slow1-0 n1) (next n0 n1))
:effect 
(and (passenger-at p0 n4) (not (boarded p0 slow1-0)) (not (passengers slow1-0 n1)) (passengers slow1-0 n0))
)

(:action leave_slow1-0_p3_n4_n1_n0
:precondition 
(and (lift-at slow1-0 n4) (boarded p3 slow1-0) (passengers slow1-0 n1) (next n0 n1))
:effect 
(and (passenger-at p3 n4) (not (boarded p3 slow1-0)) (not (passengers slow1-0 n1)) (passengers slow1-0 n0))
)

(:action leave_slow1-0_p0_n5_n1_n0
:precondition 
(and (lift-at slow1-0 n5) (boarded p0 slow1-0) (passengers slow1-0 n1) (next n0 n1))
:effect 
(and (passenger-at p0 n5) (not (boarded p0 slow1-0)) (not (passengers slow1-0 n1)) (passengers slow1-0 n0))
)

(:action leave_slow1-0_p3_n5_n1_n0
:precondition 
(and (lift-at slow1-0 n5) (boarded p3 slow1-0) (passengers slow1-0 n1) (next n0 n1))
:effect 
(and (passenger-at p3 n5) (not (boarded p3 slow1-0)) (not (passengers slow1-0 n1)) (passengers slow1-0 n0))
)

(:action leave_slow1-0_p0_n6_n1_n0
:precondition 
(and (lift-at slow1-0 n6) (boarded p0 slow1-0) (passengers slow1-0 n1) (next n0 n1))
:effect 
(and (passenger-at p0 n6) (not (boarded p0 slow1-0)) (not (passengers slow1-0 n1)) (passengers slow1-0 n0))
)

(:action leave_slow1-0_p3_n6_n1_n0
:precondition 
(and (lift-at slow1-0 n6) (boarded p3 slow1-0) (passengers slow1-0 n1) (next n0 n1))
:effect 
(and (passenger-at p3 n6) (not (boarded p3 slow1-0)) (not (passengers slow1-0 n1)) (passengers slow1-0 n0))
)

(:action leave_slow1-0_p0_n8_n1_n0
:precondition 
(and (lift-at slow1-0 n8) (boarded p0 slow1-0) (passengers slow1-0 n1) (next n0 n1))
:effect 
(and (passenger-at p0 n8) (not (boarded p0 slow1-0)) (not (passengers slow1-0 n1)) (passengers slow1-0 n0))
)

(:action leave_slow1-0_p3_n8_n1_n0
:precondition 
(and (lift-at slow1-0 n8) (boarded p3 slow1-0) (passengers slow1-0 n1) (next n0 n1))
:effect 
(and (passenger-at p3 n8) (not (boarded p3 slow1-0)) (not (passengers slow1-0 n1)) (passengers slow1-0 n0))
)

(:action board_slow1-0_p0_n5_n0_n1
:precondition 
(and (lift-at slow1-0 n5) (passenger-at p0 n5) (passengers slow1-0 n0) (next n0 n1) (can-hold slow1-0 n1))
:effect 
(and (not (passenger-at p0 n5)) (boarded p0 slow1-0) (not (passengers slow1-0 n0)) (passengers slow1-0 n1))
)

(:action board_slow1-0_p0_n5_n1_n2
:precondition 
(and (lift-at slow1-0 n5) (passenger-at p0 n5) (passengers slow1-0 n1) (next n1 n2) (can-hold slow1-0 n2))
:effect 
(and (not (passenger-at p0 n5)) (boarded p0 slow1-0) (not (passengers slow1-0 n1)) (passengers slow1-0 n2))
)

(:action board_slow1-0_p3_n5_n0_n1
:precondition 
(and (lift-at slow1-0 n5) (passenger-at p3 n5) (passengers slow1-0 n0) (next n0 n1) (can-hold slow1-0 n1))
:effect 
(and (not (passenger-at p3 n5)) (boarded p3 slow1-0) (not (passengers slow1-0 n0)) (passengers slow1-0 n1))
)

(:action board_slow1-0_p3_n5_n1_n2
:precondition 
(and (lift-at slow1-0 n5) (passenger-at p3 n5) (passengers slow1-0 n1) (next n1 n2) (can-hold slow1-0 n2))
:effect 
(and (not (passenger-at p3 n5)) (boarded p3 slow1-0) (not (passengers slow1-0 n1)) (passengers slow1-0 n2))
)

(:action board_slow1-0_p0_n6_n0_n1
:precondition 
(and (lift-at slow1-0 n6) (passenger-at p0 n6) (passengers slow1-0 n0) (next n0 n1) (can-hold slow1-0 n1))
:effect 
(and (not (passenger-at p0 n6)) (boarded p0 slow1-0) (not (passengers slow1-0 n0)) (passengers slow1-0 n1))
)

(:action board_slow1-0_p0_n6_n1_n2
:precondition 
(and (lift-at slow1-0 n6) (passenger-at p0 n6) (passengers slow1-0 n1) (next n1 n2) (can-hold slow1-0 n2))
:effect 
(and (not (passenger-at p0 n6)) (boarded p0 slow1-0) (not (passengers slow1-0 n1)) (passengers slow1-0 n2))
)

(:action board_slow1-0_p3_n6_n0_n1
:precondition 
(and (lift-at slow1-0 n6) (passenger-at p3 n6) (passengers slow1-0 n0) (next n0 n1) (can-hold slow1-0 n1))
:effect 
(and (not (passenger-at p3 n6)) (boarded p3 slow1-0) (not (passengers slow1-0 n0)) (passengers slow1-0 n1))
)

(:action board_slow1-0_p3_n6_n1_n2
:precondition 
(and (lift-at slow1-0 n6) (passenger-at p3 n6) (passengers slow1-0 n1) (next n1 n2) (can-hold slow1-0 n2))
:effect 
(and (not (passenger-at p3 n6)) (boarded p3 slow1-0) (not (passengers slow1-0 n1)) (passengers slow1-0 n2))
)

(:action board_slow1-0_p0_n8_n0_n1
:precondition 
(and (lift-at slow1-0 n8) (passenger-at p0 n8) (passengers slow1-0 n0) (next n0 n1) (can-hold slow1-0 n1))
:effect 
(and (not (passenger-at p0 n8)) (boarded p0 slow1-0) (not (passengers slow1-0 n0)) (passengers slow1-0 n1))
)

(:action board_slow1-0_p0_n8_n1_n2
:precondition 
(and (lift-at slow1-0 n8) (passenger-at p0 n8) (passengers slow1-0 n1) (next n1 n2) (can-hold slow1-0 n2))
:effect 
(and (not (passenger-at p0 n8)) (boarded p0 slow1-0) (not (passengers slow1-0 n1)) (passengers slow1-0 n2))
)

(:action board_slow1-0_p3_n8_n0_n1
:precondition 
(and (lift-at slow1-0 n8) (passenger-at p3 n8) (passengers slow1-0 n0) (next n0 n1) (can-hold slow1-0 n1))
:effect 
(and (not (passenger-at p3 n8)) (boarded p3 slow1-0) (not (passengers slow1-0 n0)) (passengers slow1-0 n1))
)

(:action board_slow1-0_p3_n8_n1_n2
:precondition 
(and (lift-at slow1-0 n8) (passenger-at p3 n8) (passengers slow1-0 n1) (next n1 n2) (can-hold slow1-0 n2))
:effect 
(and (not (passenger-at p3 n8)) (boarded p3 slow1-0) (not (passengers slow1-0 n1)) (passengers slow1-0 n2))
)

(:action leave_slow1-0_p0_n4_n2_n1
:precondition 
(and (lift-at slow1-0 n4) (boarded p0 slow1-0) (passengers slow1-0 n2) (next n1 n2))
:effect 
(and (passenger-at p0 n4) (not (boarded p0 slow1-0)) (not (passengers slow1-0 n2)) (passengers slow1-0 n1))
)

(:action leave_slow1-0_p3_n4_n2_n1
:precondition 
(and (lift-at slow1-0 n4) (boarded p3 slow1-0) (passengers slow1-0 n2) (next n1 n2))
:effect 
(and (passenger-at p3 n4) (not (boarded p3 slow1-0)) (not (passengers slow1-0 n2)) (passengers slow1-0 n1))
)

(:action leave_slow1-0_p2_n4_n1_n0
:precondition 
(and (lift-at slow1-0 n4) (boarded p2 slow1-0) (passengers slow1-0 n1) (next n0 n1))
:effect 
(and (passenger-at p2 n4) (not (boarded p2 slow1-0)) (not (passengers slow1-0 n1)) (passengers slow1-0 n0))
)

(:action leave_slow1-0_p2_n4_n2_n1
:precondition 
(and (lift-at slow1-0 n4) (boarded p2 slow1-0) (passengers slow1-0 n2) (next n1 n2))
:effect 
(and (passenger-at p2 n4) (not (boarded p2 slow1-0)) (not (passengers slow1-0 n2)) (passengers slow1-0 n1))
)

(:action leave_slow1-0_p0_n5_n2_n1
:precondition 
(and (lift-at slow1-0 n5) (boarded p0 slow1-0) (passengers slow1-0 n2) (next n1 n2))
:effect 
(and (passenger-at p0 n5) (not (boarded p0 slow1-0)) (not (passengers slow1-0 n2)) (passengers slow1-0 n1))
)

(:action leave_slow1-0_p3_n5_n2_n1
:precondition 
(and (lift-at slow1-0 n5) (boarded p3 slow1-0) (passengers slow1-0 n2) (next n1 n2))
:effect 
(and (passenger-at p3 n5) (not (boarded p3 slow1-0)) (not (passengers slow1-0 n2)) (passengers slow1-0 n1))
)

(:action leave_slow1-0_p2_n5_n1_n0
:precondition 
(and (lift-at slow1-0 n5) (boarded p2 slow1-0) (passengers slow1-0 n1) (next n0 n1))
:effect 
(and (passenger-at p2 n5) (not (boarded p2 slow1-0)) (not (passengers slow1-0 n1)) (passengers slow1-0 n0))
)

(:action leave_slow1-0_p2_n5_n2_n1
:precondition 
(and (lift-at slow1-0 n5) (boarded p2 slow1-0) (passengers slow1-0 n2) (next n1 n2))
:effect 
(and (passenger-at p2 n5) (not (boarded p2 slow1-0)) (not (passengers slow1-0 n2)) (passengers slow1-0 n1))
)

(:action leave_slow1-0_p0_n6_n2_n1
:precondition 
(and (lift-at slow1-0 n6) (boarded p0 slow1-0) (passengers slow1-0 n2) (next n1 n2))
:effect 
(and (passenger-at p0 n6) (not (boarded p0 slow1-0)) (not (passengers slow1-0 n2)) (passengers slow1-0 n1))
)

(:action leave_slow1-0_p3_n6_n2_n1
:precondition 
(and (lift-at slow1-0 n6) (boarded p3 slow1-0) (passengers slow1-0 n2) (next n1 n2))
:effect 
(and (passenger-at p3 n6) (not (boarded p3 slow1-0)) (not (passengers slow1-0 n2)) (passengers slow1-0 n1))
)

(:action leave_slow1-0_p2_n6_n1_n0
:precondition 
(and (lift-at slow1-0 n6) (boarded p2 slow1-0) (passengers slow1-0 n1) (next n0 n1))
:effect 
(and (passenger-at p2 n6) (not (boarded p2 slow1-0)) (not (passengers slow1-0 n1)) (passengers slow1-0 n0))
)

(:action leave_slow1-0_p2_n6_n2_n1
:precondition 
(and (lift-at slow1-0 n6) (boarded p2 slow1-0) (passengers slow1-0 n2) (next n1 n2))
:effect 
(and (passenger-at p2 n6) (not (boarded p2 slow1-0)) (not (passengers slow1-0 n2)) (passengers slow1-0 n1))
)

(:action leave_slow1-0_p0_n8_n2_n1
:precondition 
(and (lift-at slow1-0 n8) (boarded p0 slow1-0) (passengers slow1-0 n2) (next n1 n2))
:effect 
(and (passenger-at p0 n8) (not (boarded p0 slow1-0)) (not (passengers slow1-0 n2)) (passengers slow1-0 n1))
)

(:action leave_slow1-0_p3_n8_n2_n1
:precondition 
(and (lift-at slow1-0 n8) (boarded p3 slow1-0) (passengers slow1-0 n2) (next n1 n2))
:effect 
(and (passenger-at p3 n8) (not (boarded p3 slow1-0)) (not (passengers slow1-0 n2)) (passengers slow1-0 n1))
)

(:action leave_slow1-0_p2_n8_n1_n0
:precondition 
(and (lift-at slow1-0 n8) (boarded p2 slow1-0) (passengers slow1-0 n1) (next n0 n1))
:effect 
(and (passenger-at p2 n8) (not (boarded p2 slow1-0)) (not (passengers slow1-0 n1)) (passengers slow1-0 n0))
)

(:action leave_slow1-0_p2_n8_n2_n1
:precondition 
(and (lift-at slow1-0 n8) (boarded p2 slow1-0) (passengers slow1-0 n2) (next n1 n2))
:effect 
(and (passenger-at p2 n8) (not (boarded p2 slow1-0)) (not (passengers slow1-0 n2)) (passengers slow1-0 n1))
)

(:action board_slow1-0_p2_n4_n0_n1
:precondition 
(and (lift-at slow1-0 n4) (passenger-at p2 n4) (passengers slow1-0 n0) (next n0 n1) (can-hold slow1-0 n1))
:effect 
(and (not (passenger-at p2 n4)) (boarded p2 slow1-0) (not (passengers slow1-0 n0)) (passengers slow1-0 n1))
)

(:action board_slow1-0_p2_n4_n1_n2
:precondition 
(and (lift-at slow1-0 n4) (passenger-at p2 n4) (passengers slow1-0 n1) (next n1 n2) (can-hold slow1-0 n2))
:effect 
(and (not (passenger-at p2 n4)) (boarded p2 slow1-0) (not (passengers slow1-0 n1)) (passengers slow1-0 n2))
)

(:action board_slow1-0_p2_n5_n0_n1
:precondition 
(and (lift-at slow1-0 n5) (passenger-at p2 n5) (passengers slow1-0 n0) (next n0 n1) (can-hold slow1-0 n1))
:effect 
(and (not (passenger-at p2 n5)) (boarded p2 slow1-0) (not (passengers slow1-0 n0)) (passengers slow1-0 n1))
)

(:action board_slow1-0_p2_n5_n1_n2
:precondition 
(and (lift-at slow1-0 n5) (passenger-at p2 n5) (passengers slow1-0 n1) (next n1 n2) (can-hold slow1-0 n2))
:effect 
(and (not (passenger-at p2 n5)) (boarded p2 slow1-0) (not (passengers slow1-0 n1)) (passengers slow1-0 n2))
)

(:action board_slow1-0_p2_n6_n0_n1
:precondition 
(and (lift-at slow1-0 n6) (passenger-at p2 n6) (passengers slow1-0 n0) (next n0 n1) (can-hold slow1-0 n1))
:effect 
(and (not (passenger-at p2 n6)) (boarded p2 slow1-0) (not (passengers slow1-0 n0)) (passengers slow1-0 n1))
)

(:action board_slow1-0_p2_n6_n1_n2
:precondition 
(and (lift-at slow1-0 n6) (passenger-at p2 n6) (passengers slow1-0 n1) (next n1 n2) (can-hold slow1-0 n2))
:effect 
(and (not (passenger-at p2 n6)) (boarded p2 slow1-0) (not (passengers slow1-0 n1)) (passengers slow1-0 n2))
)

(:action board_slow1-0_p2_n8_n0_n1
:precondition 
(and (lift-at slow1-0 n8) (passenger-at p2 n8) (passengers slow1-0 n0) (next n0 n1) (can-hold slow1-0 n1))
:effect 
(and (not (passenger-at p2 n8)) (boarded p2 slow1-0) (not (passengers slow1-0 n0)) (passengers slow1-0 n1))
)

(:action board_slow1-0_p2_n8_n1_n2
:precondition 
(and (lift-at slow1-0 n8) (passenger-at p2 n8) (passengers slow1-0 n1) (next n1 n2) (can-hold slow1-0 n2))
:effect 
(and (not (passenger-at p2 n8)) (boarded p2 slow1-0) (not (passengers slow1-0 n1)) (passengers slow1-0 n2))
)

(:action board_slow1-0_p2_n7_n0_n1
:precondition 
(and (lift-at slow1-0 n7) (passenger-at p2 n7) (passengers slow1-0 n0) (next n0 n1) (can-hold slow1-0 n1))
:effect 
(and (not (passenger-at p2 n7)) (boarded p2 slow1-0) (not (passengers slow1-0 n0)) (passengers slow1-0 n1))
)

(:action board_slow1-0_p2_n7_n1_n2
:precondition 
(and (lift-at slow1-0 n7) (passenger-at p2 n7) (passengers slow1-0 n1) (next n1 n2) (can-hold slow1-0 n2))
:effect 
(and (not (passenger-at p2 n7)) (boarded p2 slow1-0) (not (passengers slow1-0 n1)) (passengers slow1-0 n2))
)

(:action leave_slow1-0_p0_n7_n1_n0
:precondition 
(and (lift-at slow1-0 n7) (boarded p0 slow1-0) (passengers slow1-0 n1) (next n0 n1))
:effect 
(and (passenger-at p0 n7) (not (boarded p0 slow1-0)) (not (passengers slow1-0 n1)) (passengers slow1-0 n0))
)

(:action leave_slow1-0_p3_n7_n1_n0
:precondition 
(and (lift-at slow1-0 n7) (boarded p3 slow1-0) (passengers slow1-0 n1) (next n0 n1))
:effect 
(and (passenger-at p3 n7) (not (boarded p3 slow1-0)) (not (passengers slow1-0 n1)) (passengers slow1-0 n0))
)

(:action board_slow1-0_p0_n7_n0_n1
:precondition 
(and (lift-at slow1-0 n7) (passenger-at p0 n7) (passengers slow1-0 n0) (next n0 n1) (can-hold slow1-0 n1))
:effect 
(and (not (passenger-at p0 n7)) (boarded p0 slow1-0) (not (passengers slow1-0 n0)) (passengers slow1-0 n1))
)

(:action board_slow1-0_p0_n7_n1_n2
:precondition 
(and (lift-at slow1-0 n7) (passenger-at p0 n7) (passengers slow1-0 n1) (next n1 n2) (can-hold slow1-0 n2))
:effect 
(and (not (passenger-at p0 n7)) (boarded p0 slow1-0) (not (passengers slow1-0 n1)) (passengers slow1-0 n2))
)

(:action board_slow1-0_p3_n7_n0_n1
:precondition 
(and (lift-at slow1-0 n7) (passenger-at p3 n7) (passengers slow1-0 n0) (next n0 n1) (can-hold slow1-0 n1))
:effect 
(and (not (passenger-at p3 n7)) (boarded p3 slow1-0) (not (passengers slow1-0 n0)) (passengers slow1-0 n1))
)

(:action board_slow1-0_p3_n7_n1_n2
:precondition 
(and (lift-at slow1-0 n7) (passenger-at p3 n7) (passengers slow1-0 n1) (next n1 n2) (can-hold slow1-0 n2))
:effect 
(and (not (passenger-at p3 n7)) (boarded p3 slow1-0) (not (passengers slow1-0 n1)) (passengers slow1-0 n2))
)

(:action leave_slow1-0_p0_n7_n2_n1
:precondition 
(and (lift-at slow1-0 n7) (boarded p0 slow1-0) (passengers slow1-0 n2) (next n1 n2))
:effect 
(and (passenger-at p0 n7) (not (boarded p0 slow1-0)) (not (passengers slow1-0 n2)) (passengers slow1-0 n1))
)

(:action leave_slow1-0_p3_n7_n2_n1
:precondition 
(and (lift-at slow1-0 n7) (boarded p3 slow1-0) (passengers slow1-0 n2) (next n1 n2))
:effect 
(and (passenger-at p3 n7) (not (boarded p3 slow1-0)) (not (passengers slow1-0 n2)) (passengers slow1-0 n1))
)

(:action leave_slow1-0_p2_n7_n1_n0
:precondition 
(and (lift-at slow1-0 n7) (boarded p2 slow1-0) (passengers slow1-0 n1) (next n0 n1))
:effect 
(and (passenger-at p2 n7) (not (boarded p2 slow1-0)) (not (passengers slow1-0 n1)) (passengers slow1-0 n0))
)

(:action leave_slow1-0_p2_n7_n2_n1
:precondition 
(and (lift-at slow1-0 n7) (boarded p2 slow1-0) (passengers slow1-0 n2) (next n1 n2))
:effect 
(and (passenger-at p2 n7) (not (boarded p2 slow1-0)) (not (passengers slow1-0 n2)) (passengers slow1-0 n1))
)

(:action move-down-fast_fast0_n8_n0
:precondition 
(and (above n0 n8))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-down-fast_fast0_n8_n2
:precondition 
(and (above n2 n8))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-down-fast_fast0_n8_n4
:precondition 
(and (above n4 n8))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-down-fast_fast0_n8_n6
:precondition 
(and (above n6 n8))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-up-fast_fast0_n0_n2
:precondition 
(and (above n0 n2))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-up-fast_fast0_n0_n4
:precondition 
(and (above n0 n4))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-up-fast_fast0_n0_n6
:precondition 
(and (above n0 n6))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-up-fast_fast0_n0_n8
:precondition 
(and (above n0 n8))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-up-fast_fast0_n2_n4
:precondition 
(and (above n2 n4))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-up-fast_fast0_n2_n6
:precondition 
(and (above n2 n6))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-up-fast_fast0_n2_n8
:precondition 
(and (above n2 n8))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-up-fast_fast0_n4_n6
:precondition 
(and (above n4 n6))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-up-fast_fast0_n4_n8
:precondition 
(and (above n4 n8))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-up-fast_fast0_n6_n8
:precondition 
(and (above n6 n8))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-down-fast_fast0_n2_n0
:precondition 
(and (above n0 n2))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-down-fast_fast0_n4_n0
:precondition 
(and (above n0 n4))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-down-fast_fast0_n4_n2
:precondition 
(and (above n2 n4))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-down-fast_fast0_n6_n0
:precondition 
(and (above n0 n6))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-down-fast_fast0_n6_n2
:precondition 
(and (above n2 n6))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-down-fast_fast0_n6_n4
:precondition 
(and (above n4 n6))
:effect 
(and (increase total-cost travel-fast))
)

(:action board_fast0_p0_n8_n0_n1
:precondition 
(and (passenger-at p0 n8) (next n0 n1))
:effect 
(and (not (passenger-at p0 n8)))
)

(:action board_fast0_p3_n8_n0_n1
:precondition 
(and (passenger-at p3 n8) (next n0 n1))
:effect 
(and (not (passenger-at p3 n8)))
)

(:action board_fast0_p2_n8_n0_n1
:precondition 
(and (passenger-at p2 n8) (next n0 n1))
:effect 
(and (not (passenger-at p2 n8)))
)

(:action board_fast0_p0_n8_n1_n2
:precondition 
(and (passenger-at p0 n8) (next n1 n2))
:effect 
(and (not (passenger-at p0 n8)))
)

(:action board_fast0_p3_n8_n1_n2
:precondition 
(and (passenger-at p3 n8) (next n1 n2))
:effect 
(and (not (passenger-at p3 n8)))
)

(:action board_fast0_p2_n8_n1_n2
:precondition 
(and (passenger-at p2 n8) (next n1 n2))
:effect 
(and (not (passenger-at p2 n8)))
)

(:action board_fast0_p3_n0_n1_n2
:precondition 
(and (passenger-at p3 n0) (next n1 n2))
:effect 
(and (not (passenger-at p3 n0)))
)

(:action board_fast0_p0_n0_n1_n2
:precondition 
(and (passenger-at p0 n0) (next n1 n2))
:effect 
(and (not (passenger-at p0 n0)))
)

(:action board_fast0_p0_n2_n0_n1
:precondition 
(and (passenger-at p0 n2) (next n0 n1))
:effect 
(and (not (passenger-at p0 n2)))
)

(:action board_fast0_p3_n2_n0_n1
:precondition 
(and (passenger-at p3 n2) (next n0 n1))
:effect 
(and (not (passenger-at p3 n2)))
)

(:action board_fast0_p0_n4_n0_n1
:precondition 
(and (passenger-at p0 n4) (next n0 n1))
:effect 
(and (not (passenger-at p0 n4)))
)

(:action board_fast0_p0_n4_n1_n2
:precondition 
(and (passenger-at p0 n4) (next n1 n2))
:effect 
(and (not (passenger-at p0 n4)))
)

(:action board_fast0_p3_n4_n0_n1
:precondition 
(and (passenger-at p3 n4) (next n0 n1))
:effect 
(and (not (passenger-at p3 n4)))
)

(:action board_fast0_p3_n4_n1_n2
:precondition 
(and (passenger-at p3 n4) (next n1 n2))
:effect 
(and (not (passenger-at p3 n4)))
)

(:action board_fast0_p2_n4_n0_n1
:precondition 
(and (passenger-at p2 n4) (next n0 n1))
:effect 
(and (not (passenger-at p2 n4)))
)

(:action board_fast0_p2_n4_n1_n2
:precondition 
(and (passenger-at p2 n4) (next n1 n2))
:effect 
(and (not (passenger-at p2 n4)))
)

(:action board_fast0_p0_n6_n0_n1
:precondition 
(and (passenger-at p0 n6) (next n0 n1))
:effect 
(and (not (passenger-at p0 n6)))
)

(:action board_fast0_p0_n6_n1_n2
:precondition 
(and (passenger-at p0 n6) (next n1 n2))
:effect 
(and (not (passenger-at p0 n6)))
)

(:action board_fast0_p3_n6_n0_n1
:precondition 
(and (passenger-at p3 n6) (next n0 n1))
:effect 
(and (not (passenger-at p3 n6)))
)

(:action board_fast0_p3_n6_n1_n2
:precondition 
(and (passenger-at p3 n6) (next n1 n2))
:effect 
(and (not (passenger-at p3 n6)))
)

(:action board_fast0_p2_n6_n0_n1
:precondition 
(and (passenger-at p2 n6) (next n0 n1))
:effect 
(and (not (passenger-at p2 n6)))
)

(:action board_fast0_p2_n6_n1_n2
:precondition 
(and (passenger-at p2 n6) (next n1 n2))
:effect 
(and (not (passenger-at p2 n6)))
)

(:action leave_fast0_p0_n8_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p0 n8))
)

(:action leave_fast0_p3_n8_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p3 n8))
)

(:action leave_fast0_p2_n8_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p2 n8))
)

(:action leave_fast0_p0_n2_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p0 n2))
)

(:action leave_fast0_p3_n2_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p3 n2))
)

(:action leave_fast0_p2_n2_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p2 n2))
)

(:action leave_fast0_p0_n4_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p0 n4))
)

(:action leave_fast0_p3_n4_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p3 n4))
)

(:action leave_fast0_p2_n4_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p2 n4))
)

(:action leave_fast0_p0_n6_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p0 n6))
)

(:action leave_fast0_p3_n6_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p3 n6))
)

(:action leave_fast0_p2_n6_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p2 n6))
)

(:action board_fast0_p0_n8_n2_n3
:precondition 
(and (passenger-at p0 n8) (next n2 n3))
:effect 
(and (not (passenger-at p0 n8)))
)

(:action board_fast0_p3_n8_n2_n3
:precondition 
(and (passenger-at p3 n8) (next n2 n3))
:effect 
(and (not (passenger-at p3 n8)))
)

(:action board_fast0_p2_n8_n2_n3
:precondition 
(and (passenger-at p2 n8) (next n2 n3))
:effect 
(and (not (passenger-at p2 n8)))
)

(:action board_fast0_p3_n0_n2_n3
:precondition 
(and (passenger-at p3 n0) (next n2 n3))
:effect 
(and (not (passenger-at p3 n0)))
)

(:action board_fast0_p0_n0_n2_n3
:precondition 
(and (passenger-at p0 n0) (next n2 n3))
:effect 
(and (not (passenger-at p0 n0)))
)

(:action board_fast0_p2_n2_n0_n1
:precondition 
(and (passenger-at p2 n2) (next n0 n1))
:effect 
(and (not (passenger-at p2 n2)))
)

(:action board_fast0_p0_n4_n2_n3
:precondition 
(and (passenger-at p0 n4) (next n2 n3))
:effect 
(and (not (passenger-at p0 n4)))
)

(:action board_fast0_p3_n4_n2_n3
:precondition 
(and (passenger-at p3 n4) (next n2 n3))
:effect 
(and (not (passenger-at p3 n4)))
)

(:action board_fast0_p2_n4_n2_n3
:precondition 
(and (passenger-at p2 n4) (next n2 n3))
:effect 
(and (not (passenger-at p2 n4)))
)

(:action board_fast0_p0_n6_n2_n3
:precondition 
(and (passenger-at p0 n6) (next n2 n3))
:effect 
(and (not (passenger-at p0 n6)))
)

(:action board_fast0_p3_n6_n2_n3
:precondition 
(and (passenger-at p3 n6) (next n2 n3))
:effect 
(and (not (passenger-at p3 n6)))
)

(:action board_fast0_p2_n6_n2_n3
:precondition 
(and (passenger-at p2 n6) (next n2 n3))
:effect 
(and (not (passenger-at p2 n6)))
)

(:action leave_fast0_p0_n8_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p0 n8))
)

(:action leave_fast0_p3_n8_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p3 n8))
)

(:action leave_fast0_p2_n8_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p2 n8))
)

(:action leave_fast0_p0_n0_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p0 n0))
)

(:action leave_fast0_p3_n0_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p3 n0))
)

(:action leave_fast0_p2_n0_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p2 n0))
)

(:action leave_fast0_p0_n4_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p0 n4))
)

(:action leave_fast0_p3_n4_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p3 n4))
)

(:action leave_fast0_p2_n4_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p2 n4))
)

(:action leave_fast0_p0_n6_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p0 n6))
)

(:action leave_fast0_p3_n6_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p3 n6))
)

(:action leave_fast0_p2_n6_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p2 n6))
)

(:action board_fast0_p2_n0_n1_n2
:precondition 
(and (passenger-at p2 n0) (next n1 n2))
:effect 
(and (not (passenger-at p2 n0)))
)

(:action board_fast0_p2_n0_n2_n3
:precondition 
(and (passenger-at p2 n0) (next n2 n3))
:effect 
(and (not (passenger-at p2 n0)))
)

(:action leave_fast0_p0_n8_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p0 n8))
)

(:action leave_fast0_p3_n8_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p3 n8))
)

(:action leave_fast0_p2_n8_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p2 n8))
)

(:action leave_fast0_p0_n0_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p0 n0))
)

(:action leave_fast0_p3_n0_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p3 n0))
)

(:action leave_fast0_p2_n0_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p2 n0))
)

(:action leave_fast0_p0_n4_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p0 n4))
)

(:action leave_fast0_p3_n4_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p3 n4))
)

(:action leave_fast0_p2_n4_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p2 n4))
)

(:action leave_fast0_p0_n6_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p0 n6))
)

(:action leave_fast0_p3_n6_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p3 n6))
)

(:action leave_fast0_p2_n6_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p2 n6))
)

(:action move-up-fast_fast1_n6_n8
:precondition 
(and (above n6 n8))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-down-fast_fast1_n6_n0
:precondition 
(and (above n0 n6))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-down-fast_fast1_n6_n2
:precondition 
(and (above n2 n6))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-down-fast_fast1_n6_n4
:precondition 
(and (above n4 n6))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-up-fast_fast1_n0_n2
:precondition 
(and (above n0 n2))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-up-fast_fast1_n0_n4
:precondition 
(and (above n0 n4))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-up-fast_fast1_n0_n6
:precondition 
(and (above n0 n6))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-up-fast_fast1_n0_n8
:precondition 
(and (above n0 n8))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-up-fast_fast1_n2_n4
:precondition 
(and (above n2 n4))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-up-fast_fast1_n2_n6
:precondition 
(and (above n2 n6))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-up-fast_fast1_n2_n8
:precondition 
(and (above n2 n8))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-up-fast_fast1_n4_n6
:precondition 
(and (above n4 n6))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-up-fast_fast1_n4_n8
:precondition 
(and (above n4 n8))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-down-fast_fast1_n8_n0
:precondition 
(and (above n0 n8))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-down-fast_fast1_n8_n2
:precondition 
(and (above n2 n8))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-down-fast_fast1_n8_n4
:precondition 
(and (above n4 n8))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-down-fast_fast1_n8_n6
:precondition 
(and (above n6 n8))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-down-fast_fast1_n2_n0
:precondition 
(and (above n0 n2))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-down-fast_fast1_n4_n0
:precondition 
(and (above n0 n4))
:effect 
(and (increase total-cost travel-fast))
)

(:action move-down-fast_fast1_n4_n2
:precondition 
(and (above n2 n4))
:effect 
(and (increase total-cost travel-fast))
)

(:action board_fast1_p0_n6_n0_n1
:precondition 
(and (passenger-at p0 n6) (next n0 n1))
:effect 
(and (not (passenger-at p0 n6)))
)

(:action board_fast1_p3_n6_n0_n1
:precondition 
(and (passenger-at p3 n6) (next n0 n1))
:effect 
(and (not (passenger-at p3 n6)))
)

(:action board_fast1_p2_n6_n0_n1
:precondition 
(and (passenger-at p2 n6) (next n0 n1))
:effect 
(and (not (passenger-at p2 n6)))
)

(:action board_fast1_p0_n6_n1_n2
:precondition 
(and (passenger-at p0 n6) (next n1 n2))
:effect 
(and (not (passenger-at p0 n6)))
)

(:action board_fast1_p3_n6_n1_n2
:precondition 
(and (passenger-at p3 n6) (next n1 n2))
:effect 
(and (not (passenger-at p3 n6)))
)

(:action board_fast1_p2_n6_n1_n2
:precondition 
(and (passenger-at p2 n6) (next n1 n2))
:effect 
(and (not (passenger-at p2 n6)))
)

(:action board_fast1_p0_n8_n0_n1
:precondition 
(and (passenger-at p0 n8) (next n0 n1))
:effect 
(and (not (passenger-at p0 n8)))
)

(:action board_fast1_p0_n8_n1_n2
:precondition 
(and (passenger-at p0 n8) (next n1 n2))
:effect 
(and (not (passenger-at p0 n8)))
)

(:action board_fast1_p3_n8_n0_n1
:precondition 
(and (passenger-at p3 n8) (next n0 n1))
:effect 
(and (not (passenger-at p3 n8)))
)

(:action board_fast1_p3_n8_n1_n2
:precondition 
(and (passenger-at p3 n8) (next n1 n2))
:effect 
(and (not (passenger-at p3 n8)))
)

(:action board_fast1_p2_n8_n0_n1
:precondition 
(and (passenger-at p2 n8) (next n0 n1))
:effect 
(and (not (passenger-at p2 n8)))
)

(:action board_fast1_p2_n8_n1_n2
:precondition 
(and (passenger-at p2 n8) (next n1 n2))
:effect 
(and (not (passenger-at p2 n8)))
)

(:action board_fast1_p3_n0_n1_n2
:precondition 
(and (passenger-at p3 n0) (next n1 n2))
:effect 
(and (not (passenger-at p3 n0)))
)

(:action board_fast1_p0_n0_n1_n2
:precondition 
(and (passenger-at p0 n0) (next n1 n2))
:effect 
(and (not (passenger-at p0 n0)))
)

(:action board_fast1_p2_n0_n1_n2
:precondition 
(and (passenger-at p2 n0) (next n1 n2))
:effect 
(and (not (passenger-at p2 n0)))
)

(:action board_fast1_p0_n2_n0_n1
:precondition 
(and (passenger-at p0 n2) (next n0 n1))
:effect 
(and (not (passenger-at p0 n2)))
)

(:action board_fast1_p3_n2_n0_n1
:precondition 
(and (passenger-at p3 n2) (next n0 n1))
:effect 
(and (not (passenger-at p3 n2)))
)

(:action board_fast1_p2_n2_n0_n1
:precondition 
(and (passenger-at p2 n2) (next n0 n1))
:effect 
(and (not (passenger-at p2 n2)))
)

(:action board_fast1_p0_n4_n0_n1
:precondition 
(and (passenger-at p0 n4) (next n0 n1))
:effect 
(and (not (passenger-at p0 n4)))
)

(:action board_fast1_p0_n4_n1_n2
:precondition 
(and (passenger-at p0 n4) (next n1 n2))
:effect 
(and (not (passenger-at p0 n4)))
)

(:action board_fast1_p3_n4_n0_n1
:precondition 
(and (passenger-at p3 n4) (next n0 n1))
:effect 
(and (not (passenger-at p3 n4)))
)

(:action board_fast1_p3_n4_n1_n2
:precondition 
(and (passenger-at p3 n4) (next n1 n2))
:effect 
(and (not (passenger-at p3 n4)))
)

(:action board_fast1_p2_n4_n0_n1
:precondition 
(and (passenger-at p2 n4) (next n0 n1))
:effect 
(and (not (passenger-at p2 n4)))
)

(:action board_fast1_p2_n4_n1_n2
:precondition 
(and (passenger-at p2 n4) (next n1 n2))
:effect 
(and (not (passenger-at p2 n4)))
)

(:action leave_fast1_p0_n6_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p0 n6))
)

(:action leave_fast1_p3_n6_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p3 n6))
)

(:action leave_fast1_p2_n6_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p2 n6))
)

(:action leave_fast1_p0_n8_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p0 n8))
)

(:action leave_fast1_p3_n8_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p3 n8))
)

(:action leave_fast1_p2_n8_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p2 n8))
)

(:action leave_fast1_p0_n2_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p0 n2))
)

(:action leave_fast1_p3_n2_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p3 n2))
)

(:action leave_fast1_p2_n2_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p2 n2))
)

(:action leave_fast1_p0_n4_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p0 n4))
)

(:action leave_fast1_p3_n4_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p3 n4))
)

(:action leave_fast1_p2_n4_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p2 n4))
)

(:action board_fast1_p0_n6_n2_n3
:precondition 
(and (passenger-at p0 n6) (next n2 n3))
:effect 
(and (not (passenger-at p0 n6)))
)

(:action board_fast1_p3_n6_n2_n3
:precondition 
(and (passenger-at p3 n6) (next n2 n3))
:effect 
(and (not (passenger-at p3 n6)))
)

(:action board_fast1_p2_n6_n2_n3
:precondition 
(and (passenger-at p2 n6) (next n2 n3))
:effect 
(and (not (passenger-at p2 n6)))
)

(:action board_fast1_p0_n8_n2_n3
:precondition 
(and (passenger-at p0 n8) (next n2 n3))
:effect 
(and (not (passenger-at p0 n8)))
)

(:action board_fast1_p3_n8_n2_n3
:precondition 
(and (passenger-at p3 n8) (next n2 n3))
:effect 
(and (not (passenger-at p3 n8)))
)

(:action board_fast1_p2_n8_n2_n3
:precondition 
(and (passenger-at p2 n8) (next n2 n3))
:effect 
(and (not (passenger-at p2 n8)))
)

(:action board_fast1_p3_n0_n2_n3
:precondition 
(and (passenger-at p3 n0) (next n2 n3))
:effect 
(and (not (passenger-at p3 n0)))
)

(:action board_fast1_p0_n0_n2_n3
:precondition 
(and (passenger-at p0 n0) (next n2 n3))
:effect 
(and (not (passenger-at p0 n0)))
)

(:action board_fast1_p2_n0_n2_n3
:precondition 
(and (passenger-at p2 n0) (next n2 n3))
:effect 
(and (not (passenger-at p2 n0)))
)

(:action board_fast1_p0_n4_n2_n3
:precondition 
(and (passenger-at p0 n4) (next n2 n3))
:effect 
(and (not (passenger-at p0 n4)))
)

(:action board_fast1_p3_n4_n2_n3
:precondition 
(and (passenger-at p3 n4) (next n2 n3))
:effect 
(and (not (passenger-at p3 n4)))
)

(:action board_fast1_p2_n4_n2_n3
:precondition 
(and (passenger-at p2 n4) (next n2 n3))
:effect 
(and (not (passenger-at p2 n4)))
)

(:action leave_fast1_p0_n6_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p0 n6))
)

(:action leave_fast1_p3_n6_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p3 n6))
)

(:action leave_fast1_p2_n6_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p2 n6))
)

(:action leave_fast1_p0_n8_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p0 n8))
)

(:action leave_fast1_p3_n8_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p3 n8))
)

(:action leave_fast1_p2_n8_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p2 n8))
)

(:action leave_fast1_p0_n0_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p0 n0))
)

(:action leave_fast1_p3_n0_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p3 n0))
)

(:action leave_fast1_p2_n0_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p2 n0))
)

(:action leave_fast1_p0_n4_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p0 n4))
)

(:action leave_fast1_p3_n4_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p3 n4))
)

(:action leave_fast1_p2_n4_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p2 n4))
)

(:action leave_fast1_p0_n6_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p0 n6))
)

(:action leave_fast1_p3_n6_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p3 n6))
)

(:action leave_fast1_p2_n6_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p2 n6))
)

(:action leave_fast1_p0_n8_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p0 n8))
)

(:action leave_fast1_p3_n8_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p3 n8))
)

(:action leave_fast1_p2_n8_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p2 n8))
)

(:action leave_fast1_p0_n0_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p0 n0))
)

(:action leave_fast1_p3_n0_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p3 n0))
)

(:action leave_fast1_p2_n0_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p2 n0))
)

(:action leave_fast1_p0_n4_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p0 n4))
)

(:action leave_fast1_p3_n4_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p3 n4))
)

(:action leave_fast1_p2_n4_n3_n2
:precondition 
(and (next n2 n3))
:effect 
(and (passenger-at p2 n4))
)

(:action move-down-slow_slow0-0_n4_n0
:precondition 
(and (above n0 n4))
:effect 
(and (increase total-cost travel-slow))
)

(:action move-down-slow_slow0-0_n4_n1
:precondition 
(and (above n1 n4))
:effect 
(and (increase total-cost travel-slow))
)

(:action move-down-slow_slow0-0_n4_n2
:precondition 
(and (above n2 n4))
:effect 
(and (increase total-cost travel-slow))
)

(:action move-down-slow_slow0-0_n4_n3
:precondition 
(and (above n3 n4))
:effect 
(and (increase total-cost travel-slow))
)

(:action move-up-slow_slow0-0_n0_n1
:precondition 
(and (above n0 n1))
:effect 
(and (increase total-cost travel-slow))
)

(:action move-up-slow_slow0-0_n0_n2
:precondition 
(and (above n0 n2))
:effect 
(and (increase total-cost travel-slow))
)

(:action move-up-slow_slow0-0_n0_n3
:precondition 
(and (above n0 n3))
:effect 
(and (increase total-cost travel-slow))
)

(:action move-up-slow_slow0-0_n0_n4
:precondition 
(and (above n0 n4))
:effect 
(and (increase total-cost travel-slow))
)

(:action move-up-slow_slow0-0_n1_n2
:precondition 
(and (above n1 n2))
:effect 
(and (increase total-cost travel-slow))
)

(:action move-up-slow_slow0-0_n1_n3
:precondition 
(and (above n1 n3))
:effect 
(and (increase total-cost travel-slow))
)

(:action move-up-slow_slow0-0_n1_n4
:precondition 
(and (above n1 n4))
:effect 
(and (increase total-cost travel-slow))
)

(:action move-up-slow_slow0-0_n2_n3
:precondition 
(and (above n2 n3))
:effect 
(and (increase total-cost travel-slow))
)

(:action move-up-slow_slow0-0_n2_n4
:precondition 
(and (above n2 n4))
:effect 
(and (increase total-cost travel-slow))
)

(:action move-up-slow_slow0-0_n3_n4
:precondition 
(and (above n3 n4))
:effect 
(and (increase total-cost travel-slow))
)

(:action move-down-slow_slow0-0_n1_n0
:precondition 
(and (above n0 n1))
:effect 
(and (increase total-cost travel-slow))
)

(:action move-down-slow_slow0-0_n2_n0
:precondition 
(and (above n0 n2))
:effect 
(and (increase total-cost travel-slow))
)

(:action move-down-slow_slow0-0_n2_n1
:precondition 
(and (above n1 n2))
:effect 
(and (increase total-cost travel-slow))
)

(:action move-down-slow_slow0-0_n3_n0
:precondition 
(and (above n0 n3))
:effect 
(and (increase total-cost travel-slow))
)

(:action move-down-slow_slow0-0_n3_n1
:precondition 
(and (above n1 n3))
:effect 
(and (increase total-cost travel-slow))
)

(:action move-down-slow_slow0-0_n3_n2
:precondition 
(and (above n2 n3))
:effect 
(and (increase total-cost travel-slow))
)

(:action board_slow0-0_p0_n3_n0_n1
:precondition 
(and (passenger-at p0 n3) (next n0 n1))
:effect 
(and (not (passenger-at p0 n3)))
)

(:action board_slow0-0_p3_n0_n1_n2
:precondition 
(and (passenger-at p3 n0) (next n1 n2))
:effect 
(and (not (passenger-at p3 n0)))
)

(:action board_slow0-0_p0_n3_n1_n2
:precondition 
(and (passenger-at p0 n3) (next n1 n2))
:effect 
(and (not (passenger-at p0 n3)))
)

(:action leave_slow0-0_p0_n4_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p0 n4))
)

(:action leave_slow0-0_p0_n2_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p0 n2))
)

(:action leave_slow0-0_p0_n3_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p0 n3))
)

(:action board_slow0-0_p0_n4_n0_n1
:precondition 
(and (passenger-at p0 n4) (next n0 n1))
:effect 
(and (not (passenger-at p0 n4)))
)

(:action board_slow0-0_p0_n4_n1_n2
:precondition 
(and (passenger-at p0 n4) (next n1 n2))
:effect 
(and (not (passenger-at p0 n4)))
)

(:action board_slow0-0_p0_n2_n0_n1
:precondition 
(and (passenger-at p0 n2) (next n0 n1))
:effect 
(and (not (passenger-at p0 n2)))
)

(:action leave_slow0-0_p0_n4_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p0 n4))
)

(:action leave_slow0-0_p3_n4_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p3 n4))
)

(:action leave_slow0-0_p3_n4_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p3 n4))
)

(:action leave_slow0-0_p0_n0_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p0 n0))
)

(:action leave_slow0-0_p3_n0_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p3 n0))
)

(:action leave_slow0-0_p3_n2_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p3 n2))
)

(:action leave_slow0-0_p0_n3_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p0 n3))
)

(:action leave_slow0-0_p3_n3_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p3 n3))
)

(:action leave_slow0-0_p3_n3_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p3 n3))
)

(:action board_slow0-0_p3_n4_n0_n1
:precondition 
(and (passenger-at p3 n4) (next n0 n1))
:effect 
(and (not (passenger-at p3 n4)))
)

(:action board_slow0-0_p3_n4_n1_n2
:precondition 
(and (passenger-at p3 n4) (next n1 n2))
:effect 
(and (not (passenger-at p3 n4)))
)

(:action board_slow0-0_p0_n0_n1_n2
:precondition 
(and (passenger-at p0 n0) (next n1 n2))
:effect 
(and (not (passenger-at p0 n0)))
)

(:action board_slow0-0_p3_n2_n0_n1
:precondition 
(and (passenger-at p3 n2) (next n0 n1))
:effect 
(and (not (passenger-at p3 n2)))
)

(:action board_slow0-0_p3_n3_n0_n1
:precondition 
(and (passenger-at p3 n3) (next n0 n1))
:effect 
(and (not (passenger-at p3 n3)))
)

(:action board_slow0-0_p3_n3_n1_n2
:precondition 
(and (passenger-at p3 n3) (next n1 n2))
:effect 
(and (not (passenger-at p3 n3)))
)

(:action board_slow0-0_p2_n4_n0_n1
:precondition 
(and (passenger-at p2 n4) (next n0 n1))
:effect 
(and (not (passenger-at p2 n4)))
)

(:action board_slow0-0_p2_n4_n1_n2
:precondition 
(and (passenger-at p2 n4) (next n1 n2))
:effect 
(and (not (passenger-at p2 n4)))
)

(:action board_slow0-0_p2_n0_n1_n2
:precondition 
(and (passenger-at p2 n0) (next n1 n2))
:effect 
(and (not (passenger-at p2 n0)))
)

(:action board_slow0-0_p2_n2_n0_n1
:precondition 
(and (passenger-at p2 n2) (next n0 n1))
:effect 
(and (not (passenger-at p2 n2)))
)

(:action leave_slow0-0_p2_n4_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p2 n4))
)

(:action leave_slow0-0_p2_n2_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p2 n2))
)

(:action leave_slow0-0_p2_n3_n1_n0
:precondition 
(and (next n0 n1))
:effect 
(and (passenger-at p2 n3))
)

(:action board_slow0-0_p2_n3_n0_n1
:precondition 
(and (passenger-at p2 n3) (next n0 n1))
:effect 
(and (not (passenger-at p2 n3)))
)

(:action board_slow0-0_p2_n3_n1_n2
:precondition 
(and (passenger-at p2 n3) (next n1 n2))
:effect 
(and (not (passenger-at p2 n3)))
)

(:action leave_slow0-0_p2_n4_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p2 n4))
)

(:action leave_slow0-0_p2_n0_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p2 n0))
)

(:action leave_slow0-0_p2_n3_n2_n1
:precondition 
(and (next n1 n2))
:effect 
(and (passenger-at p2 n3))
)

)
