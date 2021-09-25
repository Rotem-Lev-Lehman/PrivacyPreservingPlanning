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
 rotemagent4 - rotemagent
 rotemagent5 - rotemagent
 rotemplaceholder - rotemplaceholder
 camera3 - camera
 rover3store - store
 rover0store - store
 general - lander
 rover4store - store
 waypoint11 - waypoint
 waypoint10 - waypoint
 high_res - mode
 rover2store - store
 waypoint12 - waypoint
 waypoint4 - waypoint
 camera4 - camera
 waypoint8 - waypoint
 waypoint9 - waypoint
 waypoint6 - waypoint
 waypoint7 - waypoint
 low_res - mode
 waypoint5 - waypoint
 waypoint2 - waypoint
 waypoint3 - waypoint
 waypoint0 - waypoint
 waypoint1 - waypoint
 waypoint13 - waypoint
 colour - mode
 camera5 - camera
 rover5store - store
 objective1 - objective
 objective0 - objective
 camera2 - camera
 objective2 - objective
 objective5 - objective
 objective4 - objective
 camera6 - camera
 camera0 - camera
 waypoint14 - waypoint
 camera1 - camera
 rover1store - store
 objective3 - objective
 rover0 - rover
 rover1 - rover
 rover2 - rover
 rover3 - rover
 rover4 - rover
 rover5 - rover
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
(P_ARTIFICIAL4000)
(P_ARTIFICIAL4001)
(P_ARTIFICIAL4002)
(P_ARTIFICIAL4003)
(P_ARTIFICIAL4004)
(P_ARTIFICIAL4005)
(P_ARTIFICIAL4006)
(P_ARTIFICIAL4007)
(P_ARTIFICIAL4008)
(P_ARTIFICIAL4009)
(P_ARTIFICIAL4010)
(P_ARTIFICIAL4011)
(P_ARTIFICIAL4012)
(P_ARTIFICIAL4013)
(P_ARTIFICIAL4014)
(P_ARTIFICIAL4015)
(P_ARTIFICIAL4016)
(P_ARTIFICIAL4017)
(P_ARTIFICIAL4018)
(P_ARTIFICIAL4019)
(P_ARTIFICIAL4020)
(P_ARTIFICIAL4021)
(P_ARTIFICIAL4022)
(P_ARTIFICIAL4023)
(P_ARTIFICIAL4024)
(P_ARTIFICIAL4025)
(P_ARTIFICIAL4026)
(P_ARTIFICIAL4027)
(P_ARTIFICIAL4028)
(P_ARTIFICIAL4029)
(P_ARTIFICIAL4030)
(P_ARTIFICIAL4031)
(P_ARTIFICIAL4032)
(P_ARTIFICIAL4033)
(P_ARTIFICIAL4034)
(P_ARTIFICIAL4035)
(P_ARTIFICIAL4036)
(P_ARTIFICIAL4037)
(P_ARTIFICIAL4038)
(P_ARTIFICIAL4039)
(P_ARTIFICIAL5000)
(P_ARTIFICIAL5001)
(P_ARTIFICIAL5002)
(P_ARTIFICIAL5003)
(P_ARTIFICIAL5004)
(P_ARTIFICIAL5005)
(P_ARTIFICIAL5006)
(P_ARTIFICIAL5007)
(P_ARTIFICIAL5008)
(P_ARTIFICIAL5009)
(P_ARTIFICIAL5010)
(P_ARTIFICIAL5011)
(P_ARTIFICIAL5012)
(P_ARTIFICIAL5013)
(P_ARTIFICIAL5014)
(P_ARTIFICIAL5015)
(P_ARTIFICIAL5016)
(P_ARTIFICIAL5017)
(P_ARTIFICIAL5018)
(P_ARTIFICIAL5019)
(P_ARTIFICIAL5020)
(P_ARTIFICIAL5021)
(P_ARTIFICIAL5022)
(P_ARTIFICIAL5023)
(P_ARTIFICIAL5024)
(P_ARTIFICIAL5025)
(P_ARTIFICIAL5026)
(P_ARTIFICIAL5027)
(P_ARTIFICIAL5028)
(P_ARTIFICIAL5029)
(P_ARTIFICIAL5030)
(P_ARTIFICIAL5031)
(P_ARTIFICIAL5032)
(P_ARTIFICIAL5033)
(P_ARTIFICIAL5034)
(P_ARTIFICIAL5035)
(P_ARTIFICIAL5036)
(P_ARTIFICIAL5037)
(P_ARTIFICIAL5038)
(P_ARTIFICIAL5039)
(P_ARTIFICIAL5040)
(P_ARTIFICIAL5041)
(P_ARTIFICIAL5042)
(P_ARTIFICIAL5043)
(P_ARTIFICIAL5044)
(P_ARTIFICIAL5045)
)

