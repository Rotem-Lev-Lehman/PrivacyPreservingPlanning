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
 camera6 - camera
 waypoint13 - waypoint
 rover3store - store
 rover0store - store
 general - lander
 waypoint15 - waypoint
 waypoint16 - waypoint
 camera2 - camera
 rover4store - store
 waypoint11 - waypoint
 waypoint10 - waypoint
 high_res - mode
 camera3 - camera
 rover2store - store
 waypoint12 - waypoint
 waypoint4 - waypoint
 waypoint17 - waypoint
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
 waypoint18 - waypoint
 waypoint19 - waypoint
 camera5 - camera
 rover5store - store
 objective1 - objective
 objective0 - objective
 colour - mode
 objective2 - objective
 objective5 - objective
 objective4 - objective
 objective7 - objective
 objective6 - objective
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
(P_ARTIFICIAL2032)
(P_ARTIFICIAL2033)
(P_ARTIFICIAL2034)
(P_ARTIFICIAL2035)
(P_ARTIFICIAL2036)
(P_ARTIFICIAL2037)
(P_ARTIFICIAL2038)
(P_ARTIFICIAL2039)
(P_ARTIFICIAL2040)
(P_ARTIFICIAL2041)
(P_ARTIFICIAL2042)
(P_ARTIFICIAL2043)
(P_ARTIFICIAL2044)
(P_ARTIFICIAL2045)
(P_ARTIFICIAL2046)
(P_ARTIFICIAL2047)
(P_ARTIFICIAL2048)
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
(P_ARTIFICIAL3029)
(P_ARTIFICIAL3030)
(P_ARTIFICIAL3031)
(P_ARTIFICIAL3032)
(P_ARTIFICIAL3033)
(P_ARTIFICIAL3034)
(P_ARTIFICIAL3035)
(P_ARTIFICIAL3036)
(P_ARTIFICIAL3037)
(P_ARTIFICIAL3038)
(P_ARTIFICIAL3039)
(P_ARTIFICIAL3040)
(P_ARTIFICIAL3041)
(P_ARTIFICIAL3042)
(P_ARTIFICIAL3043)
(P_ARTIFICIAL3044)
(P_ARTIFICIAL3045)
(P_ARTIFICIAL3046)
(P_ARTIFICIAL3047)
(P_ARTIFICIAL3048)
(P_ARTIFICIAL3049)
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
(P_ARTIFICIAL4040)
(P_ARTIFICIAL4041)
(P_ARTIFICIAL4042)
(P_ARTIFICIAL4043)
(P_ARTIFICIAL4044)
(P_ARTIFICIAL4045)
(P_ARTIFICIAL4046)
(P_ARTIFICIAL4047)
(P_ARTIFICIAL4048)
(P_ARTIFICIAL4049)
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
(P_ARTIFICIAL5046)
(P_ARTIFICIAL5047)
(P_ARTIFICIAL5048)
(P_ARTIFICIAL5049)
(P_ARTIFICIAL5050)
(P_ARTIFICIAL5051)
(P_ARTIFICIAL5052)
(P_ARTIFICIAL5053)
(P_ARTIFICIAL5054)
(P_ARTIFICIAL5055)
(P_ARTIFICIAL5056)
(P_ARTIFICIAL5057)
)

