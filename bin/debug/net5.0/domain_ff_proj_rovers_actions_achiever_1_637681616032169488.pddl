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
 objective1 - objective
 objective2 - objective
 waypoint8 - waypoint
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
 high_res - mode
 camera0 - camera
 camera1 - camera
 camera2 - camera
 camera3 - camera
 rover2store - store
 waypoint7 - waypoint
 rover1store - store
 low_res - mode
 rover0 - rover
 camera4 - camera
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
(P_ARTIFICIAL17)
(P_ARTIFICIAL18)
(P_ARTIFICIAL19)
(P_ARTIFICIAL20)
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
(P_ARTIFICIAL2017)
(P_ARTIFICIAL2018)
(P_ARTIFICIAL2019)
(P_ARTIFICIAL2020)
(P_ARTIFICIAL2021)
(P_ARTIFICIAL2022)
(P_ARTIFICIAL2023)
(P_ARTIFICIAL2024)
(P_ARTIFICIAL2025)
(P_ARTIFICIAL2026)
(P_ARTIFICIAL2027)
(P_ARTIFICIAL2028)
(P_ARTIFICIAL2029)
(P_ARTIFICIAL2030)
(P_ARTIFICIAL2031)
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
)

(:action dummy-init-action-rotemagent0
:precondition 
(and (can-use-init-action rotemagent0))
:effect 
(and (not (can-use-init-action rotemagent0)) (used-init-action rotemagent0) (at_rock_sample waypoint0) (at_rock_sample waypoint1) (at_soil_sample waypoint2) (at_rock_sample waypoint2) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_rock_sample waypoint6) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_rock_sample waypoint8) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover0_rover0store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_soil_sample waypoint7) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint7)) (P_ARTIFICIAL3 ))
)

(:action sample_soil_rover0_rover0store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_soil_sample waypoint2) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint2)) (P_ARTIFICIAL9 ))
)

(:action drop_rover0_rover0store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover0store))
:effect 
(and (not (full rover0store)) (empty rover0store))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint2) (P_ARTIFICIAL3 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint2) (P_ARTIFICIAL3 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint2) (P_ARTIFICIAL3 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint2) (P_ARTIFICIAL3 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action sample_soil_rover0_rover0store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_soil_sample waypoint5) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint5)) (P_ARTIFICIAL19 ))
)

(:action sample_soil_rover0_rover0store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_soil_sample waypoint4) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint4)) (P_ARTIFICIAL20 ))
)