(:action dummy-init-action-rotemagent0
:precondition 
(and (can-use-init-action rotemagent0))
:effect 
(and (not (can-use-init-action rotemagent0)) (used-init-action rotemagent0) (at_soil_sample waypoint0) (at_rock_sample waypoint1) (at_soil_sample waypoint2) (at_rock_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_rock_sample waypoint5) (at_rock_sample waypoint6) (at_rock_sample waypoint7) (at_soil_sample waypoint9) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_rock_sample waypoint11) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_rock_sample waypoint13) (at_soil_sample waypoint14) (at_rock_sample waypoint14) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover0_rover0store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_rock_sample waypoint12) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint12)))
)

(:action sample_rock_rover0_rover0store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_rock_sample waypoint1) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint1)))
)

(:action sample_rock_rover0_rover0store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_rock_sample waypoint6) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint6)))
)

(:action sample_rock_rover0_rover0store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3 ) (at_rock_sample waypoint7) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint7)))
)

(:action drop_rover0_rover0store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover0store))
:effect 
(and (not (full rover0store)) (empty rover0store))
)

(:action communicate_rock_data_rover0_general_waypoint12_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint13) (P_ARTIFICIAL4 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover0_general_waypoint12_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint13) (P_ARTIFICIAL4 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action sample_rock_rover0_rover0store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_rock_sample waypoint3) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint3)))
)

(:action sample_rock_rover0_rover0store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_rock_sample waypoint4) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover0_rover0store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_rock_sample waypoint5) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint5)))
)

(:action sample_rock_rover0_rover0store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_rock_sample waypoint11) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint11)))
)

(:action sample_rock_rover0_rover0store_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL11 ) (at_rock_sample waypoint13) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint13)))
)

(:action sample_rock_rover0_rover0store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_rock_sample waypoint9) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint9)))
)