(:action dummy-init-action-rotemagent0
:precondition 
(and (can-use-init-action rotemagent0))
:effect 
(and (not (can-use-init-action rotemagent0)) (used-init-action rotemagent0) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_rock_sample waypoint6) (at_soil_sample waypoint8) (at_rock_sample waypoint9) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_soil_sample waypoint14) (at_soil_sample waypoint15) (at_soil_sample waypoint16) (at_soil_sample waypoint17) (at_rock_sample waypoint17) (at_soil_sample waypoint18) (at_rock_sample waypoint19) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint6) (P_ARTIFICIAL1 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint6) (P_ARTIFICIAL3 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint6) (P_ARTIFICIAL4 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint6) (P_ARTIFICIAL5 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint6) (P_ARTIFICIAL6 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint6) (P_ARTIFICIAL7 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint6) (P_ARTIFICIAL8 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_lander general waypoint6) (P_ARTIFICIAL9 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint6) (P_ARTIFICIAL1 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint6) (P_ARTIFICIAL3 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint6) (P_ARTIFICIAL4 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint6) (P_ARTIFICIAL5 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint6) (P_ARTIFICIAL6 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint6) (P_ARTIFICIAL7 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint6) (P_ARTIFICIAL8 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint6) (P_ARTIFICIAL9 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL11 ) (at_lander general waypoint6) (P_ARTIFICIAL1 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL11 ) (at_lander general waypoint6) (P_ARTIFICIAL3 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL11 ) (at_lander general waypoint6) (P_ARTIFICIAL4 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL11 ) (at_lander general waypoint6) (P_ARTIFICIAL5 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL11 ) (at_lander general waypoint6) (P_ARTIFICIAL6 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL11 ) (at_lander general waypoint6) (P_ARTIFICIAL7 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL11 ) (at_lander general waypoint6) (P_ARTIFICIAL8 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL11 ) (at_lander general waypoint6) (P_ARTIFICIAL9 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint6) (P_ARTIFICIAL1 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint6) (P_ARTIFICIAL3 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint6) (P_ARTIFICIAL4 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint6) (P_ARTIFICIAL5 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint6) (P_ARTIFICIAL6 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint6) (P_ARTIFICIAL7 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint6) (P_ARTIFICIAL8 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint6) (P_ARTIFICIAL9 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint6) (P_ARTIFICIAL1 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint6) (P_ARTIFICIAL3 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint6) (P_ARTIFICIAL4 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint6) (P_ARTIFICIAL5 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint6) (P_ARTIFICIAL6 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint6) (P_ARTIFICIAL7 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint6) (P_ARTIFICIAL8 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint6) (P_ARTIFICIAL9 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint6) (P_ARTIFICIAL1 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint6) (P_ARTIFICIAL3 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint6) (P_ARTIFICIAL4 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint6) (P_ARTIFICIAL5 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint6) (P_ARTIFICIAL6 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint6) (P_ARTIFICIAL7 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint6) (P_ARTIFICIAL8 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint6) (P_ARTIFICIAL9 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint6) (P_ARTIFICIAL1 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint6) (P_ARTIFICIAL3 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint6) (P_ARTIFICIAL4 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint6) (P_ARTIFICIAL5 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint6) (P_ARTIFICIAL6 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint6) (P_ARTIFICIAL7 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint6) (P_ARTIFICIAL8 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_lander general waypoint6) (P_ARTIFICIAL9 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action dummy-init-action-rotemagent1
:precondition 
(and (can-use-init-action rotemagent1))
:effect 
(and (not (can-use-init-action rotemagent1)) (used-init-action rotemagent1) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_rock_sample waypoint6) (at_soil_sample waypoint8) (at_rock_sample waypoint9) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_soil_sample waypoint14) (at_soil_sample waypoint15) (at_soil_sample waypoint16) (at_soil_sample waypoint17) (at_rock_sample waypoint17) (at_soil_sample waypoint18) (at_rock_sample waypoint19) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint6) (P_ARTIFICIAL1001 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint6) (P_ARTIFICIAL1003 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint6) (P_ARTIFICIAL1004 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint6) (P_ARTIFICIAL1005 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint6) (P_ARTIFICIAL1006 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint6) (P_ARTIFICIAL1007 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint6) (P_ARTIFICIAL1008 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint6) (P_ARTIFICIAL1009 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint6) (P_ARTIFICIAL1010 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint6) (P_ARTIFICIAL1011 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint6) (P_ARTIFICIAL1012 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint6) (P_ARTIFICIAL1013 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint6) (P_ARTIFICIAL1014 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint6) (P_ARTIFICIAL1015 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective6_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint6) (P_ARTIFICIAL1016 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover1_general_objective7_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint6) (P_ARTIFICIAL1017 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint6) (P_ARTIFICIAL1001 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint6) (P_ARTIFICIAL1003 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint6) (P_ARTIFICIAL1004 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint6) (P_ARTIFICIAL1005 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint6) (P_ARTIFICIAL1006 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint6) (P_ARTIFICIAL1007 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint6) (P_ARTIFICIAL1008 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint6) (P_ARTIFICIAL1009 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint6) (P_ARTIFICIAL1010 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint6) (P_ARTIFICIAL1011 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint6) (P_ARTIFICIAL1012 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint6) (P_ARTIFICIAL1013 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint6) (P_ARTIFICIAL1014 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint6) (P_ARTIFICIAL1015 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective6_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint6) (P_ARTIFICIAL1016 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover1_general_objective7_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint6) (P_ARTIFICIAL1017 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint6) (P_ARTIFICIAL1001 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint6) (P_ARTIFICIAL1003 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint6) (P_ARTIFICIAL1004 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint6) (P_ARTIFICIAL1005 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint6) (P_ARTIFICIAL1006 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint6) (P_ARTIFICIAL1007 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint6) (P_ARTIFICIAL1008 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint6) (P_ARTIFICIAL1009 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint6) (P_ARTIFICIAL1010 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint6) (P_ARTIFICIAL1011 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint6) (P_ARTIFICIAL1012 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint6) (P_ARTIFICIAL1013 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint6) (P_ARTIFICIAL1014 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint6) (P_ARTIFICIAL1015 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective6_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint6) (P_ARTIFICIAL1016 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover1_general_objective7_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint6) (P_ARTIFICIAL1017 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint6) (P_ARTIFICIAL1001 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint6) (P_ARTIFICIAL1003 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint6) (P_ARTIFICIAL1004 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint6) (P_ARTIFICIAL1005 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint6) (P_ARTIFICIAL1006 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint6) (P_ARTIFICIAL1007 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint6) (P_ARTIFICIAL1008 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint6) (P_ARTIFICIAL1009 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint6) (P_ARTIFICIAL1010 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint6) (P_ARTIFICIAL1011 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint6) (P_ARTIFICIAL1012 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint6) (P_ARTIFICIAL1013 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint6) (P_ARTIFICIAL1014 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint6) (P_ARTIFICIAL1015 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective6_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint6) (P_ARTIFICIAL1016 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover1_general_objective7_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint6) (P_ARTIFICIAL1017 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint6) (P_ARTIFICIAL1001 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint6) (P_ARTIFICIAL1003 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint6) (P_ARTIFICIAL1004 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint6) (P_ARTIFICIAL1005 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint6) (P_ARTIFICIAL1006 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint6) (P_ARTIFICIAL1007 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint6) (P_ARTIFICIAL1008 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint6) (P_ARTIFICIAL1009 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint6) (P_ARTIFICIAL1010 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint6) (P_ARTIFICIAL1011 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint6) (P_ARTIFICIAL1012 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint6) (P_ARTIFICIAL1013 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint6) (P_ARTIFICIAL1014 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint6) (P_ARTIFICIAL1015 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective6_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint6) (P_ARTIFICIAL1016 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover1_general_objective7_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint6) (P_ARTIFICIAL1017 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint6) (P_ARTIFICIAL1001 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint6) (P_ARTIFICIAL1003 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint6) (P_ARTIFICIAL1004 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint6) (P_ARTIFICIAL1005 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint6) (P_ARTIFICIAL1006 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint6) (P_ARTIFICIAL1007 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint6) (P_ARTIFICIAL1008 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint6) (P_ARTIFICIAL1009 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint6) (P_ARTIFICIAL1010 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint6) (P_ARTIFICIAL1011 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint6) (P_ARTIFICIAL1012 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint6) (P_ARTIFICIAL1013 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint6) (P_ARTIFICIAL1014 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint6) (P_ARTIFICIAL1015 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective6_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint6) (P_ARTIFICIAL1016 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover1_general_objective7_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint6) (P_ARTIFICIAL1017 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint6) (P_ARTIFICIAL1001 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint6) (P_ARTIFICIAL1003 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint6) (P_ARTIFICIAL1004 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint6) (P_ARTIFICIAL1005 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint6) (P_ARTIFICIAL1006 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint6) (P_ARTIFICIAL1007 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint6) (P_ARTIFICIAL1008 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint6) (P_ARTIFICIAL1009 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint6) (P_ARTIFICIAL1010 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint6) (P_ARTIFICIAL1011 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint6) (P_ARTIFICIAL1012 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint6) (P_ARTIFICIAL1013 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint6) (P_ARTIFICIAL1014 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint6) (P_ARTIFICIAL1015 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective6_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint6) (P_ARTIFICIAL1016 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover1_general_objective7_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint6) (P_ARTIFICIAL1017 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action dummy-init-action-rotemagent2
:precondition 
(and (can-use-init-action rotemagent2))
:effect 
(and (not (can-use-init-action rotemagent2)) (used-init-action rotemagent2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_rock_sample waypoint6) (at_soil_sample waypoint8) (at_rock_sample waypoint9) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_soil_sample waypoint14) (at_soil_sample waypoint15) (at_soil_sample waypoint16) (at_soil_sample waypoint17) (at_rock_sample waypoint17) (at_soil_sample waypoint18) (at_rock_sample waypoint19) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover2_rover2store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_soil_sample waypoint16) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint16)))
)