(:action communicate_soil_data_rover0_general_waypoint2_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint2) (P_ARTIFICIAL9 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint2_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint2) (P_ARTIFICIAL9 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL3 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint2_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL9 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint2) (P_ARTIFICIAL3 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint2_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint2) (P_ARTIFICIAL9 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL3 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint2_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL9 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint2_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint2) (P_ARTIFICIAL9 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint2_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint2) (P_ARTIFICIAL9 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint2) (P_ARTIFICIAL11 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint2) (P_ARTIFICIAL12 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint2) (P_ARTIFICIAL13 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint2) (P_ARTIFICIAL14 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint2) (P_ARTIFICIAL15 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint2) (P_ARTIFICIAL16 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint2) (P_ARTIFICIAL17 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint2) (P_ARTIFICIAL18 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint2) (P_ARTIFICIAL11 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint2) (P_ARTIFICIAL12 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint2) (P_ARTIFICIAL13 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint2) (P_ARTIFICIAL14 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint2) (P_ARTIFICIAL15 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint2) (P_ARTIFICIAL16 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint2) (P_ARTIFICIAL17 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint2) (P_ARTIFICIAL18 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL11 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL12 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL13 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL14 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL15 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL16 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL17 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL18 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint2) (P_ARTIFICIAL11 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint2) (P_ARTIFICIAL12 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint2) (P_ARTIFICIAL13 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint2) (P_ARTIFICIAL14 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint2) (P_ARTIFICIAL15 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint2) (P_ARTIFICIAL16 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint2) (P_ARTIFICIAL17 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint2) (P_ARTIFICIAL18 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL11 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL12 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL13 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL14 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL15 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL16 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL17 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL18 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint2) (P_ARTIFICIAL11 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint2) (P_ARTIFICIAL12 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint2) (P_ARTIFICIAL13 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint2) (P_ARTIFICIAL14 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint2) (P_ARTIFICIAL15 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint2) (P_ARTIFICIAL16 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint2) (P_ARTIFICIAL17 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint2) (P_ARTIFICIAL18 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint2) (P_ARTIFICIAL11 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint2) (P_ARTIFICIAL12 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint2) (P_ARTIFICIAL13 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint2) (P_ARTIFICIAL14 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint2) (P_ARTIFICIAL15 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint2) (P_ARTIFICIAL16 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint2) (P_ARTIFICIAL17 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint2) (P_ARTIFICIAL18 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint5_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint2) (P_ARTIFICIAL19 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint2) (P_ARTIFICIAL20 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint5_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint2) (P_ARTIFICIAL19 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint2) (P_ARTIFICIAL20 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint5_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL19 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL20 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint5_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint2) (P_ARTIFICIAL19 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint2) (P_ARTIFICIAL20 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint5_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL19 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL20 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint5_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint2) (P_ARTIFICIAL19 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint2) (P_ARTIFICIAL20 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint5_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint2) (P_ARTIFICIAL19 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint2) (P_ARTIFICIAL20 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL4 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL4 ) (P_ARTIFICIAL0 ) (P_ARTIFICIAL7 ) (P_ARTIFICIAL8 ) (P_ARTIFICIAL2 ) (P_ARTIFICIAL5 ) (P_ARTIFICIAL6 ) (P_ARTIFICIAL10 ) (P_ARTIFICIAL11 ) (P_ARTIFICIAL12 ) (P_ARTIFICIAL13 ) (P_ARTIFICIAL14 ) (P_ARTIFICIAL15 ) (P_ARTIFICIAL16 ) (P_ARTIFICIAL17 ) (P_ARTIFICIAL18 ) (P_ARTIFICIAL1 ))
)

(:action dummy-init-action-rotemagent1
:precondition 
(and (can-use-init-action rotemagent1))
:effect 
(and (not (can-use-init-action rotemagent1)) (used-init-action rotemagent1) (at_rock_sample waypoint0) (at_rock_sample waypoint1) (at_soil_sample waypoint2) (at_rock_sample waypoint2) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_rock_sample waypoint6) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_rock_sample waypoint8) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover1_rover1store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_soil_sample waypoint2) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint2)) (P_ARTIFICIAL1004 ))
)

(:action sample_soil_rover1_rover1store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1001 ) (at_soil_sample waypoint7) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint7)) (P_ARTIFICIAL1006 ))
)

(:action sample_soil_rover1_rover1store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_soil_sample waypoint4) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint4)) (P_ARTIFICIAL1018 ))
)

(:action drop_rover1_rover1store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover1store))
:effect 
(and (not (full rover1store)) (empty rover1store))
)

