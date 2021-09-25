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
 camera1 - camera
 camera3 - camera
 rover3store - store
 rover0store - store
 colour - mode
 objective4 - objective
 waypoint16 - waypoint
 rover4store - store
 waypoint17 - waypoint
 high_res - mode
 rover2store - store
 waypoint4 - waypoint
 general - lander
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
 waypoint18 - waypoint
 waypoint19 - waypoint
 camera5 - camera
 camera0 - camera
 rover5store - store
 objective1 - objective
 objective0 - objective
 objective3 - objective
 objective2 - objective
 objective5 - objective
 waypoint15 - waypoint
 camera6 - camera
 objective6 - objective
 waypoint10 - waypoint
 waypoint14 - waypoint
 waypoint11 - waypoint
 rover1store - store
 waypoint12 - waypoint
 camera2 - camera
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
(P_ARTIFICIAL32)
(P_ARTIFICIAL33)
(P_ARTIFICIAL34)
(P_ARTIFICIAL35)
(P_ARTIFICIAL36)
(P_ARTIFICIAL37)
(P_ARTIFICIAL38)
(P_ARTIFICIAL39)
(P_ARTIFICIAL40)
(P_ARTIFICIAL41)
(P_ARTIFICIAL42)
(P_ARTIFICIAL43)
(P_ARTIFICIAL44)
(P_ARTIFICIAL45)
(P_ARTIFICIAL46)
(P_ARTIFICIAL47)
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
(P_ARTIFICIAL1025)
(P_ARTIFICIAL1026)
(P_ARTIFICIAL1027)
(P_ARTIFICIAL1028)
(P_ARTIFICIAL1029)
(P_ARTIFICIAL1030)
(P_ARTIFICIAL1031)
(P_ARTIFICIAL1032)
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
)

(:action dummy-init-action-rotemagent0
:precondition 
(and (can-use-init-action rotemagent0))
:effect 
(and (not (can-use-init-action rotemagent0)) (used-init-action rotemagent0) (at_soil_sample waypoint0) (at_rock_sample waypoint1) (at_rock_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint4) (at_rock_sample waypoint5) (at_rock_sample waypoint6) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint9) (at_rock_sample waypoint9) (at_soil_sample waypoint10) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_rock_sample waypoint13) (at_soil_sample waypoint14) (at_soil_sample waypoint15) (at_soil_sample waypoint17) (at_rock_sample waypoint17) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint19) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover0_rover0store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_rock_sample waypoint2) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint2)))
)

(:action sample_soil_rover0_rover0store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_soil_sample waypoint0) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint0)))
)

(:action sample_soil_rover0_rover0store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_soil_sample waypoint9) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint9)))
)

(:action sample_soil_rover0_rover0store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3 ) (at_soil_sample waypoint14) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint14)))
)

(:action sample_soil_rover0_rover0store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_soil_sample waypoint18) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint18)))
)

(:action sample_rock_rover0_rover0store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_rock_sample waypoint6) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint6)))
)

(:action sample_rock_rover0_rover0store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_rock_sample waypoint7) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover0_rover0store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_rock_sample waypoint9) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint9)))
)

(:action sample_rock_rover0_rover0store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_rock_sample waypoint18) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint18)))
)

(:action drop_rover0_rover0store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover0store))
:effect 
(and (not (full rover0store)) (empty rover0store))
)

(:action communicate_rock_data_rover0_general_waypoint2_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL7 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action sample_soil_rover0_rover0store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_soil_sample waypoint12) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover0_rover0store_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_soil_sample waypoint13) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint13)))
)

(:action sample_soil_rover0_rover0store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL11 ) (at_soil_sample waypoint15) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint15)))
)

(:action sample_soil_rover0_rover0store_waypoint19
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_soil_sample waypoint19) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint19)))
)

(:action sample_soil_rover0_rover0store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_soil_sample waypoint3) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint3)))
)

(:action sample_soil_rover0_rover0store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_soil_sample waypoint11) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint11)))
)

