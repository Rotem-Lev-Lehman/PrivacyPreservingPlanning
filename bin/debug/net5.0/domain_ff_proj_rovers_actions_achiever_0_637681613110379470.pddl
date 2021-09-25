(define (domain PublicDomain)
(:requirements :strips :typing :equality)
(:types object
rotemagent - object
rotemplaceholder - object
rover - object
waypoint - object
store - object
camera - object
mode - object
lander - object
objective - object)
(:constants
 rotemagent0 - rotemagent
 rotemagent1 - rotemagent
 rotemagent2 - rotemagent
 rotemagent3 - rotemagent
 rotemplaceholder - rotemplaceholder
 camera2 - camera
 objective2 - objective
 waypoint6 - waypoint
 rover3store - store
 low_res - mode
 waypoint5 - waypoint
 rover0store - store
 waypoint2 - waypoint
 waypoint0 - waypoint
 general - lander
 objective3 - objective
 waypoint1 - waypoint
 colour - mode
 high_res - mode
 camera0 - camera
 camera1 - camera
 waypoint3 - waypoint
 camera3 - camera
 camera4 - camera
 camera5 - camera
 objective1 - objective
 rover2store - store
 objective0 - objective
 rover1store - store
 waypoint4 - waypoint
 rover0 - rover
 rover1 - rover
 rover2 - rover
 rover3 - rover
)

(:predicates
(can-use-init-action ?rotemagent - rotemagent)
(used-init-action ?rotemagent - rotemagent)
(regular-actions-stage ?rotemplaceholder - rotemplaceholder)
(visible ?w - waypoint ?p - waypoint)
(visible_from ?o - objective ?w - waypoint)
(at_rock_sample ?w - waypoint)
(at_soil_sample ?w - waypoint)
(at_lander ?x - lander ?y - waypoint)
(communicated_image_data ?o - objective ?m - mode)
(communicated_rock_data ?w - waypoint)
(communicated_soil_data ?w - waypoint)
(empty ?s - store)
(full ?s - store)
(supports ?c - camera ?m - mode)
(calibration_target ?i - camera ?o - objective)
(channel_free ?l - lander)
(at ?agent - rover ?y - waypoint)
(can_traverse ?agent - rover ?x - waypoint ?y - waypoint)
(equipped_for_soil_analysis ?agent - rover)
(equipped_for_rock_analysis ?agent - rover)
(equipped_for_imaging ?agent - rover)
(have_rock_analysis ?agent - rover ?w - waypoint)
(have_soil_analysis ?agent - rover ?w - waypoint)
(calibrated ?c - camera ?agent - rover)
(available ?agent - rover)
(have_image ?agent - rover ?o - objective ?m - mode)
(store_of ?s - store ?agent - rover)
(on_board ?i - camera ?agent - rover)
(P_ARTIFICIALStartState)
(P_ARTIFICIAL0)
(P_ARTIFICIAL1)
(P_ARTIFICIAL2)
(P_ARTIFICIAL3)
(P_ARTIFICIAL4)
(P_ARTIFICIAL5)
(P_ARTIFICIAL6)
(P_ARTIFICIAL7)
(P_ARTIFICIAL8)
(P_ARTIFICIAL9)
(P_ARTIFICIAL10)
(P_ARTIFICIAL11)
(P_ARTIFICIAL12)
(P_ARTIFICIAL13)
(P_ARTIFICIAL14)
(P_ARTIFICIAL15)
(P_ARTIFICIAL16)
(P_ARTIFICIAL1000)
(P_ARTIFICIAL1001)
(P_ARTIFICIAL1002)
(P_ARTIFICIAL1003)
(P_ARTIFICIAL1004)
(P_ARTIFICIAL1005)
(P_ARTIFICIAL1006)
(P_ARTIFICIAL1007)
(P_ARTIFICIAL1008)
(P_ARTIFICIAL1009)
(P_ARTIFICIAL1010)
(P_ARTIFICIAL1011)
(P_ARTIFICIAL1012)
(P_ARTIFICIAL1013)
(P_ARTIFICIAL1014)
(P_ARTIFICIAL1015)
(P_ARTIFICIAL1016)
(P_ARTIFICIAL1017)
(P_ARTIFICIAL2000)
(P_ARTIFICIAL2001)
(P_ARTIFICIAL2002)
(P_ARTIFICIAL2003)
(P_ARTIFICIAL2004)
(P_ARTIFICIAL2005)
(P_ARTIFICIAL2006)
(P_ARTIFICIAL2007)
(P_ARTIFICIAL2008)
(P_ARTIFICIAL2009)
(P_ARTIFICIAL2010)
(P_ARTIFICIAL2011)
(P_ARTIFICIAL2012)
(P_ARTIFICIAL2013)
(P_ARTIFICIAL2014)
(P_ARTIFICIAL3000)
(P_ARTIFICIAL3001)
(P_ARTIFICIAL3002)
(P_ARTIFICIAL3003)
(P_ARTIFICIAL3004)
(P_ARTIFICIAL3005)
(P_ARTIFICIAL3006)
(P_ARTIFICIAL3007)
(P_ARTIFICIAL3008)
(P_ARTIFICIAL3009)
(P_ARTIFICIAL3010)
(P_ARTIFICIAL3011)
(P_ARTIFICIAL3012)
(P_ARTIFICIAL3013)
(P_ARTIFICIAL3014)
(P_ARTIFICIAL3015)
(P_ARTIFICIAL3016)
(P_ARTIFICIAL3017)
(P_ARTIFICIAL3018)
(P_ARTIFICIAL3019)
(P_ARTIFICIAL3020)
(P_ARTIFICIAL3021)
(P_ARTIFICIAL3022)
(P_ARTIFICIAL3023)
(P_ARTIFICIAL3024)
(P_ARTIFICIAL3025)
(P_ARTIFICIAL3026)
(P_ARTIFICIAL3027)
(P_ARTIFICIAL3028)
)

(:action dummy-init-action-rotemagent0
:precondition 
(and (can-use-init-action rotemagent0))
:effect 
(and (not (can-use-init-action rotemagent0)) (used-init-action rotemagent0) (at_soil_sample waypoint0) (at_rock_sample waypoint0) (at_rock_sample waypoint1) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_soil_sample waypoint6) (at_rock_sample waypoint6) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover0_rover0store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_soil_sample waypoint4) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint4)))
)