(:action sample_soil_rover2_rover2store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_soil_sample waypoint5) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint5)))
)

(:action sample_soil_rover2_rover2store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_soil_sample waypoint18) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint18)))
)

(:action sample_soil_rover2_rover2store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_soil_sample waypoint8) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint8)))
)

(:action sample_soil_rover2_rover2store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_soil_sample waypoint15) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint15)))
)

(:action sample_soil_rover2_rover2store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_soil_sample waypoint12) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover2_rover2store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_soil_sample waypoint11) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint11)))
)

(:action sample_soil_rover2_rover2store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_soil_sample waypoint14) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint14)))
)

(:action drop_rover2_rover2store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover2store))
:effect 
(and (not (full rover2store)) (empty rover2store))
)

(:action communicate_soil_data_rover2_general_waypoint16_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2009 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover2_general_waypoint16_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2009 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover2_general_waypoint16_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2009 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover2_general_waypoint16_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2009 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover2_general_waypoint16_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2009 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover2_general_waypoint16_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2009 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover2_general_waypoint16_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2009 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2014 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2015 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2016 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2017 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2018 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2019 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2020 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2021 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2022 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2023 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2024 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2025 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2026 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2027 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2028 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2029 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2030 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2031 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2032 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2033 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2034 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2035 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2036 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2037 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2014 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2015 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2016 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2017 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2018 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2019 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2020 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2021 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2022 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2023 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2024 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2025 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2026 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2027 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2028 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2029 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2030 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2031 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2032 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2033 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2034 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2035 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2036 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2037 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2014 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2015 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2016 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2017 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2018 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2019 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2020 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2021 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2022 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2023 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2024 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2025 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2026 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2027 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2028 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2029 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2030 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2031 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2032 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2033 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2034 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2035 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2036 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2037 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2014 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2015 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2016 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2017 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2018 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2019 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2020 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2021 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2022 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2023 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2024 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2025 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2026 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2027 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2028 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2029 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2030 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2031 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2032 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2033 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2034 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2035 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2036 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2037 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2014 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2015 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2016 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2017 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2018 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2019 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2020 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2021 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2022 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2023 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2024 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2025 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2026 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2027 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2028 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2029 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2030 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2031 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2032 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2033 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2034 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2035 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2036 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2037 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2014 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2015 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2016 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2017 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2018 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2019 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2020 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2021 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2022 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2023 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2024 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2025 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2026 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2027 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2028 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2029 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2030 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2031 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2032 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2033 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2034 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2035 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2036 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2037 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2014 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2015 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2016 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2017 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2018 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2019 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2020 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2021 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2022 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2023 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2024 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2025 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2026 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2027 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2028 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2029 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2030 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2031 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2032 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2033 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2034 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2035 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2036 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2037 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action sample_soil_rover2_rover2store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2038 ) (at_soil_sample waypoint3) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint3)))
)