(:action sample_soil_rover0_rover0store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_soil_sample waypoint8) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint8)))
)

(:action sample_rock_rover0_rover0store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_rock_sample waypoint12) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint12)))
)

(:action sample_rock_rover0_rover0store_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_rock_sample waypoint13) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint13)))
)

(:action sample_rock_rover0_rover0store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL16 ) (at_rock_sample waypoint1) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint1)))
)

(:action sample_rock_rover0_rover0store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_rock_sample waypoint4) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover0_rover0store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_rock_sample waypoint5) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint5)))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL19 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL20 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint14_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL21 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL22 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL19 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL20 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint14_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL21 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL22 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL19 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL20 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint14_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL21 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL22 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_rock_data_rover0_general_waypoint6_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL23 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover0_general_waypoint7_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL24 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover0_general_waypoint9_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL25 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover0_general_waypoint18_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL26 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover0_general_waypoint2_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL7 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover0_general_waypoint6_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL23 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover0_general_waypoint7_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL24 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover0_general_waypoint9_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL25 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover0_general_waypoint18_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL26 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover0_general_waypoint2_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL7 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover0_general_waypoint6_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL23 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover0_general_waypoint7_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL24 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover0_general_waypoint9_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL25 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover0_general_waypoint18_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL26 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL27 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL28 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL29 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL30 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL31 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL32 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL33 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL27 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL28 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL29 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL30 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL31 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL32 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL33 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL27 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL28 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL29 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL30 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL31 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL32 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL33 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action sample_soil_rover0_rover0store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_soil_sample waypoint10) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint10)))
)

(:action communicate_soil_data_rover0_general_waypoint12_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL35 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover0_general_waypoint13_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL36 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover0_general_waypoint15_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL37 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover0_general_waypoint19_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL38 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover0_general_waypoint3_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL39 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover0_general_waypoint11_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL40 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL41 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint12_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL35 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover0_general_waypoint13_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL36 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover0_general_waypoint15_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL37 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover0_general_waypoint19_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL38 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover0_general_waypoint3_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL39 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover0_general_waypoint11_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL40 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL41 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint12_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL35 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover0_general_waypoint13_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL36 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover0_general_waypoint15_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL37 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover0_general_waypoint19_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL38 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover0_general_waypoint3_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL39 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover0_general_waypoint11_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL40 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL41 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_rock_data_rover0_general_waypoint12_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL42 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover0_general_waypoint13_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL43 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover0_general_waypoint1_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL44 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL45 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint5_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL46 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover0_general_waypoint12_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL42 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover0_general_waypoint13_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL43 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover0_general_waypoint1_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL44 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL45 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint5_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL46 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover0_general_waypoint12_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL42 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover0_general_waypoint13_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL43 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover0_general_waypoint1_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL44 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL45 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint5_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL46 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_soil_data_rover0_general_waypoint10_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint17) (P_ARTIFICIAL47 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover0_general_waypoint10_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_lander general waypoint17) (P_ARTIFICIAL47 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover0_general_waypoint10_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint17) (P_ARTIFICIAL47 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action dummy-init-action-rotemagent1
:precondition 
(and (can-use-init-action rotemagent1))
:effect 
(and (not (can-use-init-action rotemagent1)) (used-init-action rotemagent1) (at_soil_sample waypoint0) (at_rock_sample waypoint1) (at_rock_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint4) (at_rock_sample waypoint5) (at_rock_sample waypoint6) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint9) (at_rock_sample waypoint9) (at_soil_sample waypoint10) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_rock_sample waypoint13) (at_soil_sample waypoint14) (at_soil_sample waypoint15) (at_soil_sample waypoint17) (at_rock_sample waypoint17) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint19) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover1_rover1store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_rock_sample waypoint9) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint9)))
)

(:action sample_rock_rover1_rover1store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1001 ) (at_rock_sample waypoint4) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover1_rover1store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_rock_sample waypoint7) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover1_rover1store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_rock_sample waypoint12) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint12)))
)

