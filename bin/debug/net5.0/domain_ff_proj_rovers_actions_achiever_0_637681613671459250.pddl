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
 objective2 - objective
 waypoint8 - waypoint
 waypoint9 - waypoint
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
 objective0 - objective
 colour - mode
 waypoint3 - waypoint
 waypoint10 - waypoint
 high_res - mode
 objective1 - objective
 camera1 - camera
 camera2 - camera
 camera3 - camera
 objective4 - objective
 rover2store - store
 waypoint7 - waypoint
 rover1store - store
 waypoint4 - waypoint
 rover0 - rover
 rover1 - rover
 rover2 - rover
 rover3 - rover
 camera0 - camera
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
(P_ARTIFICIAL17)
(P_ARTIFICIAL18)
(P_ARTIFICIAL19)
(P_ARTIFICIAL20)
(P_ARTIFICIAL21)
(P_ARTIFICIAL22)
(P_ARTIFICIAL23)
(P_ARTIFICIAL24)
(P_ARTIFICIAL25)
(P_ARTIFICIAL26)
(P_ARTIFICIAL27)
(P_ARTIFICIAL28)
(P_ARTIFICIAL29)
(P_ARTIFICIAL30)
(P_ARTIFICIAL31)
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
(P_ARTIFICIAL1018)
(P_ARTIFICIAL1019)
(P_ARTIFICIAL1020)
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
(P_ARTIFICIAL2015)
(P_ARTIFICIAL2016)
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
)

(:action dummy-init-action-rotemagent0
:precondition 
(and (can-use-init-action rotemagent0))
:effect 
(and (not (can-use-init-action rotemagent0)) (used-init-action rotemagent0) (at_soil_sample waypoint0) (at_rock_sample waypoint1) (at_soil_sample waypoint2) (at_rock_sample waypoint2) (at_soil_sample waypoint4) (at_soil_sample waypoint5) (at_soil_sample waypoint7) (at_soil_sample waypoint8) (at_rock_sample waypoint8) (at_rock_sample waypoint9) (at_soil_sample waypoint10) (at_rock_sample waypoint10) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store))
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

(:action sample_soil_rover0_rover0store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_soil_sample waypoint0) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint0)))
)

(:action sample_soil_rover0_rover0store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_soil_sample waypoint2) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint2)))
)

(:action sample_soil_rover0_rover0store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3 ) (at_soil_sample waypoint5) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint5)))
)

(:action sample_soil_rover0_rover0store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_soil_sample waypoint8) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint8)))
)

(:action sample_soil_rover0_rover0store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_soil_sample waypoint10) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint10)))
)