(:action communicate_soil_data_rover1_general_waypoint2_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint2) (P_ARTIFICIAL1004 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_soil_data_rover1_general_waypoint7_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint2) (P_ARTIFICIAL1006 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_soil_data_rover1_general_waypoint2_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1004 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_soil_data_rover1_general_waypoint7_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1006 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_soil_data_rover1_general_waypoint2_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1004 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_soil_data_rover1_general_waypoint7_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1006 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_soil_data_rover1_general_waypoint2_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint2) (P_ARTIFICIAL1004 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_soil_data_rover1_general_waypoint7_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint2) (P_ARTIFICIAL1006 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_soil_data_rover1_general_waypoint2_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1001 ) (at_lander general waypoint2) (P_ARTIFICIAL1004 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_soil_data_rover1_general_waypoint7_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1001 ) (at_lander general waypoint2) (P_ARTIFICIAL1006 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_soil_data_rover1_general_waypoint2_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint2) (P_ARTIFICIAL1004 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_soil_data_rover1_general_waypoint7_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint2) (P_ARTIFICIAL1006 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint2) (P_ARTIFICIAL1010 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint2) (P_ARTIFICIAL1011 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint2) (P_ARTIFICIAL1012 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint2) (P_ARTIFICIAL1013 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint2) (P_ARTIFICIAL1014 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint2) (P_ARTIFICIAL1015 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint2) (P_ARTIFICIAL1016 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint2) (P_ARTIFICIAL1017 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1010 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1011 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1012 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1013 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1014 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1015 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1016 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1017 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1010 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1011 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1012 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1013 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1014 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1015 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1016 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1017 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint2) (P_ARTIFICIAL1010 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint2) (P_ARTIFICIAL1011 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint2) (P_ARTIFICIAL1012 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint2) (P_ARTIFICIAL1013 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint2) (P_ARTIFICIAL1014 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint2) (P_ARTIFICIAL1015 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint2) (P_ARTIFICIAL1016 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint2) (P_ARTIFICIAL1017 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1001 ) (at_lander general waypoint2) (P_ARTIFICIAL1010 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1001 ) (at_lander general waypoint2) (P_ARTIFICIAL1011 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1001 ) (at_lander general waypoint2) (P_ARTIFICIAL1012 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1001 ) (at_lander general waypoint2) (P_ARTIFICIAL1013 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1001 ) (at_lander general waypoint2) (P_ARTIFICIAL1014 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1001 ) (at_lander general waypoint2) (P_ARTIFICIAL1015 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1001 ) (at_lander general waypoint2) (P_ARTIFICIAL1016 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1001 ) (at_lander general waypoint2) (P_ARTIFICIAL1017 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint2) (P_ARTIFICIAL1010 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint2) (P_ARTIFICIAL1011 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint2) (P_ARTIFICIAL1012 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint2) (P_ARTIFICIAL1013 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint2) (P_ARTIFICIAL1014 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint2) (P_ARTIFICIAL1015 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint2) (P_ARTIFICIAL1016 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint2) (P_ARTIFICIAL1017 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_soil_data_rover1_general_waypoint4_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_lander general waypoint2) (P_ARTIFICIAL1018 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_soil_data_rover1_general_waypoint4_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1018 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_soil_data_rover1_general_waypoint4_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1018 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_soil_data_rover1_general_waypoint4_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint2) (P_ARTIFICIAL1018 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_soil_data_rover1_general_waypoint4_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1001 ) (at_lander general waypoint2) (P_ARTIFICIAL1018 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action communicate_soil_data_rover1_general_waypoint4_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint2) (P_ARTIFICIAL1018 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL1005 ) (P_ARTIFICIAL1001 ) (P_ARTIFICIAL1002 ) (P_ARTIFICIAL1003 ) (P_ARTIFICIAL1007 ) (P_ARTIFICIAL1008 ) (P_ARTIFICIAL1009 ) (P_ARTIFICIAL1010 ) (P_ARTIFICIAL1011 ) (P_ARTIFICIAL1012 ) (P_ARTIFICIAL1013 ) (P_ARTIFICIAL1014 ) (P_ARTIFICIAL1015 ) (P_ARTIFICIAL1016 ) (P_ARTIFICIAL1017 ) (P_ARTIFICIAL1000 ))
)

(:action dummy-init-action-rotemagent2
:precondition 
(and (can-use-init-action rotemagent2))
:effect 
(and (not (can-use-init-action rotemagent2)) (used-init-action rotemagent2) (at_rock_sample waypoint0) (at_rock_sample waypoint1) (at_soil_sample waypoint2) (at_rock_sample waypoint2) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_rock_sample waypoint6) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_rock_sample waypoint8) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover2_rover2store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_rock_sample waypoint6) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint6)) (P_ARTIFICIAL2004 ))
)

(:action sample_soil_rover2_rover2store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_soil_sample waypoint2) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint2)) (P_ARTIFICIAL2010 ))
)

(:action sample_soil_rover2_rover2store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_soil_sample waypoint7) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint7)) (P_ARTIFICIAL2011 ))
)