(:action sample_rock_rover1_rover1store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_rock_sample waypoint18) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint18)))
)

(:action drop_rover1_rover1store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover1store))
:effect 
(and (not (full rover1store)) (empty rover1store))
)

(:action communicate_rock_data_rover1_general_waypoint9_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint17) (P_ARTIFICIAL1006 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover1_general_waypoint9_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint17) (P_ARTIFICIAL1006 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action sample_rock_rover1_rover1store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_rock_sample waypoint2) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint2)))
)

(:action sample_rock_rover1_rover1store_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1010 ) (at_rock_sample waypoint13) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint13)))
)

(:action sample_rock_rover1_rover1store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1011 ) (at_rock_sample waypoint6) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint6)))
)

(:action sample_rock_rover1_rover1store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1012 ) (at_rock_sample waypoint5) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint5)))
)

(:action sample_rock_rover1_rover1store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1013 ) (at_rock_sample waypoint1) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint1)))
)

(:action sample_rock_rover1_rover1store_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_rock_sample waypoint17) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint17)))
)

(:action communicate_rock_data_rover1_general_waypoint4_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint17) (P_ARTIFICIAL1015 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover1_general_waypoint7_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint17) (P_ARTIFICIAL1016 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover1_general_waypoint12_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint17) (P_ARTIFICIAL1017 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover1_general_waypoint18_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint17) (P_ARTIFICIAL1018 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover1_general_waypoint9_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint17) (P_ARTIFICIAL1006 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover1_general_waypoint4_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint17) (P_ARTIFICIAL1015 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover1_general_waypoint7_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint17) (P_ARTIFICIAL1016 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover1_general_waypoint12_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint17) (P_ARTIFICIAL1017 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover1_general_waypoint18_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint17) (P_ARTIFICIAL1018 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover1_general_waypoint4_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint17) (P_ARTIFICIAL1015 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover1_general_waypoint7_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint17) (P_ARTIFICIAL1016 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover1_general_waypoint12_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint17) (P_ARTIFICIAL1017 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover1_general_waypoint18_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint17) (P_ARTIFICIAL1018 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint17) (P_ARTIFICIAL1020 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint17) (P_ARTIFICIAL1021 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint17) (P_ARTIFICIAL1022 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint17) (P_ARTIFICIAL1023 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint17) (P_ARTIFICIAL1024 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint17) (P_ARTIFICIAL1025 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint17) (P_ARTIFICIAL1026 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint17) (P_ARTIFICIAL1020 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint17) (P_ARTIFICIAL1021 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint17) (P_ARTIFICIAL1022 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint17) (P_ARTIFICIAL1023 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint17) (P_ARTIFICIAL1024 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint17) (P_ARTIFICIAL1025 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint17) (P_ARTIFICIAL1026 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint17) (P_ARTIFICIAL1020 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint17) (P_ARTIFICIAL1021 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint17) (P_ARTIFICIAL1022 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint17) (P_ARTIFICIAL1023 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint17) (P_ARTIFICIAL1024 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint17) (P_ARTIFICIAL1025 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint17) (P_ARTIFICIAL1026 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_rock_data_rover1_general_waypoint2_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint17) (P_ARTIFICIAL1027 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover1_general_waypoint13_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint17) (P_ARTIFICIAL1028 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover1_general_waypoint6_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint17) (P_ARTIFICIAL1029 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover1_general_waypoint5_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint17) (P_ARTIFICIAL1030 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover1_general_waypoint1_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint17) (P_ARTIFICIAL1031 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover1_general_waypoint17_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint17) (P_ARTIFICIAL1032 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover1_general_waypoint2_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint17) (P_ARTIFICIAL1027 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover1_general_waypoint13_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint17) (P_ARTIFICIAL1028 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover1_general_waypoint6_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint17) (P_ARTIFICIAL1029 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover1_general_waypoint5_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint17) (P_ARTIFICIAL1030 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover1_general_waypoint1_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint17) (P_ARTIFICIAL1031 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover1_general_waypoint17_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint17) (P_ARTIFICIAL1032 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover1_general_waypoint2_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint17) (P_ARTIFICIAL1027 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover1_general_waypoint13_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint17) (P_ARTIFICIAL1028 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover1_general_waypoint6_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint17) (P_ARTIFICIAL1029 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover1_general_waypoint5_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint17) (P_ARTIFICIAL1030 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover1_general_waypoint1_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint17) (P_ARTIFICIAL1031 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover1_general_waypoint17_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint17) (P_ARTIFICIAL1032 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL1007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action dummy-init-action-rotemagent2
:precondition 
(and (can-use-init-action rotemagent2))
:effect 
(and (not (can-use-init-action rotemagent2)) (used-init-action rotemagent2) (at_soil_sample waypoint0) (at_rock_sample waypoint1) (at_rock_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint4) (at_rock_sample waypoint5) (at_rock_sample waypoint6) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint9) (at_rock_sample waypoint9) (at_soil_sample waypoint10) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_rock_sample waypoint13) (at_soil_sample waypoint14) (at_soil_sample waypoint15) (at_soil_sample waypoint17) (at_rock_sample waypoint17) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint19) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover2_rover2store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_soil_sample waypoint0) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint0)))
)