(:action drop_rover0_rover0store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover0store))
:effect 
(and (not (full rover0store)) (empty rover0store))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL6 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL6 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action sample_soil_rover0_rover0store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_soil_sample waypoint7) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint7)))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL6 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL10 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint2_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL11 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover0_general_waypoint5_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL12 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL13 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint10_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL14 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL6 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL10 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint2_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL11 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover0_general_waypoint5_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL12 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL13 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint10_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL14 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL10 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint2_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL11 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover0_general_waypoint5_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL12 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL13 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint10_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL14 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL6 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL10 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint2_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL11 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover0_general_waypoint5_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL12 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL13 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint10_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL14 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL10 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint2_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL11 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover0_general_waypoint5_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL12 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL13 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint10_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL14 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL16 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL17 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL18 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL19 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL20 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL21 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL22 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL23 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL24 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL25 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL26 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL27 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL28 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL29 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL30 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL16 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL17 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL18 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL19 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL20 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL21 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL22 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL23 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL24 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL25 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL26 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL27 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL28 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL29 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL30 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL16 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL17 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL18 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL19 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL20 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL21 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL22 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL23 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL24 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL25 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL26 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL27 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL28 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL29 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL30 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL16 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL17 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL18 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL19 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL20 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL21 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL22 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL23 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL24 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL25 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL26 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL27 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL28 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL29 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL30 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL16 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL17 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL18 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL19 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL20 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL21 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL22 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL23 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL24 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL25 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL26 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL27 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL28 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL29 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL30 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint9) (P_ARTIFICIAL31 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint9) (P_ARTIFICIAL31 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint9) (P_ARTIFICIAL31 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint9) (P_ARTIFICIAL31 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint9) (P_ARTIFICIAL31 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL7 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action dummy-init-action-rotemagent1
:precondition 
(and (can-use-init-action rotemagent1))
:effect 
(and (not (can-use-init-action rotemagent1)) (used-init-action rotemagent1) (at_soil_sample waypoint0) (at_rock_sample waypoint1) (at_soil_sample waypoint2) (at_rock_sample waypoint2) (at_soil_sample waypoint4) (at_soil_sample waypoint5) (at_soil_sample waypoint7) (at_soil_sample waypoint8) (at_rock_sample waypoint8) (at_rock_sample waypoint9) (at_soil_sample waypoint10) (at_rock_sample waypoint10) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (regular-actions-stage rotemplaceholder))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint9) (P_ARTIFICIAL1001 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint9) (P_ARTIFICIAL1003 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint9) (P_ARTIFICIAL1004 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint9) (P_ARTIFICIAL1005 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint9) (P_ARTIFICIAL1006 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint9) (P_ARTIFICIAL1007 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint9) (P_ARTIFICIAL1008 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint9) (P_ARTIFICIAL1009 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint9) (P_ARTIFICIAL1010 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint9) (P_ARTIFICIAL1011 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1012 ) (at_lander general waypoint9) (P_ARTIFICIAL1001 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1012 ) (at_lander general waypoint9) (P_ARTIFICIAL1003 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1012 ) (at_lander general waypoint9) (P_ARTIFICIAL1004 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1012 ) (at_lander general waypoint9) (P_ARTIFICIAL1005 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1012 ) (at_lander general waypoint9) (P_ARTIFICIAL1006 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1012 ) (at_lander general waypoint9) (P_ARTIFICIAL1007 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1012 ) (at_lander general waypoint9) (P_ARTIFICIAL1008 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1012 ) (at_lander general waypoint9) (P_ARTIFICIAL1009 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1012 ) (at_lander general waypoint9) (P_ARTIFICIAL1010 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1012 ) (at_lander general waypoint9) (P_ARTIFICIAL1011 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1013 ) (at_lander general waypoint9) (P_ARTIFICIAL1001 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1013 ) (at_lander general waypoint9) (P_ARTIFICIAL1003 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1013 ) (at_lander general waypoint9) (P_ARTIFICIAL1004 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1013 ) (at_lander general waypoint9) (P_ARTIFICIAL1005 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1013 ) (at_lander general waypoint9) (P_ARTIFICIAL1006 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1013 ) (at_lander general waypoint9) (P_ARTIFICIAL1007 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1013 ) (at_lander general waypoint9) (P_ARTIFICIAL1008 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1013 ) (at_lander general waypoint9) (P_ARTIFICIAL1009 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1013 ) (at_lander general waypoint9) (P_ARTIFICIAL1010 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1013 ) (at_lander general waypoint9) (P_ARTIFICIAL1011 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint9) (P_ARTIFICIAL1001 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint9) (P_ARTIFICIAL1003 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint9) (P_ARTIFICIAL1004 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint9) (P_ARTIFICIAL1005 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint9) (P_ARTIFICIAL1006 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint9) (P_ARTIFICIAL1007 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint9) (P_ARTIFICIAL1008 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint9) (P_ARTIFICIAL1009 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint9) (P_ARTIFICIAL1010 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint9) (P_ARTIFICIAL1011 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint9) (P_ARTIFICIAL1001 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint9) (P_ARTIFICIAL1003 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint9) (P_ARTIFICIAL1004 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint9) (P_ARTIFICIAL1005 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint9) (P_ARTIFICIAL1006 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint9) (P_ARTIFICIAL1007 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint9) (P_ARTIFICIAL1008 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint9) (P_ARTIFICIAL1009 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint9) (P_ARTIFICIAL1010 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint9) (P_ARTIFICIAL1011 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint9) (P_ARTIFICIAL1016 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint9) (P_ARTIFICIAL1017 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint9) (P_ARTIFICIAL1018 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint9) (P_ARTIFICIAL1019 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint9) (P_ARTIFICIAL1020 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1012 ) (at_lander general waypoint9) (P_ARTIFICIAL1016 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1012 ) (at_lander general waypoint9) (P_ARTIFICIAL1017 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1012 ) (at_lander general waypoint9) (P_ARTIFICIAL1018 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1012 ) (at_lander general waypoint9) (P_ARTIFICIAL1019 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1012 ) (at_lander general waypoint9) (P_ARTIFICIAL1020 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1013 ) (at_lander general waypoint9) (P_ARTIFICIAL1016 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1013 ) (at_lander general waypoint9) (P_ARTIFICIAL1017 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1013 ) (at_lander general waypoint9) (P_ARTIFICIAL1018 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1013 ) (at_lander general waypoint9) (P_ARTIFICIAL1019 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1013 ) (at_lander general waypoint9) (P_ARTIFICIAL1020 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint9) (P_ARTIFICIAL1016 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint9) (P_ARTIFICIAL1017 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint9) (P_ARTIFICIAL1018 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint9) (P_ARTIFICIAL1019 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_lander general waypoint9) (P_ARTIFICIAL1020 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint9) (P_ARTIFICIAL1016 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint9) (P_ARTIFICIAL1017 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint9) (P_ARTIFICIAL1018 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint9) (P_ARTIFICIAL1019 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint9) (P_ARTIFICIAL1020 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action dummy-init-action-rotemagent2
:precondition 
(and (can-use-init-action rotemagent2))
:effect 
(and (not (can-use-init-action rotemagent2)) (used-init-action rotemagent2) (at_soil_sample waypoint0) (at_rock_sample waypoint1) (at_soil_sample waypoint2) (at_rock_sample waypoint2) (at_soil_sample waypoint4) (at_soil_sample waypoint5) (at_soil_sample waypoint7) (at_soil_sample waypoint8) (at_rock_sample waypoint8) (at_rock_sample waypoint9) (at_soil_sample waypoint10) (at_rock_sample waypoint10) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover2_rover2store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_soil_sample waypoint4) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint4)))
)