(:action sample_rock_rover2_rover2store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_rock_sample waypoint0) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint0)) (P_ARTIFICIAL2012 ))
)

(:action sample_rock_rover2_rover2store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_rock_sample waypoint2) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint2)) (P_ARTIFICIAL2013 ))
)

(:action sample_rock_rover2_rover2store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_rock_sample waypoint7) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint7)) (P_ARTIFICIAL2014 ))
)

(:action drop_rover2_rover2store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover2store))
:effect 
(and (not (full rover2store)) (empty rover2store))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2004 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2004 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2004 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action sample_soil_rover2_rover2store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_soil_sample waypoint4) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint4)) (P_ARTIFICIAL2027 ))
)

(:action sample_soil_rover2_rover2store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_soil_sample waypoint5) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint5)) (P_ARTIFICIAL2028 ))
)

(:action sample_rock_rover2_rover2store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_rock_sample waypoint1) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint1)) (P_ARTIFICIAL2029 ))
)

(:action sample_rock_rover2_rover2store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_rock_sample waypoint4) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint4)) (P_ARTIFICIAL2030 ))
)

(:action sample_rock_rover2_rover2store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_rock_sample waypoint8) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint8)) (P_ARTIFICIAL2031 ))
)

(:action communicate_soil_data_rover2_general_waypoint2_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2010 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint7_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2011 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint2_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2010 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint7_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2011 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint2_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2010 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint7_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2011 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint2_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2010 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint7_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2011 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint2_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2010 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint7_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2011 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint2_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2010 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint7_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2011 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint2_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2010 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint7_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2011 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2004 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2012 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint2_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2013 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2014 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2012 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint2_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2013 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2014 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2004 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2012 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint2_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2013 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2014 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2012 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint2_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2013 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2014 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2004 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2012 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint2_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2013 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2014 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2012 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint2_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2013 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2014 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2004 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2012 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint2_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2013 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2014 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2015 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2016 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2017 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2018 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2019 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2020 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2021 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2022 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2023 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2024 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2025 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2026 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2015 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2016 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2017 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2018 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2019 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2020 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2021 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2022 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2023 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2024 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2025 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2026 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2015 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2016 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2017 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2018 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2019 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2020 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2021 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2022 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2023 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2024 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2025 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2026 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2015 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2016 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2017 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2018 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2019 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2020 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2021 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2022 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2023 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2024 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2025 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2026 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2015 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2016 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2017 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2018 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2019 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2020 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2021 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2022 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2023 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2024 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2025 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2026 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2015 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2016 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2017 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2018 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2019 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2020 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2021 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2022 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2023 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2024 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2025 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2026 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2015 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2016 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2017 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2018 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2019 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2020 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2021 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2022 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2023 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2024 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2025 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2026 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint4_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2027 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2028 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint4_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2027 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2028 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint4_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2027 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2028 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint4_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2027 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2028 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint4_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2027 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2028 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint4_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2027 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2028 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint4_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2027 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2028 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint1_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2029 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2030 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint2) (P_ARTIFICIAL2031 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint1_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2029 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2030 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2031 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint1_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2029 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2030 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint2) (P_ARTIFICIAL2031 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint1_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2029 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2030 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint2) (P_ARTIFICIAL2031 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint1_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2029 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2030 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint2) (P_ARTIFICIAL2031 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint1_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2029 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2030 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint2) (P_ARTIFICIAL2031 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint1_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2029 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2030 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint2) (P_ARTIFICIAL2031 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL2005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8) (P_ARTIFICIAL2005 ) (P_ARTIFICIAL2002 ) (P_ARTIFICIAL2006 ) (P_ARTIFICIAL2000 ) (P_ARTIFICIAL2003 ) (P_ARTIFICIAL2007 ) (P_ARTIFICIAL2008 ) (P_ARTIFICIAL2009 ) (P_ARTIFICIAL2015 ) (P_ARTIFICIAL2016 ) (P_ARTIFICIAL2017 ) (P_ARTIFICIAL2018 ) (P_ARTIFICIAL2019 ) (P_ARTIFICIAL2020 ) (P_ARTIFICIAL2021 ) (P_ARTIFICIAL2022 ) (P_ARTIFICIAL2023 ) (P_ARTIFICIAL2024 ) (P_ARTIFICIAL2025 ) (P_ARTIFICIAL2026 ) (P_ARTIFICIAL2001 ))
)