(:action communicate_rock_data_rover0_general_waypoint12_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint13) (P_ARTIFICIAL4 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover0_general_waypoint1_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint13) (P_ARTIFICIAL13 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover0_general_waypoint6_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint13) (P_ARTIFICIAL14 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover0_general_waypoint7_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint13) (P_ARTIFICIAL15 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover0_general_waypoint1_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint13) (P_ARTIFICIAL13 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover0_general_waypoint6_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint13) (P_ARTIFICIAL14 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover0_general_waypoint7_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint13) (P_ARTIFICIAL15 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover0_general_waypoint1_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint13) (P_ARTIFICIAL13 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover0_general_waypoint6_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint13) (P_ARTIFICIAL14 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover0_general_waypoint7_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint13) (P_ARTIFICIAL15 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover0_general_waypoint12_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint13) (P_ARTIFICIAL4 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover0_general_waypoint1_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint13) (P_ARTIFICIAL13 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover0_general_waypoint6_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint13) (P_ARTIFICIAL14 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover0_general_waypoint7_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint13) (P_ARTIFICIAL15 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint13) (P_ARTIFICIAL16 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint13) (P_ARTIFICIAL17 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint5_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint13) (P_ARTIFICIAL18 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover0_general_waypoint11_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint13) (P_ARTIFICIAL19 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover0_general_waypoint13_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint13) (P_ARTIFICIAL20 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover0_general_waypoint9_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint13) (P_ARTIFICIAL21 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint13) (P_ARTIFICIAL16 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint13) (P_ARTIFICIAL17 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint5_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint13) (P_ARTIFICIAL18 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover0_general_waypoint11_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint13) (P_ARTIFICIAL19 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover0_general_waypoint13_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint13) (P_ARTIFICIAL20 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover0_general_waypoint9_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint13) (P_ARTIFICIAL21 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint13) (P_ARTIFICIAL16 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint13) (P_ARTIFICIAL17 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint5_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint13) (P_ARTIFICIAL18 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover0_general_waypoint11_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint13) (P_ARTIFICIAL19 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover0_general_waypoint13_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint13) (P_ARTIFICIAL20 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover0_general_waypoint9_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_lander general waypoint13) (P_ARTIFICIAL21 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint13) (P_ARTIFICIAL16 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint13) (P_ARTIFICIAL17 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint5_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint13) (P_ARTIFICIAL18 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover0_general_waypoint11_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint13) (P_ARTIFICIAL19 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover0_general_waypoint13_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint13) (P_ARTIFICIAL20 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover0_general_waypoint9_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint13) (P_ARTIFICIAL21 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action dummy-init-action-rotemagent1
:precondition 
(and (can-use-init-action rotemagent1))
:effect 
(and (not (can-use-init-action rotemagent1)) (used-init-action rotemagent1) (at_soil_sample waypoint0) (at_rock_sample waypoint1) (at_soil_sample waypoint2) (at_rock_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_rock_sample waypoint5) (at_rock_sample waypoint6) (at_rock_sample waypoint7) (at_soil_sample waypoint9) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_rock_sample waypoint11) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_rock_sample waypoint13) (at_soil_sample waypoint14) (at_rock_sample waypoint14) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint13) (P_ARTIFICIAL1001 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint13) (P_ARTIFICIAL1003 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint13) (P_ARTIFICIAL1004 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint13) (P_ARTIFICIAL1005 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint13) (P_ARTIFICIAL1006 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint13) (P_ARTIFICIAL1007 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint13) (P_ARTIFICIAL1001 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint13) (P_ARTIFICIAL1003 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint13) (P_ARTIFICIAL1004 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint13) (P_ARTIFICIAL1005 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint13) (P_ARTIFICIAL1006 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint13) (P_ARTIFICIAL1007 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint13) (P_ARTIFICIAL1001 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint13) (P_ARTIFICIAL1003 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint13) (P_ARTIFICIAL1004 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint13) (P_ARTIFICIAL1005 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint13) (P_ARTIFICIAL1006 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_lander general waypoint13) (P_ARTIFICIAL1007 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1010 ) (at_lander general waypoint13) (P_ARTIFICIAL1001 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1010 ) (at_lander general waypoint13) (P_ARTIFICIAL1003 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1010 ) (at_lander general waypoint13) (P_ARTIFICIAL1004 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1010 ) (at_lander general waypoint13) (P_ARTIFICIAL1005 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1010 ) (at_lander general waypoint13) (P_ARTIFICIAL1006 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1010 ) (at_lander general waypoint13) (P_ARTIFICIAL1007 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1011 ) (at_lander general waypoint13) (P_ARTIFICIAL1001 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1011 ) (at_lander general waypoint13) (P_ARTIFICIAL1003 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1011 ) (at_lander general waypoint13) (P_ARTIFICIAL1004 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1011 ) (at_lander general waypoint13) (P_ARTIFICIAL1005 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1011 ) (at_lander general waypoint13) (P_ARTIFICIAL1006 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1011 ) (at_lander general waypoint13) (P_ARTIFICIAL1007 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action dummy-init-action-rotemagent2
:precondition 
(and (can-use-init-action rotemagent2))
:effect 
(and (not (can-use-init-action rotemagent2)) (used-init-action rotemagent2) (at_soil_sample waypoint0) (at_rock_sample waypoint1) (at_soil_sample waypoint2) (at_rock_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_rock_sample waypoint5) (at_rock_sample waypoint6) (at_rock_sample waypoint7) (at_soil_sample waypoint9) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_rock_sample waypoint11) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_rock_sample waypoint13) (at_soil_sample waypoint14) (at_rock_sample waypoint14) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint13) (P_ARTIFICIAL2001 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint13) (P_ARTIFICIAL2003 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint13) (P_ARTIFICIAL2004 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint13) (P_ARTIFICIAL2005 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint13) (P_ARTIFICIAL2006 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint13) (P_ARTIFICIAL2007 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint13) (P_ARTIFICIAL2008 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint13) (P_ARTIFICIAL2009 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint13) (P_ARTIFICIAL2010 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint13) (P_ARTIFICIAL2011 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint13) (P_ARTIFICIAL2012 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint13) (P_ARTIFICIAL2013 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint13) (P_ARTIFICIAL2001 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint13) (P_ARTIFICIAL2003 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint13) (P_ARTIFICIAL2004 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint13) (P_ARTIFICIAL2005 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint13) (P_ARTIFICIAL2006 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint13) (P_ARTIFICIAL2007 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint13) (P_ARTIFICIAL2008 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint13) (P_ARTIFICIAL2009 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint13) (P_ARTIFICIAL2010 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint13) (P_ARTIFICIAL2011 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint13) (P_ARTIFICIAL2012 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_lander general waypoint13) (P_ARTIFICIAL2013 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint13) (P_ARTIFICIAL2001 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint13) (P_ARTIFICIAL2003 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint13) (P_ARTIFICIAL2004 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint13) (P_ARTIFICIAL2005 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint13) (P_ARTIFICIAL2006 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint13) (P_ARTIFICIAL2007 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint13) (P_ARTIFICIAL2008 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint13) (P_ARTIFICIAL2009 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint13) (P_ARTIFICIAL2010 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint13) (P_ARTIFICIAL2011 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint13) (P_ARTIFICIAL2012 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_lander general waypoint13) (P_ARTIFICIAL2013 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2016 ) (at_lander general waypoint13) (P_ARTIFICIAL2001 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2016 ) (at_lander general waypoint13) (P_ARTIFICIAL2003 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2016 ) (at_lander general waypoint13) (P_ARTIFICIAL2004 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2016 ) (at_lander general waypoint13) (P_ARTIFICIAL2005 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2016 ) (at_lander general waypoint13) (P_ARTIFICIAL2006 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2016 ) (at_lander general waypoint13) (P_ARTIFICIAL2007 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2016 ) (at_lander general waypoint13) (P_ARTIFICIAL2008 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2016 ) (at_lander general waypoint13) (P_ARTIFICIAL2009 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2016 ) (at_lander general waypoint13) (P_ARTIFICIAL2010 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2016 ) (at_lander general waypoint13) (P_ARTIFICIAL2011 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2016 ) (at_lander general waypoint13) (P_ARTIFICIAL2012 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2016 ) (at_lander general waypoint13) (P_ARTIFICIAL2013 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint13) (P_ARTIFICIAL2001 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint13) (P_ARTIFICIAL2003 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint13) (P_ARTIFICIAL2004 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint13) (P_ARTIFICIAL2005 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint13) (P_ARTIFICIAL2006 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint13) (P_ARTIFICIAL2007 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint13) (P_ARTIFICIAL2008 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint13) (P_ARTIFICIAL2009 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint13) (P_ARTIFICIAL2010 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint13) (P_ARTIFICIAL2011 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint13) (P_ARTIFICIAL2012 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint13) (P_ARTIFICIAL2013 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL2002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action dummy-init-action-rotemagent3
:precondition 
(and (can-use-init-action rotemagent3))
:effect 
(and (not (can-use-init-action rotemagent3)) (used-init-action rotemagent3) (at_soil_sample waypoint0) (at_rock_sample waypoint1) (at_soil_sample waypoint2) (at_rock_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_rock_sample waypoint5) (at_rock_sample waypoint6) (at_rock_sample waypoint7) (at_soil_sample waypoint9) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_rock_sample waypoint11) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_rock_sample waypoint13) (at_soil_sample waypoint14) (at_rock_sample waypoint14) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover3_rover3store_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_soil_sample waypoint13) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint13)))
)