(:action sample_soil_rover2_rover2store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_soil_sample waypoint5) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint5)))
)

(:action sample_soil_rover2_rover2store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_soil_sample waypoint10) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint10)))
)

(:action sample_soil_rover2_rover2store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_soil_sample waypoint0) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint0)))
)

(:action sample_soil_rover2_rover2store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_soil_sample waypoint7) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint7)))
)

(:action sample_soil_rover2_rover2store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_soil_sample waypoint2) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint2)))
)

(:action sample_soil_rover2_rover2store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_soil_sample waypoint8) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint8)))
)

(:action drop_rover2_rover2store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover2store))
:effect 
(and (not (full rover2store)) (empty rover2store))
)

(:action communicate_soil_data_rover2_general_waypoint4_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint9) (P_ARTIFICIAL2008 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint9) (P_ARTIFICIAL2010 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover2_general_waypoint10_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint9) (P_ARTIFICIAL2011 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover2_general_waypoint4_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint9) (P_ARTIFICIAL2008 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint9) (P_ARTIFICIAL2010 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover2_general_waypoint10_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint9) (P_ARTIFICIAL2011 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover2_general_waypoint4_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint9) (P_ARTIFICIAL2008 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint9) (P_ARTIFICIAL2010 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover2_general_waypoint10_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint9) (P_ARTIFICIAL2011 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover2_general_waypoint4_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint9) (P_ARTIFICIAL2008 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint9) (P_ARTIFICIAL2010 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover2_general_waypoint10_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint9) (P_ARTIFICIAL2011 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover2_general_waypoint4_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint9) (P_ARTIFICIAL2008 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint9) (P_ARTIFICIAL2010 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover2_general_waypoint10_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint9) (P_ARTIFICIAL2011 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint9) (P_ARTIFICIAL2013 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint7_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint9) (P_ARTIFICIAL2014 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover2_general_waypoint2_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint9) (P_ARTIFICIAL2015 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover2_general_waypoint8_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint9) (P_ARTIFICIAL2016 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint9) (P_ARTIFICIAL2013 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint7_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint9) (P_ARTIFICIAL2014 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover2_general_waypoint2_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint9) (P_ARTIFICIAL2015 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover2_general_waypoint8_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint9) (P_ARTIFICIAL2016 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint9) (P_ARTIFICIAL2013 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint7_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint9) (P_ARTIFICIAL2014 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover2_general_waypoint2_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint9) (P_ARTIFICIAL2015 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover2_general_waypoint8_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint9) (P_ARTIFICIAL2016 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint9) (P_ARTIFICIAL2013 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint7_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint9) (P_ARTIFICIAL2014 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover2_general_waypoint2_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint9) (P_ARTIFICIAL2015 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover2_general_waypoint8_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint9) (P_ARTIFICIAL2016 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint9) (P_ARTIFICIAL2013 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint7_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint9) (P_ARTIFICIAL2014 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover2_general_waypoint2_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint9) (P_ARTIFICIAL2015 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover2_general_waypoint8_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint9) (P_ARTIFICIAL2016 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL2009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action dummy-init-action-rotemagent3
:precondition 
(and (can-use-init-action rotemagent3))
:effect 
(and (not (can-use-init-action rotemagent3)) (used-init-action rotemagent3) (at_soil_sample waypoint0) (at_rock_sample waypoint1) (at_soil_sample waypoint2) (at_rock_sample waypoint2) (at_soil_sample waypoint4) (at_soil_sample waypoint5) (at_soil_sample waypoint7) (at_soil_sample waypoint8) (at_rock_sample waypoint8) (at_rock_sample waypoint9) (at_soil_sample waypoint10) (at_rock_sample waypoint10) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store))
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