(:action sample_soil_rover2_rover2store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_soil_sample waypoint9) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint9)))
)

(:action sample_soil_rover2_rover2store_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_soil_sample waypoint13) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint13)))
)

(:action sample_soil_rover2_rover2store_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_soil_sample waypoint17) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint17)))
)

(:action sample_soil_rover2_rover2store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_soil_sample waypoint18) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint18)))
)

(:action drop_rover2_rover2store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover2store))
:effect 
(and (not (full rover2store)) (empty rover2store))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2005 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action sample_soil_rover2_rover2store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_soil_sample waypoint11) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint11)))
)

(:action sample_soil_rover2_rover2store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_soil_sample waypoint12) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover2_rover2store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_soil_sample waypoint15) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint15)))
)

(:action sample_soil_rover2_rover2store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_soil_sample waypoint3) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint3)))
)

(:action sample_soil_rover2_rover2store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_soil_sample waypoint10) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint10)))
)

(:action sample_soil_rover2_rover2store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_soil_sample waypoint14) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint14)))
)

(:action sample_soil_rover2_rover2store_waypoint19
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_soil_sample waypoint19) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint19)))
)

(:action communicate_soil_data_rover2_general_waypoint9_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2014 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover2_general_waypoint13_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2015 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover2_general_waypoint17_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2016 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover2_general_waypoint18_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2017 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2005 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint9_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2014 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover2_general_waypoint13_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2015 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover2_general_waypoint17_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2016 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover2_general_waypoint18_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2017 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2005 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint9_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2014 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover2_general_waypoint13_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2015 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover2_general_waypoint17_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2016 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover2_general_waypoint18_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2017 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2018 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2019 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2020 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2021 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2022 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2023 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2024 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2025 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2026 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2027 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2028 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2029 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2030 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2031 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2018 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2019 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2020 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2021 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2022 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2023 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2024 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2025 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2026 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2027 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2028 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2029 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2030 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2031 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2018 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2019 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2020 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2021 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2022 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2023 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2024 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2025 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2026 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2027 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2028 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2029 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2030 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2031 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_soil_data_rover2_general_waypoint11_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2032 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2033 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint15_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2034 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover2_general_waypoint3_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2035 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover2_general_waypoint10_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2036 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover2_general_waypoint14_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2037 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover2_general_waypoint19_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint17) (P_ARTIFICIAL2038 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover2_general_waypoint11_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2032 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2033 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint15_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2034 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover2_general_waypoint3_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2035 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover2_general_waypoint10_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2036 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover2_general_waypoint14_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2037 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover2_general_waypoint19_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_lander general waypoint17) (P_ARTIFICIAL2038 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover2_general_waypoint11_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2032 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2033 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint15_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2034 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover2_general_waypoint3_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2035 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover2_general_waypoint10_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2036 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover2_general_waypoint14_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2037 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover2_general_waypoint19_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint17) (P_ARTIFICIAL2038 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL2006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action dummy-init-action-rotemagent3
:precondition 
(and (can-use-init-action rotemagent3))
:effect 
(and (not (can-use-init-action rotemagent3)) (used-init-action rotemagent3) (at_soil_sample waypoint0) (at_rock_sample waypoint1) (at_rock_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint4) (at_rock_sample waypoint5) (at_rock_sample waypoint6) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint9) (at_rock_sample waypoint9) (at_soil_sample waypoint10) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_rock_sample waypoint13) (at_soil_sample waypoint14) (at_soil_sample waypoint15) (at_soil_sample waypoint17) (at_rock_sample waypoint17) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint19) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover3_rover3store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_rock_sample waypoint18) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint18)))
)