(:action sample_soil_rover2_rover2store_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2039 ) (at_soil_sample waypoint17) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint17)))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2040 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover2_general_waypoint18_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2041 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover2_general_waypoint8_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2042 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover2_general_waypoint15_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2043 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2044 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint11_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2045 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover2_general_waypoint14_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2046 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2040 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover2_general_waypoint18_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2041 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover2_general_waypoint8_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2042 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover2_general_waypoint15_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2043 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2044 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint11_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2045 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover2_general_waypoint14_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2046 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2040 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover2_general_waypoint18_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2041 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover2_general_waypoint8_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2042 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover2_general_waypoint15_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2043 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2044 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint11_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2045 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover2_general_waypoint14_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2046 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2040 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover2_general_waypoint18_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2041 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover2_general_waypoint8_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2042 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover2_general_waypoint15_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2043 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2044 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint11_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2045 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover2_general_waypoint14_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2046 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2040 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover2_general_waypoint18_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2041 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover2_general_waypoint8_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2042 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover2_general_waypoint15_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2043 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2044 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint11_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2045 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover2_general_waypoint14_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2046 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2040 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover2_general_waypoint18_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2041 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover2_general_waypoint8_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2042 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover2_general_waypoint15_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2043 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2044 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint11_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2045 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover2_general_waypoint14_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2046 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2040 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover2_general_waypoint18_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2041 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover2_general_waypoint8_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2042 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover2_general_waypoint15_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2043 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2044 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint11_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2045 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover2_general_waypoint14_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2046 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover2_general_waypoint3_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2047 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover2_general_waypoint17_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint6) (P_ARTIFICIAL2048 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover2_general_waypoint3_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2047 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover2_general_waypoint17_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint6) (P_ARTIFICIAL2048 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover2_general_waypoint3_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2047 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover2_general_waypoint17_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint6) (P_ARTIFICIAL2048 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover2_general_waypoint3_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2047 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover2_general_waypoint17_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint6) (P_ARTIFICIAL2048 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover2_general_waypoint3_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2047 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover2_general_waypoint17_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint6) (P_ARTIFICIAL2048 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover2_general_waypoint3_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2047 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover2_general_waypoint17_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint6) (P_ARTIFICIAL2048 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover2_general_waypoint3_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2047 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover2_general_waypoint17_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint6) (P_ARTIFICIAL2048 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL2010 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action dummy-init-action-rotemagent3
:precondition 
(and (can-use-init-action rotemagent3))
:effect 
(and (not (can-use-init-action rotemagent3)) (used-init-action rotemagent3) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_rock_sample waypoint6) (at_soil_sample waypoint8) (at_rock_sample waypoint9) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_soil_sample waypoint14) (at_soil_sample waypoint15) (at_soil_sample waypoint16) (at_soil_sample waypoint17) (at_rock_sample waypoint17) (at_soil_sample waypoint18) (at_rock_sample waypoint19) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover3_rover3store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_soil_sample waypoint11) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint11)))
)

(:action sample_soil_rover3_rover3store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_soil_sample waypoint14) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint14)))
)

(:action sample_soil_rover3_rover3store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_soil_sample waypoint16) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint16)))
)