(:action sample_rock_rover0_rover0store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_rock_sample waypoint4) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint4)))
)

(:action sample_soil_rover0_rover0store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_soil_sample waypoint0) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint0)))
)

(:action sample_soil_rover0_rover0store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_soil_sample waypoint3) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint3)))
)

(:action sample_soil_rover0_rover0store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3 ) (at_soil_sample waypoint6) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint6)))
)

(:action sample_rock_rover0_rover0store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_rock_sample waypoint0) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint0)))
)

(:action sample_rock_rover0_rover0store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_rock_sample waypoint1) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint1)))
)

(:action sample_rock_rover0_rover0store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_rock_sample waypoint3) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint3)))
)

(:action sample_rock_rover0_rover0store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3 ) (at_rock_sample waypoint6) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint6)))
)

(:action drop_rover0_rover0store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover0store))
:effect 
(and (not (full rover0store)) (empty rover0store))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint1) (P_ARTIFICIAL5 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL5 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint1) (P_ARTIFICIAL5 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint1) (P_ARTIFICIAL8 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL8 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint1) (P_ARTIFICIAL8 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint1) (P_ARTIFICIAL9 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint3_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint1) (P_ARTIFICIAL10 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover0_general_waypoint6_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint1) (P_ARTIFICIAL11 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL9 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint3_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL10 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover0_general_waypoint6_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL11 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL5 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL9 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint3_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL10 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover0_general_waypoint6_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL11 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint1) (P_ARTIFICIAL9 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint3_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint1) (P_ARTIFICIAL10 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover0_general_waypoint6_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint1) (P_ARTIFICIAL11 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_rock_data_rover0_general_waypoint0_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint1) (P_ARTIFICIAL13 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover0_general_waypoint1_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint1) (P_ARTIFICIAL14 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint1) (P_ARTIFICIAL15 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint6_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint1) (P_ARTIFICIAL16 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover0_general_waypoint0_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL13 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover0_general_waypoint1_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL14 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL15 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint6_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL16 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL8 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint0_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL13 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover0_general_waypoint1_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL14 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL15 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint6_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL16 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover0_general_waypoint0_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint1) (P_ARTIFICIAL13 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover0_general_waypoint1_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint1) (P_ARTIFICIAL14 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint1) (P_ARTIFICIAL15 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint6_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint1) (P_ARTIFICIAL16 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action dummy-init-action-rotemagent1
:precondition 
(and (can-use-init-action rotemagent1))
:effect 
(and (not (can-use-init-action rotemagent1)) (used-init-action rotemagent1) (at_soil_sample waypoint0) (at_rock_sample waypoint0) (at_rock_sample waypoint1) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_soil_sample waypoint6) (at_rock_sample waypoint6) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover1_rover1store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_soil_sample waypoint0) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint0)))
)