(:action sample_soil_rover3_rover3store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_soil_sample waypoint0) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint0)))
)

(:action sample_soil_rover3_rover3store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_soil_sample waypoint3) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint3)))
)

(:action sample_soil_rover3_rover3store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_soil_sample waypoint5) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint5)))
)

(:action drop_rover3_rover3store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover3store))
:effect 
(and (not (full rover3store)) (empty rover3store))
)

(:action communicate_soil_data_rover3_general_waypoint13_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint13) (P_ARTIFICIAL3004 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover3_general_waypoint13_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint13) (P_ARTIFICIAL3004 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover3_general_waypoint13_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint13) (P_ARTIFICIAL3004 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover3_general_waypoint13_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint13) (P_ARTIFICIAL3004 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action sample_soil_rover3_rover3store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_soil_sample waypoint2) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint2)))
)

(:action sample_soil_rover3_rover3store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3008 ) (at_soil_sample waypoint14) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint14)))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint13) (P_ARTIFICIAL3009 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint13) (P_ARTIFICIAL3010 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint13) (P_ARTIFICIAL3011 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint13) (P_ARTIFICIAL3009 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint13) (P_ARTIFICIAL3010 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint13) (P_ARTIFICIAL3011 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint13) (P_ARTIFICIAL3009 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint13) (P_ARTIFICIAL3010 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint13) (P_ARTIFICIAL3011 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint13) (P_ARTIFICIAL3009 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint13) (P_ARTIFICIAL3010 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint13) (P_ARTIFICIAL3011 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover3_general_waypoint13_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3008 ) (at_lander general waypoint13) (P_ARTIFICIAL3004 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3008 ) (at_lander general waypoint13) (P_ARTIFICIAL3009 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3008 ) (at_lander general waypoint13) (P_ARTIFICIAL3010 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3008 ) (at_lander general waypoint13) (P_ARTIFICIAL3011 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint13) (P_ARTIFICIAL3012 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint13) (P_ARTIFICIAL3013 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint13) (P_ARTIFICIAL3014 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint13) (P_ARTIFICIAL3015 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint13) (P_ARTIFICIAL3016 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint13) (P_ARTIFICIAL3017 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint13) (P_ARTIFICIAL3012 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint13) (P_ARTIFICIAL3013 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint13) (P_ARTIFICIAL3014 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint13) (P_ARTIFICIAL3015 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint13) (P_ARTIFICIAL3016 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint13) (P_ARTIFICIAL3017 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint13) (P_ARTIFICIAL3012 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint13) (P_ARTIFICIAL3013 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint13) (P_ARTIFICIAL3014 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint13) (P_ARTIFICIAL3015 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint13) (P_ARTIFICIAL3016 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint13) (P_ARTIFICIAL3017 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint13) (P_ARTIFICIAL3012 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint13) (P_ARTIFICIAL3013 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint13) (P_ARTIFICIAL3014 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint13) (P_ARTIFICIAL3015 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint13) (P_ARTIFICIAL3016 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint13) (P_ARTIFICIAL3017 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3008 ) (at_lander general waypoint13) (P_ARTIFICIAL3012 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3008 ) (at_lander general waypoint13) (P_ARTIFICIAL3013 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3008 ) (at_lander general waypoint13) (P_ARTIFICIAL3014 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3008 ) (at_lander general waypoint13) (P_ARTIFICIAL3015 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3008 ) (at_lander general waypoint13) (P_ARTIFICIAL3016 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3008 ) (at_lander general waypoint13) (P_ARTIFICIAL3017 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action sample_soil_rover3_rover3store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_soil_sample waypoint4) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint4)))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint13) (P_ARTIFICIAL3019 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover3_general_waypoint14_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint13) (P_ARTIFICIAL3020 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint13) (P_ARTIFICIAL3019 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover3_general_waypoint14_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint13) (P_ARTIFICIAL3020 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint13) (P_ARTIFICIAL3019 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover3_general_waypoint14_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint13) (P_ARTIFICIAL3020 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint13) (P_ARTIFICIAL3019 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover3_general_waypoint14_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint13) (P_ARTIFICIAL3020 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3008 ) (at_lander general waypoint13) (P_ARTIFICIAL3019 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover3_general_waypoint14_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3008 ) (at_lander general waypoint13) (P_ARTIFICIAL3020 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint13) (P_ARTIFICIAL3021 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint13) (P_ARTIFICIAL3021 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint13) (P_ARTIFICIAL3021 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint13) (P_ARTIFICIAL3021 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3008 ) (at_lander general waypoint13) (P_ARTIFICIAL3021 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action dummy-init-action-rotemagent4
:precondition 
(and (can-use-init-action rotemagent4))
:effect 
(and (not (can-use-init-action rotemagent4)) (used-init-action rotemagent4) (at_soil_sample waypoint0) (at_rock_sample waypoint1) (at_soil_sample waypoint2) (at_rock_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_rock_sample waypoint5) (at_rock_sample waypoint6) (at_rock_sample waypoint7) (at_soil_sample waypoint9) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_rock_sample waypoint11) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_rock_sample waypoint13) (at_soil_sample waypoint14) (at_rock_sample waypoint14) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover4_rover4store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_rock_sample waypoint1) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint1)))
)

