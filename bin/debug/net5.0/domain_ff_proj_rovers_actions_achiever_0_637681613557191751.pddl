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
 waypoint4 - waypoint
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
 objective1 - objective
 camera1 - camera
 camera2 - camera
 camera3 - camera
 camera4 - camera
 rover2store - store
 waypoint7 - waypoint
 rover1store - store
 low_res - mode
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
(P_ARTIFICIAL1021)
(P_ARTIFICIAL1022)
(P_ARTIFICIAL1023)
(P_ARTIFICIAL1024)
(P_ARTIFICIAL2000)
(P_ARTIFICIAL2001)
(P_ARTIFICIAL2002)
(P_ARTIFICIAL2003)
(P_ARTIFICIAL2004)
(P_ARTIFICIAL2005)
(P_ARTIFICIAL2006)
(P_ARTIFICIAL2007)
(P_ARTIFICIAL2008)
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
)

(:action dummy-init-action-rotemagent0
:precondition 
(and (can-use-init-action rotemagent0))
:effect 
(and (not (can-use-init-action rotemagent0)) (used-init-action rotemagent0) (at_rock_sample waypoint1) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_rock_sample waypoint5) (at_soil_sample waypoint6) (at_rock_sample waypoint8) (at_soil_sample waypoint9) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store))
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

(:action sample_soil_rover0_rover0store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_soil_sample waypoint6) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint6)))
)

(:action sample_soil_rover0_rover0store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_soil_sample waypoint3) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint3)))
)

(:action sample_soil_rover0_rover0store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3 ) (at_soil_sample waypoint9) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint9)))
)

(:action drop_rover0_rover0store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover0store))
:effect 
(and (not (full rover0store)) (empty rover0store))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint7) (P_ARTIFICIAL4 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover0_general_waypoint6_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint7) (P_ARTIFICIAL6 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint7) (P_ARTIFICIAL4 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover0_general_waypoint6_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint7) (P_ARTIFICIAL6 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint7) (P_ARTIFICIAL4 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover0_general_waypoint6_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint7) (P_ARTIFICIAL6 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint7) (P_ARTIFICIAL4 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover0_general_waypoint6_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint7) (P_ARTIFICIAL6 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint7) (P_ARTIFICIAL10 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint7) (P_ARTIFICIAL11 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint7) (P_ARTIFICIAL12 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint7) (P_ARTIFICIAL13 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint7) (P_ARTIFICIAL14 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint7) (P_ARTIFICIAL15 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint7) (P_ARTIFICIAL16 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint7) (P_ARTIFICIAL17 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint7) (P_ARTIFICIAL10 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint7) (P_ARTIFICIAL11 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint7) (P_ARTIFICIAL12 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint7) (P_ARTIFICIAL13 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint7) (P_ARTIFICIAL14 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint7) (P_ARTIFICIAL15 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint7) (P_ARTIFICIAL16 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint7) (P_ARTIFICIAL17 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint7) (P_ARTIFICIAL10 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint7) (P_ARTIFICIAL11 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint7) (P_ARTIFICIAL12 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint7) (P_ARTIFICIAL13 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint7) (P_ARTIFICIAL14 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint7) (P_ARTIFICIAL15 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint7) (P_ARTIFICIAL16 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint7) (P_ARTIFICIAL17 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint7) (P_ARTIFICIAL10 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint7) (P_ARTIFICIAL11 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint7) (P_ARTIFICIAL12 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint7) (P_ARTIFICIAL13 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint7) (P_ARTIFICIAL14 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint7) (P_ARTIFICIAL15 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint7) (P_ARTIFICIAL16 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint7) (P_ARTIFICIAL17 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_soil_data_rover0_general_waypoint3_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint7) (P_ARTIFICIAL18 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint7) (P_ARTIFICIAL19 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint3_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint7) (P_ARTIFICIAL18 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint7) (P_ARTIFICIAL19 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint3_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint7) (P_ARTIFICIAL18 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint7) (P_ARTIFICIAL19 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint3_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint7) (P_ARTIFICIAL18 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint7) (P_ARTIFICIAL19 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action dummy-init-action-rotemagent1
:precondition 
(and (can-use-init-action rotemagent1))
:effect 
(and (not (can-use-init-action rotemagent1)) (used-init-action rotemagent1) (at_rock_sample waypoint1) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_rock_sample waypoint5) (at_soil_sample waypoint6) (at_rock_sample waypoint8) (at_soil_sample waypoint9) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover1_rover1store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_soil_sample waypoint4) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint4)))
)