(:action sample_rock_rover3_rover3store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_rock_sample waypoint2) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint2)))
)

(:action sample_rock_rover3_rover3store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_rock_sample waypoint8) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint8)))
)

(:action sample_rock_rover3_rover3store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_rock_sample waypoint9) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint9)))
)

(:action sample_rock_rover3_rover3store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_rock_sample waypoint10) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint10)))
)

(:action drop_rover3_rover3store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover3store))
:effect 
(and (not (full rover3store)) (empty rover3store))
)

(:action communicate_rock_data_rover3_general_waypoint1_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint9) (P_ARTIFICIAL3006 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover3_general_waypoint2_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint9) (P_ARTIFICIAL3008 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint9) (P_ARTIFICIAL3009 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint9) (P_ARTIFICIAL3010 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint1_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint9) (P_ARTIFICIAL3006 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover3_general_waypoint2_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint9) (P_ARTIFICIAL3008 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint9) (P_ARTIFICIAL3009 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint9) (P_ARTIFICIAL3010 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint1_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint9) (P_ARTIFICIAL3006 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover3_general_waypoint2_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint9) (P_ARTIFICIAL3008 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint9) (P_ARTIFICIAL3009 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint9) (P_ARTIFICIAL3010 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint1_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3013 ) (at_lander general waypoint9) (P_ARTIFICIAL3006 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover3_general_waypoint2_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3013 ) (at_lander general waypoint9) (P_ARTIFICIAL3008 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3013 ) (at_lander general waypoint9) (P_ARTIFICIAL3009 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3013 ) (at_lander general waypoint9) (P_ARTIFICIAL3010 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint1_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint9) (P_ARTIFICIAL3006 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover3_general_waypoint2_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint9) (P_ARTIFICIAL3008 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint9) (P_ARTIFICIAL3009 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint9) (P_ARTIFICIAL3010 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint10_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint9) (P_ARTIFICIAL3014 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover3_general_waypoint10_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint9) (P_ARTIFICIAL3014 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover3_general_waypoint10_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint9) (P_ARTIFICIAL3014 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover3_general_waypoint10_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3013 ) (at_lander general waypoint9) (P_ARTIFICIAL3014 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover3_general_waypoint10_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint9) (P_ARTIFICIAL3014 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint9) (P_ARTIFICIAL3015 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint9) (P_ARTIFICIAL3016 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint9) (P_ARTIFICIAL3017 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint9) (P_ARTIFICIAL3018 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint3_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint9) (P_ARTIFICIAL3019 ) (visible waypoint3 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint9) (P_ARTIFICIAL3015 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint9) (P_ARTIFICIAL3016 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint9) (P_ARTIFICIAL3017 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint9) (P_ARTIFICIAL3018 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint7_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint9) (P_ARTIFICIAL3019 ) (visible waypoint7 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint9) (P_ARTIFICIAL3015 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint9) (P_ARTIFICIAL3016 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint9) (P_ARTIFICIAL3017 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint9) (P_ARTIFICIAL3018 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint4_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint9) (P_ARTIFICIAL3019 ) (visible waypoint4 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3013 ) (at_lander general waypoint9) (P_ARTIFICIAL3015 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3013 ) (at_lander general waypoint9) (P_ARTIFICIAL3016 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3013 ) (at_lander general waypoint9) (P_ARTIFICIAL3017 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3013 ) (at_lander general waypoint9) (P_ARTIFICIAL3018 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint6_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3013 ) (at_lander general waypoint9) (P_ARTIFICIAL3019 ) (visible waypoint6 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint9) (P_ARTIFICIAL3015 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint9) (P_ARTIFICIAL3016 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint9) (P_ARTIFICIAL3017 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint9) (P_ARTIFICIAL3018 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint8_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint9) (P_ARTIFICIAL3019 ) (visible waypoint8 waypoint9) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

)