(:action sample_rock_rover4_rover4store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4001 ) (at_rock_sample waypoint4) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover4_rover4store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_rock_sample waypoint5) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint5)))
)

(:action sample_rock_rover4_rover4store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_rock_sample waypoint12) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint12)))
)

(:action sample_rock_rover4_rover4store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_rock_sample waypoint14) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint14)))
)

(:action drop_rover4_rover4store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover4store))
:effect 
(and (not (full rover4store)) (empty rover4store))
)

(:action communicate_rock_data_rover4_general_waypoint1_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4006 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover4_general_waypoint1_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4006 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover4_general_waypoint1_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4006 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action sample_rock_rover4_rover4store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_rock_sample waypoint3) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint3)))
)

(:action sample_rock_rover4_rover4store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_rock_sample waypoint6) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint6)))
)

(:action sample_rock_rover4_rover4store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_rock_sample waypoint10) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint10)))
)

(:action sample_rock_rover4_rover4store_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_rock_sample waypoint13) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint13)))
)

(:action sample_rock_rover4_rover4store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_rock_sample waypoint2) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint2)))
)

(:action sample_rock_rover4_rover4store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_rock_sample waypoint11) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint11)))
)

(:action sample_rock_rover4_rover4store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_rock_sample waypoint7) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover4_rover4store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_rock_sample waypoint9) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint9)))
)