(:action sample_soil_rover1_rover1store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1001 ) (at_soil_sample waypoint6) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint6)))
)

(:action drop_rover1_rover1store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover1store))
:effect 
(and (not (full rover1store)) (empty rover1store))
)

(:action communicate_soil_data_rover1_general_waypoint0_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1002 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover1_general_waypoint0_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint1) (P_ARTIFICIAL1002 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover1_general_waypoint6_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1005 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover1_general_waypoint6_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint1) (P_ARTIFICIAL1005 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1006 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1007 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1008 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1009 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1010 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1011 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1012 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1013 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1014 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1015 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1016 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1017 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint1) (P_ARTIFICIAL1006 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint1) (P_ARTIFICIAL1007 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint1) (P_ARTIFICIAL1008 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint1) (P_ARTIFICIAL1009 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint1) (P_ARTIFICIAL1010 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint1) (P_ARTIFICIAL1011 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint1) (P_ARTIFICIAL1012 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint1) (P_ARTIFICIAL1013 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint1) (P_ARTIFICIAL1014 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint1) (P_ARTIFICIAL1015 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint1) (P_ARTIFICIAL1016 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint1) (P_ARTIFICIAL1017 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action dummy-init-action-rotemagent2
:precondition 
(and (can-use-init-action rotemagent2))
:effect 
(and (not (can-use-init-action rotemagent2)) (used-init-action rotemagent2) (at_soil_sample waypoint0) (at_rock_sample waypoint0) (at_rock_sample waypoint1) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_soil_sample waypoint6) (at_rock_sample waypoint6) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover2_rover2store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_rock_sample waypoint3) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint3)))
)

(:action sample_rock_rover2_rover2store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_rock_sample waypoint4) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint4)))
)

(:action drop_rover2_rover2store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover2store))
:effect 
(and (not (full rover2store)) (empty rover2store))
)

(:action communicate_rock_data_rover2_general_waypoint3_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint1) (P_ARTIFICIAL2003 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover2_general_waypoint3_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2003 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action sample_rock_rover2_rover2store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_rock_sample waypoint0) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint0)))
)

(:action sample_rock_rover2_rover2store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_rock_sample waypoint1) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint1)))
)

(:action communicate_rock_data_rover2_general_waypoint3_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2003 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2007 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint3_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2003 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2007 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint1) (P_ARTIFICIAL2007 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2007 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2009 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover2_general_waypoint1_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2010 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2009 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover2_general_waypoint1_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2010 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint1) (P_ARTIFICIAL2009 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover2_general_waypoint1_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint1) (P_ARTIFICIAL2010 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2009 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover2_general_waypoint1_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2010 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2011 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2012 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2013 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2014 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2011 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2012 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2013 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2014 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint1) (P_ARTIFICIAL2011 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint1) (P_ARTIFICIAL2012 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint1) (P_ARTIFICIAL2013 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint1) (P_ARTIFICIAL2014 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2011 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2012 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2013 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2014 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action dummy-init-action-rotemagent3
:precondition 
(and (can-use-init-action rotemagent3))
:effect 
(and (not (can-use-init-action rotemagent3)) (used-init-action rotemagent3) (at_soil_sample waypoint0) (at_rock_sample waypoint0) (at_rock_sample waypoint1) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_soil_sample waypoint6) (at_rock_sample waypoint6) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover3_rover3store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_rock_sample waypoint1) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint1)))
)

(:action sample_soil_rover3_rover3store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_soil_sample waypoint0) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint0)))
)