(:action sample_soil_rover3_rover3store_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_soil_sample waypoint17) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint17)))
)

(:action sample_rock_rover3_rover3store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_rock_sample waypoint9) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint9)))
)

(:action sample_rock_rover3_rover3store_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_rock_sample waypoint17) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint17)))
)

(:action drop_rover3_rover3store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover3store))
:effect 
(and (not (full rover3store)) (empty rover3store))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3006 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3006 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action sample_soil_rover3_rover3store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3008 ) (at_soil_sample waypoint3) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint3)))
)

(:action sample_soil_rover3_rover3store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_soil_sample waypoint12) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover3_rover3store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_soil_sample waypoint18) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint18)))
)

(:action sample_soil_rover3_rover3store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_soil_sample waypoint8) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint8)))
)

(:action sample_soil_rover3_rover3store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_soil_sample waypoint5) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint5)))
)

(:action sample_rock_rover3_rover3store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3013 ) (at_rock_sample waypoint4) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover3_rover3store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3008 ) (at_rock_sample waypoint3) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint3)))
)

(:action sample_rock_rover3_rover3store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_rock_sample waypoint6) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint6)))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3006 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover3_general_waypoint14_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3016 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover3_general_waypoint16_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3017 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3018 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover3_general_waypoint14_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3016 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover3_general_waypoint16_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3017 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3018 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3006 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover3_general_waypoint14_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3016 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover3_general_waypoint16_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3017 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3018 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover3_general_waypoint14_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3016 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover3_general_waypoint16_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3017 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3018 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3006 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover3_general_waypoint14_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3016 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover3_general_waypoint16_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3017 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3018 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3020 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint17_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3021 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3020 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint17_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3021 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3020 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint17_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3021 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3020 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint17_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3021 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3020 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint17_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3021 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3022 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3023 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3024 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3025 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3026 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3027 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective7_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3028 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3029 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3030 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3031 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3032 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3033 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3034 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3035 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3022 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3023 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3024 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3025 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3026 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3027 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective7_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3028 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3029 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3030 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3031 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3032 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3033 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3034 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3035 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3022 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3023 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3024 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3025 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3026 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3027 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective7_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3028 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3029 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3030 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3031 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3032 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3033 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3034 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3035 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3022 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3023 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3024 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3025 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3026 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3027 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective7_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3028 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3029 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3030 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3031 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3032 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3033 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3034 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3035 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3022 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3023 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3024 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3025 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3026 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3027 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective7_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3028 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3029 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3030 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3031 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3032 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3033 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3034 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3035 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action sample_soil_rover3_rover3store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_soil_sample waypoint15) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint15)))
)

(:action sample_rock_rover3_rover3store_waypoint19
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_rock_sample waypoint19) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint19)))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3038 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3039 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3040 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3041 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3042 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3038 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3039 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3040 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3041 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3042 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3038 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3039 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3040 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3041 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3042 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3038 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3039 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3040 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3041 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3042 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3006 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover3_general_waypoint14_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3016 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover3_general_waypoint16_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3017 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3018 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3038 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3039 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3040 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3041 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3042 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3038 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3039 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3040 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3041 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3042 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3006 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover3_general_waypoint14_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3016 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover3_general_waypoint16_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3017 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3018 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3038 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3039 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3040 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3041 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3042 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3043 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3044 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3045 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3043 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3044 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3045 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3043 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3044 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3045 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3043 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3044 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3045 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3020 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint17_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3021 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3043 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3044 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3045 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3043 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3044 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3045 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3020 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint17_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3021 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3043 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3044 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3045 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3046 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3047 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3046 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3047 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3046 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3047 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3046 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3047 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3022 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3023 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3024 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3025 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3026 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3027 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective7_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3028 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3029 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3030 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3031 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3032 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3033 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3034 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3035 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3046 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3047 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3046 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3047 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3022 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3023 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3024 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3025 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3026 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3027 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective7_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3028 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3029 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3030 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3031 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3032 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3033 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3034 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3035 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3046 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3047 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3048 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3048 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3048 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3048 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3048 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3048 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3048 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint19_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint6) (P_ARTIFICIAL3049 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover3_general_waypoint19_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint6) (P_ARTIFICIAL3049 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover3_general_waypoint19_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_lander general waypoint6) (P_ARTIFICIAL3049 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover3_general_waypoint19_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint6) (P_ARTIFICIAL3049 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover3_general_waypoint19_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_lander general waypoint6) (P_ARTIFICIAL3049 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover3_general_waypoint19_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_lander general waypoint6) (P_ARTIFICIAL3049 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover3_general_waypoint19_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_lander general waypoint6) (P_ARTIFICIAL3049 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL3007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action dummy-init-action-rotemagent4
:precondition 
(and (can-use-init-action rotemagent4))
:effect 
(and (not (can-use-init-action rotemagent4)) (used-init-action rotemagent4) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_rock_sample waypoint6) (at_soil_sample waypoint8) (at_rock_sample waypoint9) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_soil_sample waypoint14) (at_soil_sample waypoint15) (at_soil_sample waypoint16) (at_soil_sample waypoint17) (at_rock_sample waypoint17) (at_soil_sample waypoint18) (at_rock_sample waypoint19) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover4_rover4store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_soil_sample waypoint5) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint5)))
)