(:action sample_rock_rover1_rover1store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_rock_sample waypoint4) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint4)))
)

(:action sample_soil_rover1_rover1store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1001 ) (at_soil_sample waypoint6) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint6)))
)

(:action sample_soil_rover1_rover1store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_soil_sample waypoint9) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint9)))
)

(:action sample_rock_rover1_rover1store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_rock_sample waypoint5) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint5)))
)

(:action drop_rover1_rover1store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover1store))
:effect 
(and (not (full rover1store)) (empty rover1store))
)

(:action communicate_soil_data_rover1_general_waypoint4_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint7) (P_ARTIFICIAL1004 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_rock_data_rover1_general_waypoint4_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint7) (P_ARTIFICIAL1006 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action sample_soil_rover1_rover1store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_soil_sample waypoint3) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint3)))
)

(:action sample_rock_rover1_rover1store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_rock_sample waypoint3) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint3)))
)

(:action sample_rock_rover1_rover1store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_rock_sample waypoint1) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint1)))
)

(:action sample_rock_rover1_rover1store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_rock_sample waypoint8) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint8)))
)

(:action communicate_soil_data_rover1_general_waypoint4_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint7) (P_ARTIFICIAL1004 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover1_general_waypoint6_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint7) (P_ARTIFICIAL1010 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover1_general_waypoint9_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint7) (P_ARTIFICIAL1011 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover1_general_waypoint4_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint7) (P_ARTIFICIAL1004 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover1_general_waypoint6_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint7) (P_ARTIFICIAL1010 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover1_general_waypoint9_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint7) (P_ARTIFICIAL1011 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover1_general_waypoint6_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint7) (P_ARTIFICIAL1010 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover1_general_waypoint9_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint7) (P_ARTIFICIAL1011 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover1_general_waypoint4_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint7) (P_ARTIFICIAL1004 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover1_general_waypoint6_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint7) (P_ARTIFICIAL1010 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover1_general_waypoint9_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint7) (P_ARTIFICIAL1011 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_rock_data_rover1_general_waypoint4_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint7) (P_ARTIFICIAL1006 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover1_general_waypoint5_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint7) (P_ARTIFICIAL1012 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover1_general_waypoint4_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint7) (P_ARTIFICIAL1006 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover1_general_waypoint5_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint7) (P_ARTIFICIAL1012 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover1_general_waypoint5_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint7) (P_ARTIFICIAL1012 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover1_general_waypoint4_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint7) (P_ARTIFICIAL1006 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover1_general_waypoint5_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint7) (P_ARTIFICIAL1012 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint7) (P_ARTIFICIAL1013 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint7) (P_ARTIFICIAL1014 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint7) (P_ARTIFICIAL1015 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint7) (P_ARTIFICIAL1016 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint7) (P_ARTIFICIAL1017 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint7) (P_ARTIFICIAL1018 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint7) (P_ARTIFICIAL1019 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint7) (P_ARTIFICIAL1020 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint7) (P_ARTIFICIAL1013 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint7) (P_ARTIFICIAL1014 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint7) (P_ARTIFICIAL1015 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint7) (P_ARTIFICIAL1016 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint7) (P_ARTIFICIAL1017 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint7) (P_ARTIFICIAL1018 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint7) (P_ARTIFICIAL1019 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint7) (P_ARTIFICIAL1020 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint7) (P_ARTIFICIAL1013 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint7) (P_ARTIFICIAL1014 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint7) (P_ARTIFICIAL1015 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint7) (P_ARTIFICIAL1016 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint7) (P_ARTIFICIAL1017 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint7) (P_ARTIFICIAL1018 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint7) (P_ARTIFICIAL1019 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint7) (P_ARTIFICIAL1020 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint7) (P_ARTIFICIAL1013 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint7) (P_ARTIFICIAL1014 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint7) (P_ARTIFICIAL1015 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint7) (P_ARTIFICIAL1016 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint7) (P_ARTIFICIAL1017 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint7) (P_ARTIFICIAL1018 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint7) (P_ARTIFICIAL1019 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint7) (P_ARTIFICIAL1020 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_soil_data_rover1_general_waypoint3_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint7) (P_ARTIFICIAL1021 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover1_general_waypoint3_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint7) (P_ARTIFICIAL1021 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover1_general_waypoint3_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint7) (P_ARTIFICIAL1021 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover1_general_waypoint3_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint7) (P_ARTIFICIAL1021 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_rock_data_rover1_general_waypoint3_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint7) (P_ARTIFICIAL1022 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover1_general_waypoint1_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint7) (P_ARTIFICIAL1023 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover1_general_waypoint8_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint7) (P_ARTIFICIAL1024 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover1_general_waypoint3_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint7) (P_ARTIFICIAL1022 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover1_general_waypoint1_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint7) (P_ARTIFICIAL1023 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover1_general_waypoint8_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint7) (P_ARTIFICIAL1024 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover1_general_waypoint3_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint7) (P_ARTIFICIAL1022 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover1_general_waypoint1_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint7) (P_ARTIFICIAL1023 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover1_general_waypoint8_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint7) (P_ARTIFICIAL1024 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover1_general_waypoint3_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint7) (P_ARTIFICIAL1022 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover1_general_waypoint1_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint7) (P_ARTIFICIAL1023 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover1_general_waypoint8_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint7) (P_ARTIFICIAL1024 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action dummy-init-action-rotemagent2
:precondition 
(and (can-use-init-action rotemagent2))
:effect 
(and (not (can-use-init-action rotemagent2)) (used-init-action rotemagent2) (at_rock_sample waypoint1) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_rock_sample waypoint5) (at_soil_sample waypoint6) (at_rock_sample waypoint8) (at_soil_sample waypoint9) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (regular-actions-stage rotemplaceholder))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint7) (P_ARTIFICIAL2001 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint7) (P_ARTIFICIAL2003 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint7) (P_ARTIFICIAL2004 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint7) (P_ARTIFICIAL2005 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint7) (P_ARTIFICIAL2001 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint7) (P_ARTIFICIAL2003 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint7) (P_ARTIFICIAL2004 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint7) (P_ARTIFICIAL2005 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint7) (P_ARTIFICIAL2001 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint7) (P_ARTIFICIAL2003 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint7) (P_ARTIFICIAL2004 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint7) (P_ARTIFICIAL2005 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint7) (P_ARTIFICIAL2001 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint7) (P_ARTIFICIAL2003 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint7) (P_ARTIFICIAL2004 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint7) (P_ARTIFICIAL2005 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action dummy-init-action-rotemagent3
:precondition 
(and (can-use-init-action rotemagent3))
:effect 
(and (not (can-use-init-action rotemagent3)) (used-init-action rotemagent3) (at_rock_sample waypoint1) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_rock_sample waypoint5) (at_soil_sample waypoint6) (at_rock_sample waypoint8) (at_soil_sample waypoint9) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (regular-actions-stage rotemplaceholder))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint7) (P_ARTIFICIAL3001 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint7) (P_ARTIFICIAL3003 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint7) (P_ARTIFICIAL3004 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint7) (P_ARTIFICIAL3005 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint7) (P_ARTIFICIAL3006 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint7) (P_ARTIFICIAL3007 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint7) (P_ARTIFICIAL3008 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint3_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint7) (P_ARTIFICIAL3009 ) (visible waypoint3 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint7) (P_ARTIFICIAL3001 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint7) (P_ARTIFICIAL3003 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint7) (P_ARTIFICIAL3004 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint7) (P_ARTIFICIAL3005 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint7) (P_ARTIFICIAL3006 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint7) (P_ARTIFICIAL3007 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint7) (P_ARTIFICIAL3008 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint1_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint7) (P_ARTIFICIAL3009 ) (visible waypoint1 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint7) (P_ARTIFICIAL3001 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint7) (P_ARTIFICIAL3003 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint7) (P_ARTIFICIAL3004 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint7) (P_ARTIFICIAL3005 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint7) (P_ARTIFICIAL3006 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint7) (P_ARTIFICIAL3007 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint7) (P_ARTIFICIAL3008 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint5_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint7) (P_ARTIFICIAL3009 ) (visible waypoint5 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint7) (P_ARTIFICIAL3001 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint7) (P_ARTIFICIAL3003 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint7) (P_ARTIFICIAL3004 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint7) (P_ARTIFICIAL3005 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint7) (P_ARTIFICIAL3006 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint7) (P_ARTIFICIAL3007 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint7) (P_ARTIFICIAL3008 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint8_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint7) (P_ARTIFICIAL3009 ) (visible waypoint8 waypoint7) (P_ARTIFICIAL3002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

)