(:action communicate_rock_data_rover4_general_waypoint1_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4006 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4016 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint5_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4017 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4018 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4019 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint1_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4006 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4016 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint5_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4017 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4018 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4019 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4016 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint5_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4017 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4018 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4019 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4016 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint5_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4017 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4018 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4019 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4016 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint5_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4017 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4018 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4019 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4020 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4021 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4022 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4023 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4024 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4025 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4026 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4027 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4028 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4029 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4030 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4031 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4020 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4021 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4022 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4023 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4024 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4025 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4026 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4027 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4028 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4029 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4030 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4031 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4020 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4021 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4022 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4023 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4024 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4025 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4026 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4027 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4028 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4029 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4030 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4031 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4020 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4021 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4022 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4023 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4024 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4025 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4026 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4027 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4028 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4029 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4030 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4031 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4020 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4021 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4022 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4023 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4024 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4025 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4026 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4027 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4028 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4029 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4030 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4031 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4032 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4033 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint10_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4034 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover4_general_waypoint13_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4035 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover4_general_waypoint2_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4036 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4037 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4038 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint13) (P_ARTIFICIAL4039 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4032 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4033 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint10_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4034 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover4_general_waypoint13_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4035 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover4_general_waypoint2_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4036 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4037 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4038 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint13) (P_ARTIFICIAL4039 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4032 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4033 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint10_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4034 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover4_general_waypoint13_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4035 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover4_general_waypoint2_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4036 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4037 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4038 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_lander general waypoint13) (P_ARTIFICIAL4039 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4032 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4033 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint10_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4034 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover4_general_waypoint13_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4035 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover4_general_waypoint2_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4036 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4037 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4038 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint13) (P_ARTIFICIAL4039 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4032 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4033 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint10_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4034 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover4_general_waypoint13_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4035 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover4_general_waypoint2_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4036 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4037 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4038 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint13) (P_ARTIFICIAL4039 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action dummy-init-action-rotemagent5
:precondition 
(and (can-use-init-action rotemagent5))
:effect 
(and (not (can-use-init-action rotemagent5)) (used-init-action rotemagent5) (at_soil_sample waypoint0) (at_rock_sample waypoint1) (at_soil_sample waypoint2) (at_rock_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_rock_sample waypoint5) (at_rock_sample waypoint6) (at_rock_sample waypoint7) (at_soil_sample waypoint9) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_rock_sample waypoint11) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_rock_sample waypoint13) (at_soil_sample waypoint14) (at_rock_sample waypoint14) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover5_rover5store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_rock_sample waypoint1) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint1)))
)

(:action sample_rock_rover5_rover5store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_rock_sample waypoint3) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint3)))
)

(:action sample_rock_rover5_rover5store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_rock_sample waypoint5) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint5)))
)

(:action sample_rock_rover5_rover5store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_rock_sample waypoint7) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover5_rover5store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_rock_sample waypoint9) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint9)))
)

(:action sample_rock_rover5_rover5store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5005 ) (at_rock_sample waypoint10) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint10)))
)