(:action sample_rock_rover3_rover3store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_rock_sample waypoint0) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint0)))
)

(:action drop_rover3_rover3store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover3store))
:effect 
(and (not (full rover3store)) (empty rover3store))
)

(:action communicate_rock_data_rover3_general_waypoint1_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint1) (P_ARTIFICIAL3002 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action sample_soil_rover3_rover3store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_soil_sample waypoint4) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint4)))
)

(:action sample_soil_rover3_rover3store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_soil_sample waypoint6) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint6)))
)

(:action sample_rock_rover3_rover3store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_rock_sample waypoint4) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover3_rover3store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_rock_sample waypoint6) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint6)))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint1) (P_ARTIFICIAL3006 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint1) (P_ARTIFICIAL3006 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint1) (P_ARTIFICIAL3006 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint1) (P_ARTIFICIAL3008 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover3_general_waypoint1_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint1) (P_ARTIFICIAL3002 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint1) (P_ARTIFICIAL3008 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover3_general_waypoint1_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint1) (P_ARTIFICIAL3002 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint1) (P_ARTIFICIAL3008 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action sample_soil_rover3_rover3store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_soil_sample waypoint3) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint3)))
)

(:action sample_rock_rover3_rover3store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_rock_sample waypoint3) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint3)))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint1) (P_ARTIFICIAL3010 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover3_general_waypoint6_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint1) (P_ARTIFICIAL3011 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint1) (P_ARTIFICIAL3010 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover3_general_waypoint6_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint1) (P_ARTIFICIAL3011 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3006 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3010 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover3_general_waypoint6_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3011 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint1) (P_ARTIFICIAL3010 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover3_general_waypoint6_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint1) (P_ARTIFICIAL3011 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint1) (P_ARTIFICIAL3013 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint1) (P_ARTIFICIAL3014 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint1) (P_ARTIFICIAL3013 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint1) (P_ARTIFICIAL3014 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint1_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3002 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3008 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3013 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3014 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint1) (P_ARTIFICIAL3013 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint1) (P_ARTIFICIAL3014 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint1) (P_ARTIFICIAL3015 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint1) (P_ARTIFICIAL3016 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint1) (P_ARTIFICIAL3017 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint1) (P_ARTIFICIAL3018 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint1) (P_ARTIFICIAL3019 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint1) (P_ARTIFICIAL3020 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint1) (P_ARTIFICIAL3021 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint1) (P_ARTIFICIAL3022 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint1) (P_ARTIFICIAL3023 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint1) (P_ARTIFICIAL3024 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint1) (P_ARTIFICIAL3025 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint1) (P_ARTIFICIAL3026 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint1) (P_ARTIFICIAL3015 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint1) (P_ARTIFICIAL3016 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint1) (P_ARTIFICIAL3017 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint1) (P_ARTIFICIAL3018 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint1) (P_ARTIFICIAL3019 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint1) (P_ARTIFICIAL3020 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint1) (P_ARTIFICIAL3021 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint1) (P_ARTIFICIAL3022 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint1) (P_ARTIFICIAL3023 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint1) (P_ARTIFICIAL3024 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint1) (P_ARTIFICIAL3025 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint1) (P_ARTIFICIAL3026 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3015 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3016 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3017 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3018 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3019 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3020 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3021 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3022 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3023 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3024 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3025 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3026 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint1) (P_ARTIFICIAL3015 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint1) (P_ARTIFICIAL3016 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint1) (P_ARTIFICIAL3017 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint1) (P_ARTIFICIAL3018 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint1) (P_ARTIFICIAL3019 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint1) (P_ARTIFICIAL3020 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint1) (P_ARTIFICIAL3021 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint1) (P_ARTIFICIAL3022 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint1) (P_ARTIFICIAL3023 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint1) (P_ARTIFICIAL3024 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint1) (P_ARTIFICIAL3025 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint1) (P_ARTIFICIAL3026 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint1) (P_ARTIFICIAL3027 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint1) (P_ARTIFICIAL3027 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3027 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint1) (P_ARTIFICIAL3027 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint0_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint1) (P_ARTIFICIAL3028 ) (visible waypoint0 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint1) (P_ARTIFICIAL3028 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3028 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint1) (P_ARTIFICIAL3028 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3003 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

)