(:action dummy-init-action-rotemagent3
:precondition 
(and (can-use-init-action rotemagent3))
:effect 
(and (not (can-use-init-action rotemagent3)) (used-init-action rotemagent3) (at_rock_sample waypoint0) (at_rock_sample waypoint1) (at_soil_sample waypoint2) (at_rock_sample waypoint2) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_rock_sample waypoint6) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_rock_sample waypoint8) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover3_rover3store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_soil_sample waypoint5) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint5)) (P_ARTIFICIAL3008 ))
)

(:action sample_soil_rover3_rover3store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_soil_sample waypoint7) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint7)) (P_ARTIFICIAL3010 ))
)

(:action sample_rock_rover3_rover3store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_rock_sample waypoint0) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint0)) (P_ARTIFICIAL3011 ))
)

(:action sample_rock_rover3_rover3store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_rock_sample waypoint1) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint1)) (P_ARTIFICIAL3012 ))
)

(:action sample_rock_rover3_rover3store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_rock_sample waypoint7) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint7)) (P_ARTIFICIAL3013 ))
)

(:action sample_rock_rover3_rover3store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_rock_sample waypoint8) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint8)) (P_ARTIFICIAL3014 ))
)

(:action sample_soil_rover3_rover3store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_soil_sample waypoint4) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint4)) (P_ARTIFICIAL3019 ))
)

(:action sample_soil_rover3_rover3store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_soil_sample waypoint2) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint2)) (P_ARTIFICIAL3020 ))
)

(:action sample_rock_rover3_rover3store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_rock_sample waypoint4) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint4)) (P_ARTIFICIAL3021 ))
)

(:action sample_rock_rover3_rover3store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_rock_sample waypoint6) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint6)) (P_ARTIFICIAL3022 ))
)

(:action sample_rock_rover3_rover3store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_rock_sample waypoint2) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint2)) (P_ARTIFICIAL3023 ))
)