(:action sample_rock_rover3_rover3store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_rock_sample waypoint4) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint4)))
)

(:action drop_rover3_rover3store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover3store))
:effect 
(and (not (full rover3store)) (empty rover3store))
)

(:action communicate_rock_data_rover3_general_waypoint18_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3003 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover3_general_waypoint18_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3003 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action sample_rock_rover3_rover3store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_rock_sample waypoint1) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint1)))
)

(:action sample_rock_rover3_rover3store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_rock_sample waypoint2) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint2)))
)

(:action sample_rock_rover3_rover3store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3008 ) (at_rock_sample waypoint9) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint9)))
)

(:action sample_rock_rover3_rover3store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_rock_sample waypoint12) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint12)))
)

(:action sample_rock_rover3_rover3store_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_rock_sample waypoint17) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint17)))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3011 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3011 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action sample_rock_rover3_rover3store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_rock_sample waypoint6) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint6)))
)

(:action sample_rock_rover3_rover3store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3013 ) (at_rock_sample waypoint7) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover3_rover3store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_rock_sample waypoint5) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint5)))
)

(:action sample_rock_rover3_rover3store_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_rock_sample waypoint13) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint13)))
)

(:action communicate_rock_data_rover3_general_waypoint1_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3016 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover3_general_waypoint2_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3017 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3018 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3019 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint17_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3020 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover3_general_waypoint1_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3016 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover3_general_waypoint2_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3017 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3018 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3019 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint17_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3020 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover3_general_waypoint18_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3003 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3011 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint1_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3016 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover3_general_waypoint2_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3017 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3018 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3019 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint17_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3020 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3022 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3023 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3024 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3025 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3026 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3027 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3028 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3029 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3030 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3031 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3032 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective4_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3033 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover3_general_objective5_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3034 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover3_general_objective6_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3035 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3036 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3037 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3038 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3039 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3040 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3041 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3042 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3022 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3023 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3024 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3025 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3026 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3027 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3028 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3029 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3030 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3031 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3032 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective4_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3033 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover3_general_objective5_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3034 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover3_general_objective6_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3035 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3036 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3037 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3038 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3039 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3040 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3041 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3042 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3022 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3023 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3024 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3025 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3026 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3027 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3028 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3029 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3030 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3031 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3032 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective4_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3033 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover3_general_objective5_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3034 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover3_general_objective6_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3035 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3036 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3037 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3038 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3039 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3040 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3041 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3042 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3043 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3044 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint5_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3045 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover3_general_waypoint13_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint17) (P_ARTIFICIAL3046 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3043 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3044 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint5_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3045 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover3_general_waypoint13_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint17) (P_ARTIFICIAL3046 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3043 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3044 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint5_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3045 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover3_general_waypoint13_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint17) (P_ARTIFICIAL3046 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL3004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action dummy-init-action-rotemagent4
:precondition 
(and (can-use-init-action rotemagent4))
:effect 
(and (not (can-use-init-action rotemagent4)) (used-init-action rotemagent4) (at_soil_sample waypoint0) (at_rock_sample waypoint1) (at_rock_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint4) (at_rock_sample waypoint5) (at_rock_sample waypoint6) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint9) (at_rock_sample waypoint9) (at_soil_sample waypoint10) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_rock_sample waypoint13) (at_soil_sample waypoint14) (at_soil_sample waypoint15) (at_soil_sample waypoint17) (at_rock_sample waypoint17) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint19) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover4_rover4store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_soil_sample waypoint3) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint3)))
)