(:action sample_rock_rover5_rover5store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5006 ) (at_rock_sample waypoint11) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint11)))
)

(:action sample_rock_rover5_rover5store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_rock_sample waypoint4) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover5_rover5store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5008 ) (at_rock_sample waypoint12) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint12)))
)

(:action sample_rock_rover5_rover5store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_rock_sample waypoint14) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint14)))
)

(:action sample_rock_rover5_rover5store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_rock_sample waypoint6) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint6)))
)

(:action sample_rock_rover5_rover5store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_rock_sample waypoint2) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint2)))
)

(:action sample_rock_rover5_rover5store_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5012 ) (at_rock_sample waypoint13) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint13)))
)

(:action drop_rover5_rover5store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover5store))
:effect 
(and (not (full rover5store)) (empty rover5store))
)

(:action communicate_rock_data_rover5_general_waypoint1_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5013 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover5_general_waypoint3_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5015 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover5_general_waypoint5_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5016 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover5_general_waypoint7_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5017 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5018 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint10_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5019 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover5_general_waypoint11_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5020 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover5_general_waypoint1_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5013 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover5_general_waypoint3_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5015 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover5_general_waypoint5_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5016 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover5_general_waypoint7_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5017 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5018 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint10_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5019 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover5_general_waypoint11_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5020 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover5_general_waypoint1_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5013 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover5_general_waypoint3_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5015 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover5_general_waypoint5_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5016 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover5_general_waypoint7_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5017 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5018 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint10_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5019 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover5_general_waypoint11_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5020 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover5_general_waypoint1_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5013 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover5_general_waypoint3_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5015 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover5_general_waypoint5_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5016 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover5_general_waypoint7_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5017 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5018 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint10_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5019 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover5_general_waypoint11_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5020 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover5_general_waypoint1_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5013 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover5_general_waypoint3_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5015 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover5_general_waypoint5_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5016 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover5_general_waypoint7_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5017 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5018 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint10_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5019 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover5_general_waypoint11_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5020 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover5_general_waypoint4_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5022 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover5_general_waypoint12_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5023 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover5_general_waypoint14_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5024 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5025 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint2_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5026 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover5_general_waypoint13_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5027 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover5_general_waypoint4_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5022 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover5_general_waypoint12_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5023 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover5_general_waypoint14_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5024 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5025 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint2_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5026 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover5_general_waypoint13_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5027 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover5_general_waypoint4_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5022 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover5_general_waypoint12_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5023 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover5_general_waypoint14_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5024 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5025 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint2_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5026 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover5_general_waypoint13_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5027 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover5_general_waypoint4_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5022 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover5_general_waypoint12_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5023 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover5_general_waypoint14_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5024 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5025 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint2_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5026 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover5_general_waypoint13_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5027 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover5_general_waypoint4_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5022 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover5_general_waypoint12_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5023 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover5_general_waypoint14_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5024 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5025 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint2_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5026 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover5_general_waypoint13_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5027 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5028 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5029 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5030 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5031 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5032 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5033 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5034 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5035 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5036 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5037 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5038 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5039 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5040 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5041 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5042 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5043 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5044 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint3_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint13) (P_ARTIFICIAL5045 ) (visible waypoint3 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5028 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5029 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5030 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5031 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5032 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5033 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5034 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5035 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5036 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5037 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5038 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5039 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5040 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5041 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5042 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5043 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5044 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint6_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint13) (P_ARTIFICIAL5045 ) (visible waypoint6 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5028 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5029 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5030 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5031 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5032 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5033 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5034 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5035 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5036 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5037 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5038 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5039 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5040 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5041 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5042 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5043 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5044 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint0_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_lander general waypoint13) (P_ARTIFICIAL5045 ) (visible waypoint0 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5028 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5029 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5030 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5031 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5032 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5033 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5034 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5035 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5036 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5037 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5038 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5039 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5040 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5041 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5042 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5043 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5044 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint5_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint13) (P_ARTIFICIAL5045 ) (visible waypoint5 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5028 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5029 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5030 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5031 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5032 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5033 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5034 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5035 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5036 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5037 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5038 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5039 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5040 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5041 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5042 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5043 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5044 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint14_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint13) (P_ARTIFICIAL5045 ) (visible waypoint14 waypoint13) (P_ARTIFICIAL5014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

)