(:action sample_soil_rover4_rover4store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4001 ) (at_soil_sample waypoint18) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint18)))
)

(:action sample_rock_rover4_rover4store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_rock_sample waypoint6) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint6)))
)

(:action sample_soil_rover4_rover4store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_soil_sample waypoint3) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint3)))
)

(:action sample_soil_rover4_rover4store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_soil_sample waypoint8) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint8)))
)

(:action sample_soil_rover4_rover4store_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_soil_sample waypoint17) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint17)))
)

(:action sample_soil_rover4_rover4store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4006 ) (at_soil_sample waypoint11) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint11)))
)

(:action sample_soil_rover4_rover4store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_soil_sample waypoint12) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover4_rover4store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_soil_sample waypoint15) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint15)))
)

(:action sample_soil_rover4_rover4store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_soil_sample waypoint16) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint16)))
)

(:action sample_rock_rover4_rover4store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_rock_sample waypoint3) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint3)))
)

(:action sample_rock_rover4_rover4store_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_rock_sample waypoint17) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint17)))
)

(:action sample_rock_rover4_rover4store_waypoint19
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_rock_sample waypoint19) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint19)))
)

(:action drop_rover4_rover4store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover4store))
:effect 
(and (not (full rover4store)) (empty rover4store))
)

(:action communicate_soil_data_rover4_general_waypoint5_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4012 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover4_general_waypoint18_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4014 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover4_general_waypoint5_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4012 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover4_general_waypoint18_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4014 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover4_general_waypoint5_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4012 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover4_general_waypoint18_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4014 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover4_general_waypoint5_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4012 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover4_general_waypoint18_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4014 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover4_general_waypoint5_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4012 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover4_general_waypoint18_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4014 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover4_general_waypoint5_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4012 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover4_general_waypoint18_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4014 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover4_general_waypoint5_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4012 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover4_general_waypoint18_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4014 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4017 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4017 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4017 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4017 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4017 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4017 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4017 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4018 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4019 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4020 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4021 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4022 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4023 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4024 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4025 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4026 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4027 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4028 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4029 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4030 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4031 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4032 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4033 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4018 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4019 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4020 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4021 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4022 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4023 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4024 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4025 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4026 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4027 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4028 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4029 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4030 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4031 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4032 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4033 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4018 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4019 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4020 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4021 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4022 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4023 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4024 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4025 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4026 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4027 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4028 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4029 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4030 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4031 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4032 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4033 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4018 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4019 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4020 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4021 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4022 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4023 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4024 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4025 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4026 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4027 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4028 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4029 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4030 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4031 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4032 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4033 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4018 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4019 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4020 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4021 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4022 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4023 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4024 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4025 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4026 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4027 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4028 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4029 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4030 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4031 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4032 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4033 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4018 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4019 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4020 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4021 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4022 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4023 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4024 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4025 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4026 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4027 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4028 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4029 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4030 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4031 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4032 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4033 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4018 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4019 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4020 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4021 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4022 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4023 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4024 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4025 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4026 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4027 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4028 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4029 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4030 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4031 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4032 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4033 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action sample_soil_rover4_rover4store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4034 ) (at_soil_sample waypoint14) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint14)))
)

(:action sample_rock_rover4_rover4store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4035 ) (at_rock_sample waypoint4) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover4_rover4store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4036 ) (at_rock_sample waypoint9) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint9)))
)