(:action sample_soil_rover4_rover4store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4001 ) (at_soil_sample waypoint9) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint9)))
)

(:action sample_soil_rover4_rover4store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_soil_sample waypoint10) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint10)))
)

(:action sample_soil_rover4_rover4store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_soil_sample waypoint11) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint11)))
)

(:action sample_soil_rover4_rover4store_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_soil_sample waypoint13) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint13)))
)

(:action sample_soil_rover4_rover4store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_soil_sample waypoint15) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint15)))
)

(:action drop_rover4_rover4store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover4store))
:effect 
(and (not (full rover4store)) (empty rover4store))
)

(:action communicate_soil_data_rover4_general_waypoint3_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4006 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action sample_soil_rover4_rover4store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_soil_sample waypoint12) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover4_rover4store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_soil_sample waypoint14) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint14)))
)

(:action sample_soil_rover4_rover4store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_soil_sample waypoint0) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint0)))
)

(:action sample_soil_rover4_rover4store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_soil_sample waypoint8) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint8)))
)

(:action sample_soil_rover4_rover4store_waypoint19
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_soil_sample waypoint19) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint19)))
)

(:action sample_soil_rover4_rover4store_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_soil_sample waypoint17) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint17)))
)

(:action sample_soil_rover4_rover4store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_soil_sample waypoint18) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint18)))
)

(:action communicate_soil_data_rover4_general_waypoint3_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4006 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover4_general_waypoint9_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4015 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover4_general_waypoint10_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4016 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover4_general_waypoint11_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4017 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover4_general_waypoint13_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4018 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover4_general_waypoint15_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4019 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover4_general_waypoint9_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4015 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover4_general_waypoint10_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4016 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover4_general_waypoint11_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4017 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover4_general_waypoint13_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4018 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover4_general_waypoint15_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4019 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover4_general_waypoint3_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4006 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover4_general_waypoint9_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4015 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover4_general_waypoint10_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4016 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover4_general_waypoint11_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4017 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover4_general_waypoint13_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4018 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover4_general_waypoint15_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4019 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4020 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4021 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4022 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4023 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4024 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4025 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4026 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4027 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4028 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4029 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4030 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4031 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4020 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4021 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4022 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4023 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4024 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4025 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4026 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4027 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4028 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4029 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4030 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4031 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4020 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4021 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4022 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4023 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4024 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4025 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4026 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4027 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4028 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4029 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4030 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4031 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_soil_data_rover4_general_waypoint12_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4032 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover4_general_waypoint14_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4033 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover4_general_waypoint0_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4034 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover4_general_waypoint8_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4035 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover4_general_waypoint19_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4036 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover4_general_waypoint17_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4037 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover4_general_waypoint18_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4038 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover4_general_waypoint12_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4032 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover4_general_waypoint14_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4033 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover4_general_waypoint0_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4034 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover4_general_waypoint8_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4035 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover4_general_waypoint19_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4036 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover4_general_waypoint17_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4037 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover4_general_waypoint18_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4038 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover4_general_waypoint12_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4032 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover4_general_waypoint14_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4033 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover4_general_waypoint0_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4034 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover4_general_waypoint8_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4035 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover4_general_waypoint19_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4036 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover4_general_waypoint17_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4037 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover4_general_waypoint18_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4038 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4039 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint17) (P_ARTIFICIAL4040 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4039 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_lander general waypoint17) (P_ARTIFICIAL4040 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4039 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_lander general waypoint17) (P_ARTIFICIAL4040 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL4007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action dummy-init-action-rotemagent5
:precondition 
(and (can-use-init-action rotemagent5))
:effect 
(and (not (can-use-init-action rotemagent5)) (used-init-action rotemagent5) (at_soil_sample waypoint0) (at_rock_sample waypoint1) (at_rock_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint4) (at_rock_sample waypoint5) (at_rock_sample waypoint6) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint9) (at_rock_sample waypoint9) (at_soil_sample waypoint10) (at_soil_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_rock_sample waypoint13) (at_soil_sample waypoint14) (at_soil_sample waypoint15) (at_soil_sample waypoint17) (at_rock_sample waypoint17) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint19) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
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