(:action drop_rover3_rover3store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover3store))
:effect 
(and (not (full rover3store)) (empty rover3store))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint2) (P_ARTIFICIAL3008 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint2) (P_ARTIFICIAL3010 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint2) (P_ARTIFICIAL3008 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint2) (P_ARTIFICIAL3010 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint2) (P_ARTIFICIAL3008 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint2) (P_ARTIFICIAL3010 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3008 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3010 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint2) (P_ARTIFICIAL3008 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint2) (P_ARTIFICIAL3010 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint2) (P_ARTIFICIAL3008 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint2) (P_ARTIFICIAL3010 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint2) (P_ARTIFICIAL3008 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint2) (P_ARTIFICIAL3010 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint2) (P_ARTIFICIAL3011 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint1_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint2) (P_ARTIFICIAL3012 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint2) (P_ARTIFICIAL3013 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint2) (P_ARTIFICIAL3014 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint2) (P_ARTIFICIAL3011 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint1_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint2) (P_ARTIFICIAL3012 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint2) (P_ARTIFICIAL3013 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint2) (P_ARTIFICIAL3014 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint2) (P_ARTIFICIAL3011 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint1_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint2) (P_ARTIFICIAL3012 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint2) (P_ARTIFICIAL3013 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint2) (P_ARTIFICIAL3014 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3011 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint1_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3012 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3013 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3014 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint2) (P_ARTIFICIAL3011 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint1_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint2) (P_ARTIFICIAL3012 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint2) (P_ARTIFICIAL3013 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint2) (P_ARTIFICIAL3014 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint2) (P_ARTIFICIAL3011 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint1_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint2) (P_ARTIFICIAL3012 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint2) (P_ARTIFICIAL3013 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint2) (P_ARTIFICIAL3014 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint2) (P_ARTIFICIAL3011 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint1_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint2) (P_ARTIFICIAL3012 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint2) (P_ARTIFICIAL3013 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint2) (P_ARTIFICIAL3014 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint2) (P_ARTIFICIAL3015 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint2) (P_ARTIFICIAL3016 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint2) (P_ARTIFICIAL3017 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint2) (P_ARTIFICIAL3018 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint2) (P_ARTIFICIAL3015 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint2) (P_ARTIFICIAL3016 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint2) (P_ARTIFICIAL3017 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint2) (P_ARTIFICIAL3018 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint2) (P_ARTIFICIAL3015 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint2) (P_ARTIFICIAL3016 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint2) (P_ARTIFICIAL3017 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint2) (P_ARTIFICIAL3018 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3015 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3016 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3017 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3018 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint2) (P_ARTIFICIAL3015 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint2) (P_ARTIFICIAL3016 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint2) (P_ARTIFICIAL3017 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint2) (P_ARTIFICIAL3018 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint2) (P_ARTIFICIAL3015 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint2) (P_ARTIFICIAL3016 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint2) (P_ARTIFICIAL3017 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint2) (P_ARTIFICIAL3018 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint2) (P_ARTIFICIAL3015 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint2) (P_ARTIFICIAL3016 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint2) (P_ARTIFICIAL3017 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint2) (P_ARTIFICIAL3018 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint2) (P_ARTIFICIAL3019 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint2) (P_ARTIFICIAL3020 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint2) (P_ARTIFICIAL3019 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint2) (P_ARTIFICIAL3020 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint2) (P_ARTIFICIAL3019 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint2) (P_ARTIFICIAL3020 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3019 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3020 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint2) (P_ARTIFICIAL3019 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint2) (P_ARTIFICIAL3020 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint2) (P_ARTIFICIAL3019 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint2) (P_ARTIFICIAL3020 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint2) (P_ARTIFICIAL3019 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint2) (P_ARTIFICIAL3020 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint2) (P_ARTIFICIAL3021 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint2) (P_ARTIFICIAL3022 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint2_waypoint1_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint2) (P_ARTIFICIAL3023 ) (visible waypoint1 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint2) (P_ARTIFICIAL3021 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint2) (P_ARTIFICIAL3022 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint2_waypoint0_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint2) (P_ARTIFICIAL3023 ) (visible waypoint0 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint2) (P_ARTIFICIAL3021 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint2) (P_ARTIFICIAL3022 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint2_waypoint4_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint2) (P_ARTIFICIAL3023 ) (visible waypoint4 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3021 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3022 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint2_waypoint6_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3023 ) (visible waypoint6 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint2) (P_ARTIFICIAL3021 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint2) (P_ARTIFICIAL3022 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint2_waypoint5_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_lander general waypoint2) (P_ARTIFICIAL3023 ) (visible waypoint5 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint2) (P_ARTIFICIAL3021 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint2) (P_ARTIFICIAL3022 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint2_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint2) (P_ARTIFICIAL3023 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint2) (P_ARTIFICIAL3021 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint2) (P_ARTIFICIAL3022 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

(:action communicate_rock_data_rover3_general_waypoint2_waypoint8_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_lander general waypoint2) (P_ARTIFICIAL3023 ) (visible waypoint8 waypoint2) (P_ARTIFICIAL3009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2) (P_ARTIFICIAL3009 ) (P_ARTIFICIAL3001 ) (P_ARTIFICIAL3005 ) (P_ARTIFICIAL3000 ) (P_ARTIFICIAL3002 ) (P_ARTIFICIAL3003 ) (P_ARTIFICIAL3004 ) (P_ARTIFICIAL3007 ) (P_ARTIFICIAL3015 ) (P_ARTIFICIAL3016 ) (P_ARTIFICIAL3017 ) (P_ARTIFICIAL3018 ) (P_ARTIFICIAL3006 ))
)

)