(:action communicate_soil_data_rover4_general_waypoint3_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4037 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover4_general_waypoint8_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4038 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover4_general_waypoint17_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4039 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover4_general_waypoint11_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4040 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover4_general_waypoint12_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4041 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover4_general_waypoint15_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4042 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover4_general_waypoint16_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4043 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover4_general_waypoint3_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4037 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover4_general_waypoint8_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4038 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover4_general_waypoint17_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4039 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover4_general_waypoint11_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4040 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover4_general_waypoint12_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4041 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover4_general_waypoint15_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4042 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover4_general_waypoint16_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4043 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover4_general_waypoint3_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4037 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover4_general_waypoint8_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4038 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover4_general_waypoint17_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4039 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover4_general_waypoint11_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4040 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover4_general_waypoint12_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4041 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover4_general_waypoint15_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4042 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover4_general_waypoint16_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4043 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover4_general_waypoint3_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4037 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover4_general_waypoint8_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4038 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover4_general_waypoint17_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4039 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover4_general_waypoint11_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4040 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover4_general_waypoint12_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4041 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover4_general_waypoint15_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4042 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover4_general_waypoint16_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4043 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover4_general_waypoint3_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4037 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover4_general_waypoint8_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4038 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover4_general_waypoint17_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4039 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover4_general_waypoint11_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4040 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover4_general_waypoint12_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4041 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover4_general_waypoint15_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4042 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover4_general_waypoint16_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4043 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover4_general_waypoint3_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4037 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover4_general_waypoint8_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4038 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover4_general_waypoint17_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4039 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover4_general_waypoint11_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4040 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover4_general_waypoint12_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4041 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover4_general_waypoint15_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4042 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover4_general_waypoint16_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4043 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover4_general_waypoint3_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4037 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover4_general_waypoint8_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4038 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover4_general_waypoint17_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4039 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover4_general_waypoint11_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4040 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover4_general_waypoint12_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4041 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover4_general_waypoint15_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4042 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover4_general_waypoint16_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4043 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4044 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint17_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4045 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover4_general_waypoint19_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4046 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4044 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint17_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4045 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover4_general_waypoint19_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4046 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4044 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint17_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4045 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover4_general_waypoint19_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4046 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4044 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint17_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4045 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover4_general_waypoint19_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4046 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4044 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint17_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4045 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover4_general_waypoint19_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4046 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4044 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint17_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4045 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover4_general_waypoint19_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4046 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4044 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint17_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4045 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover4_general_waypoint19_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4046 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_soil_data_rover4_general_waypoint14_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4047 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover4_general_waypoint14_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4047 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover4_general_waypoint14_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4047 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover4_general_waypoint14_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4047 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover4_general_waypoint14_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4047 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover4_general_waypoint14_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4047 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover4_general_waypoint14_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4047 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4048 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint6) (P_ARTIFICIAL4049 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4048 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint6) (P_ARTIFICIAL4049 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4048 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint6) (P_ARTIFICIAL4049 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4048 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint6) (P_ARTIFICIAL4049 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4048 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint6) (P_ARTIFICIAL4049 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4048 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_lander general waypoint6) (P_ARTIFICIAL4049 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4048 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint6) (P_ARTIFICIAL4049 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL4013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action dummy-init-action-rotemagent5
:precondition 
(and (can-use-init-action rotemagent5))
:effect 
(and (not (can-use-init-action rotemagent5)) (used-init-action rotemagent5) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_rock_sample waypoint6) (at_soil_sample waypoint8) (at_rock_sample waypoint9) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_soil_sample waypoint14) (at_soil_sample waypoint15) (at_soil_sample waypoint16) (at_soil_sample waypoint17) (at_rock_sample waypoint17) (at_soil_sample waypoint18) (at_rock_sample waypoint19) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover5_rover5store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_soil_sample waypoint12) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover5_rover5store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_soil_sample waypoint5) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint5)))
)

(:action sample_soil_rover5_rover5store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_soil_sample waypoint14) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint14)))
)

(:action sample_soil_rover5_rover5store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_soil_sample waypoint15) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint15)))
)

(:action sample_soil_rover5_rover5store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_soil_sample waypoint16) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint16)))
)

(:action sample_rock_rover5_rover5store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5005 ) (at_rock_sample waypoint4) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover5_rover5store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5006 ) (at_rock_sample waypoint9) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint9)))
)

(:action drop_rover5_rover5store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover5store))
:effect 
(and (not (full rover5store)) (empty rover5store))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5008 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5008 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5008 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action sample_soil_rover5_rover5store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_soil_sample waypoint11) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint11)))
)

(:action sample_soil_rover5_rover5store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_soil_sample waypoint3) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint3)))
)

(:action sample_soil_rover5_rover5store_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5012 ) (at_soil_sample waypoint17) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint17)))
)

(:action sample_soil_rover5_rover5store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_soil_sample waypoint8) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint8)))
)

(:action sample_soil_rover5_rover5store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5014 ) (at_soil_sample waypoint18) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint18)))
)

(:action sample_rock_rover5_rover5store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_rock_sample waypoint6) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint6)))
)

(:action sample_rock_rover5_rover5store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_rock_sample waypoint3) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint3)))
)

(:action sample_rock_rover5_rover5store_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5012 ) (at_rock_sample waypoint17) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint17)))
)