(:action sample_rock_rover5_rover5store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_rock_sample waypoint12) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint12)))
)

(:action sample_rock_rover5_rover5store_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_rock_sample waypoint13) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint13)))
)

(:action sample_rock_rover5_rover5store_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_rock_sample waypoint17) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint17)))
)

(:action sample_rock_rover5_rover5store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_rock_sample waypoint18) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint18)))
)

(:action sample_rock_rover5_rover5store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5005 ) (at_rock_sample waypoint2) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint2)))
)

(:action sample_rock_rover5_rover5store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5006 ) (at_rock_sample waypoint6) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint6)))
)

(:action sample_rock_rover5_rover5store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_rock_sample waypoint7) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover5_rover5store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5008 ) (at_rock_sample waypoint4) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover5_rover5store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_rock_sample waypoint5) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint5)))
)

(:action sample_rock_rover5_rover5store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_rock_sample waypoint9) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint9)))
)

(:action drop_rover5_rover5store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover5store))
:effect 
(and (not (full rover5store)) (empty rover5store))
)

(:action communicate_rock_data_rover5_general_waypoint1_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5012 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover5_general_waypoint12_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5014 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover5_general_waypoint13_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5015 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover5_general_waypoint17_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5016 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover5_general_waypoint18_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5017 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover5_general_waypoint1_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5012 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover5_general_waypoint12_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5014 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover5_general_waypoint13_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5015 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover5_general_waypoint17_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5016 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover5_general_waypoint18_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5017 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover5_general_waypoint1_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5012 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint1))
)

(:action communicate_rock_data_rover5_general_waypoint12_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5014 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover5_general_waypoint13_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5015 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover5_general_waypoint17_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5016 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint17))
)

(:action communicate_rock_data_rover5_general_waypoint18_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5017 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5020 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5021 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5022 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5023 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5024 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5025 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5026 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5027 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5028 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5029 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5030 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5031 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5032 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover5_general_objective6_low_res_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5033 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5020 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5021 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5022 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5023 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5024 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5025 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5026 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5027 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5028 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5029 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5030 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5031 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5032 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover5_general_objective6_low_res_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5033 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5020 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5021 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5022 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5023 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5024 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5025 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5026 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective0_low_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5027 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover5_general_objective1_low_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5028 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover5_general_objective2_low_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5029 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover5_general_objective3_low_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5030 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover5_general_objective4_low_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5031 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover5_general_objective5_low_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5032 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover5_general_objective6_low_res_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5033 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_rock_data_rover5_general_waypoint2_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5034 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5035 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint7_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5036 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover5_general_waypoint4_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5037 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover5_general_waypoint5_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5038 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint0_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint17) (P_ARTIFICIAL5039 ) (visible waypoint0 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint2_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5034 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5035 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint7_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5036 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover5_general_waypoint4_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5037 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover5_general_waypoint5_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5038 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint11_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_lander general waypoint17) (P_ARTIFICIAL5039 ) (visible waypoint11 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint2_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5034 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5035 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint7_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5036 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover5_general_waypoint4_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5037 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover5_general_waypoint5_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5038 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint19_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_lander general waypoint17) (P_ARTIFICIAL5039 ) (visible waypoint19 waypoint17) (P_ARTIFICIAL5013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

)