(:action sample_rock_rover5_rover5store_waypoint19
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_rock_sample waypoint19) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint19)))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5008 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5018 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5019 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint15_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5020 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover5_general_waypoint16_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5021 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5018 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5019 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint15_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5020 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover5_general_waypoint16_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5021 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5008 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5018 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5019 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint15_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5020 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover5_general_waypoint16_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5021 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5018 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5019 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint15_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5020 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover5_general_waypoint16_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5021 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5008 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5018 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5019 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint15_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5020 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover5_general_waypoint16_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5021 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5008 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5018 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5019 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint15_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5020 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover5_general_waypoint16_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5021 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5018 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5019 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint15_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5020 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover5_general_waypoint16_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5021 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_rock_data_rover5_general_waypoint4_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5023 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5024 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint4_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5023 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5024 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint4_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5023 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5024 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint4_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5023 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5024 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint4_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5023 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5024 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint4_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5023 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5024 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint4_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5023 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5024 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_soil_data_rover5_general_waypoint11_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5025 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover5_general_waypoint3_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5026 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover5_general_waypoint17_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5027 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5028 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5029 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover5_general_waypoint11_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5025 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover5_general_waypoint3_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5026 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover5_general_waypoint17_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5027 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5028 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5029 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover5_general_waypoint11_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5025 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover5_general_waypoint3_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5026 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover5_general_waypoint17_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5027 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5028 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5029 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover5_general_waypoint11_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5025 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover5_general_waypoint3_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5026 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover5_general_waypoint17_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5027 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5028 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5029 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover5_general_waypoint11_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5025 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover5_general_waypoint3_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5026 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover5_general_waypoint17_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5027 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5028 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5029 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover5_general_waypoint11_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5025 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover5_general_waypoint3_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5026 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover5_general_waypoint17_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5027 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5028 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5029 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover5_general_waypoint11_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5025 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover5_general_waypoint3_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5026 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover5_general_waypoint17_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5027 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5028 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5029 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5030 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint3_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5031 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover5_general_waypoint17_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5032 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover5_general_waypoint19_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5033 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5030 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint3_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5031 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover5_general_waypoint17_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5032 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover5_general_waypoint19_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5033 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5030 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint3_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5031 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover5_general_waypoint17_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5032 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover5_general_waypoint19_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5033 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5030 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint3_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5031 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover5_general_waypoint17_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5032 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover5_general_waypoint19_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5033 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5030 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint3_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5031 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover5_general_waypoint17_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5032 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover5_general_waypoint19_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5033 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5030 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint3_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5031 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover5_general_waypoint17_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5032 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover5_general_waypoint19_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5033 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5030 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint3_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5031 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover5_general_waypoint17_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5032 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover5_general_waypoint19_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5033 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint19))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5034 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5035 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5036 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5037 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5038 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5039 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5040 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5041 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5042 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5043 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5044 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5045 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5046 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5047 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5048 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5049 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5050 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5051 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5052 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5053 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5054 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5055 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover5_general_objective6_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5056 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover5_general_objective7_low_res_waypoint0_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_lander general waypoint6) (P_ARTIFICIAL5057 ) (visible waypoint0 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5034 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5035 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5036 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5037 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5038 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5039 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5040 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5041 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5042 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5043 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5044 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5045 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5046 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5047 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5048 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5049 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5050 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5051 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5052 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5053 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5054 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5055 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover5_general_objective6_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5056 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover5_general_objective7_low_res_waypoint1_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_lander general waypoint6) (P_ARTIFICIAL5057 ) (visible waypoint1 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5034 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5035 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5036 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5037 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5038 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5039 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5040 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5041 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5042 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5043 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5044 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5045 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5046 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5047 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5048 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5049 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5050 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5051 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5052 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5053 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5054 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5055 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover5_general_objective6_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5056 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover5_general_objective7_low_res_waypoint8_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint6) (P_ARTIFICIAL5057 ) (visible waypoint8 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5034 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5035 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5036 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5037 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5038 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5039 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5040 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5041 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5042 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5043 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5044 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5045 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5046 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5047 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5048 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5049 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5050 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5051 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5052 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5053 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5054 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5055 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover5_general_objective6_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5056 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover5_general_objective7_low_res_waypoint16_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_lander general waypoint6) (P_ARTIFICIAL5057 ) (visible waypoint16 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5034 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5035 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5036 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5037 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5038 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5039 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5040 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5041 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5042 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5043 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5044 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5045 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5046 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5047 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5048 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5049 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5050 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5051 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5052 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5053 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5054 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5055 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover5_general_objective6_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5056 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover5_general_objective7_low_res_waypoint19_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint6) (P_ARTIFICIAL5057 ) (visible waypoint19 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5034 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5035 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5036 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5037 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5038 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5039 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5040 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5041 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5042 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5043 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5044 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5045 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5046 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5047 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5048 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5049 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5050 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5051 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5052 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5053 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5054 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5055 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover5_general_objective6_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5056 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover5_general_objective7_low_res_waypoint13_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint6) (P_ARTIFICIAL5057 ) (visible waypoint13 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5034 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5035 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5036 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5037 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5038 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5039 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5040 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5041 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5042 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5043 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5044 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5045 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5046 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5047 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5048 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5049 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5050 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5051 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5052 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5053 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5054 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5055 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover5_general_objective6_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5056 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover5_general_objective7_low_res_waypoint15_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint6) (P_ARTIFICIAL5057 ) (visible waypoint15 waypoint6) (P_ARTIFICIAL5009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

)
