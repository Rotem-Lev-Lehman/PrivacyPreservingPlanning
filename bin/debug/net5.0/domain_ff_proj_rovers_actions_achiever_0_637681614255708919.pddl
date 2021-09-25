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
 rotemagent6 - rotemagent
 rotemagent7 - rotemagent
 rotemplaceholder - rotemplaceholder
 camera6 - camera
 waypoint13 - waypoint
 rover7store - store
 rover3store - store
 rover0store - store
 colour - mode
 general - lander
 waypoint15 - waypoint
 waypoint16 - waypoint
 camera2 - camera
 rover4store - store
 waypoint11 - waypoint
 high_res - mode
 camera3 - camera
 rover6store - store
 waypoint24 - waypoint
 rover2store - store
 waypoint21 - waypoint
 waypoint20 - waypoint
 waypoint23 - waypoint
 waypoint22 - waypoint
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
 camera0 - camera
 rover5store - store
 objective1 - objective
 objective0 - objective
 objective3 - objective
 objective2 - objective
 objective5 - objective
 objective4 - objective
 objective7 - objective
 objective6 - objective
 waypoint10 - waypoint
 waypoint14 - waypoint
 camera1 - camera
 rover1store - store
 waypoint12 - waypoint
 rover0 - rover
 rover1 - rover
 rover2 - rover
 rover3 - rover
 rover4 - rover
 rover5 - rover
 rover6 - rover
 rover7 - rover
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
(P_ARTIFICIAL48)
(P_ARTIFICIAL49)
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
(P_ARTIFICIAL4041)
(P_ARTIFICIAL4042)
(P_ARTIFICIAL4043)
(P_ARTIFICIAL4044)
(P_ARTIFICIAL4045)
(P_ARTIFICIAL4046)
(P_ARTIFICIAL4047)
(P_ARTIFICIAL4048)
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
(P_ARTIFICIAL6000)
(P_ARTIFICIAL6001)
(P_ARTIFICIAL6002)
(P_ARTIFICIAL6003)
(P_ARTIFICIAL6004)
(P_ARTIFICIAL6005)
(P_ARTIFICIAL6006)
(P_ARTIFICIAL6007)
(P_ARTIFICIAL6008)
(P_ARTIFICIAL6009)
(P_ARTIFICIAL6010)
(P_ARTIFICIAL6011)
(P_ARTIFICIAL6012)
(P_ARTIFICIAL6013)
(P_ARTIFICIAL6014)
(P_ARTIFICIAL6015)
(P_ARTIFICIAL6016)
(P_ARTIFICIAL6017)
(P_ARTIFICIAL6018)
(P_ARTIFICIAL6019)
(P_ARTIFICIAL6020)
(P_ARTIFICIAL6021)
(P_ARTIFICIAL6022)
(P_ARTIFICIAL6023)
(P_ARTIFICIAL6024)
(P_ARTIFICIAL6025)
(P_ARTIFICIAL6026)
(P_ARTIFICIAL6027)
(P_ARTIFICIAL6028)
(P_ARTIFICIAL6029)
(P_ARTIFICIAL6030)
(P_ARTIFICIAL6031)
(P_ARTIFICIAL6032)
(P_ARTIFICIAL6033)
(P_ARTIFICIAL6034)
(P_ARTIFICIAL6035)
(P_ARTIFICIAL6036)
(P_ARTIFICIAL6037)
(P_ARTIFICIAL6038)
(P_ARTIFICIAL6039)
(P_ARTIFICIAL6040)
(P_ARTIFICIAL6041)
(P_ARTIFICIAL6042)
(P_ARTIFICIAL6043)
(P_ARTIFICIAL6044)
(P_ARTIFICIAL6045)
(P_ARTIFICIAL6046)
(P_ARTIFICIAL6047)
(P_ARTIFICIAL6048)
(P_ARTIFICIAL6049)
(P_ARTIFICIAL6050)
(P_ARTIFICIAL6051)
(P_ARTIFICIAL6052)
(P_ARTIFICIAL6053)
(P_ARTIFICIAL6054)
(P_ARTIFICIAL6055)
(P_ARTIFICIAL6056)
(P_ARTIFICIAL6057)
(P_ARTIFICIAL7000)
(P_ARTIFICIAL7001)
(P_ARTIFICIAL7002)
(P_ARTIFICIAL7003)
(P_ARTIFICIAL7004)
(P_ARTIFICIAL7005)
(P_ARTIFICIAL7006)
(P_ARTIFICIAL7007)
(P_ARTIFICIAL7008)
(P_ARTIFICIAL7009)
(P_ARTIFICIAL7010)
(P_ARTIFICIAL7011)
(P_ARTIFICIAL7012)
(P_ARTIFICIAL7013)
(P_ARTIFICIAL7014)
(P_ARTIFICIAL7015)
(P_ARTIFICIAL7016)
(P_ARTIFICIAL7017)
(P_ARTIFICIAL7018)
(P_ARTIFICIAL7019)
(P_ARTIFICIAL7020)
(P_ARTIFICIAL7021)
(P_ARTIFICIAL7022)
)

(:action dummy-init-action-rotemagent0
:precondition 
(and (can-use-init-action rotemagent0))
:effect 
(and (not (can-use-init-action rotemagent0)) (used-init-action rotemagent0) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint9) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_soil_sample waypoint11) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_rock_sample waypoint14) (at_soil_sample waypoint15) (at_rock_sample waypoint16) (at_soil_sample waypoint17) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint20) (at_rock_sample waypoint21) (at_soil_sample waypoint22) (at_rock_sample waypoint22) (at_soil_sample waypoint23) (at_soil_sample waypoint24) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover0_rover0store_waypoint22
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_soil_sample waypoint22) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint22)))
)

(:action sample_soil_rover0_rover0store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_soil_sample waypoint11) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint11)))
)

(:action drop_rover0_rover0store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover0store))
:effect 
(and (not (full rover0store)) (empty rover0store))
)

(:action sample_soil_rover0_rover0store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_soil_sample waypoint8) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint8)))
)

(:action sample_soil_rover0_rover0store_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3 ) (at_soil_sample waypoint17) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint17)))
)

(:action sample_soil_rover0_rover0store_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_soil_sample waypoint13) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint13)))
)

(:action sample_soil_rover0_rover0store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_soil_sample waypoint15) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint15)))
)

(:action sample_soil_rover0_rover0store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_soil_sample waypoint24) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint24)))
)

(:action sample_soil_rover0_rover0store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_soil_sample waypoint18) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint18)))
)

(:action communicate_soil_data_rover0_general_waypoint22_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL9 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover0_general_waypoint11_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL11 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover0_general_waypoint22_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL9 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover0_general_waypoint11_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL11 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover0_general_waypoint22_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL9 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover0_general_waypoint11_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL11 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover0_general_waypoint22_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL9 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover0_general_waypoint11_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL11 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action sample_soil_rover0_rover0store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_soil_sample waypoint9) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint9)))
)

(:action sample_soil_rover0_rover0store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_soil_sample waypoint7) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint7)))
)

(:action sample_soil_rover0_rover0store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL15 ) (at_soil_sample waypoint20) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint20)))
)

(:action sample_soil_rover0_rover0store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL16 ) (at_soil_sample waypoint1) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint1)))
)

(:action sample_soil_rover0_rover0store_waypoint23
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_soil_sample waypoint23) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint23)))
)

(:action sample_soil_rover0_rover0store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_soil_sample waypoint0) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint0)))
)

(:action communicate_soil_data_rover0_general_waypoint22_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL9 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover0_general_waypoint11_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL11 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL19 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint17_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL20 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover0_general_waypoint13_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL21 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover0_general_waypoint15_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL22 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover0_general_waypoint24_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL23 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL24 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint22_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL9 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover0_general_waypoint11_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL11 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL19 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint17_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL20 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover0_general_waypoint13_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL21 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover0_general_waypoint15_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL22 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover0_general_waypoint24_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL23 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL24 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint22_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL9 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover0_general_waypoint11_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL11 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL19 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint17_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL20 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover0_general_waypoint13_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL21 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover0_general_waypoint15_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL22 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover0_general_waypoint24_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL23 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL24 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL19 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint17_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL20 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover0_general_waypoint13_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL21 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover0_general_waypoint15_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL22 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover0_general_waypoint24_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL23 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL24 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL19 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint17_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL20 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover0_general_waypoint13_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL21 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover0_general_waypoint15_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL22 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover0_general_waypoint24_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL23 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL24 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint22_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL9 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover0_general_waypoint11_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL11 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL19 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint17_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL20 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover0_general_waypoint13_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL21 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover0_general_waypoint15_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL22 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover0_general_waypoint24_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL23 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL24 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL19 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint17_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL20 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover0_general_waypoint13_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL21 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover0_general_waypoint15_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL22 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover0_general_waypoint24_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL23 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL24 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL19 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint17_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL20 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover0_general_waypoint13_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL21 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover0_general_waypoint15_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL22 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover0_general_waypoint24_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL23 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL24 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL28 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL29 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover0_general_waypoint20_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL30 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover0_general_waypoint1_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL31 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover0_general_waypoint23_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL32 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL33 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL28 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL29 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover0_general_waypoint20_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL30 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover0_general_waypoint1_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL31 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover0_general_waypoint23_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL32 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL33 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL28 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL29 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover0_general_waypoint20_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL30 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover0_general_waypoint1_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL31 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover0_general_waypoint23_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL32 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL33 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL28 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL29 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover0_general_waypoint20_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL30 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover0_general_waypoint1_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL31 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover0_general_waypoint23_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL32 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL33 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL28 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL29 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover0_general_waypoint20_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL30 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover0_general_waypoint1_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL31 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover0_general_waypoint23_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL32 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL33 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL28 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL29 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover0_general_waypoint20_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL30 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover0_general_waypoint1_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL31 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover0_general_waypoint23_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL32 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL33 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL28 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL29 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover0_general_waypoint20_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL30 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover0_general_waypoint1_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL31 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover0_general_waypoint23_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL32 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL33 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL28 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL29 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover0_general_waypoint20_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL30 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover0_general_waypoint1_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL31 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover0_general_waypoint23_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL32 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL33 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL34 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL35 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL36 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL37 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL38 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL39 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL40 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL41 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL42 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL43 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL44 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL45 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL46 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL47 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL48 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint1) (P_ARTIFICIAL49 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL34 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL35 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL36 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL37 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL38 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL39 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL40 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL41 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL42 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL43 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL44 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL45 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL46 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL47 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL48 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL25 ) (at_lander general waypoint1) (P_ARTIFICIAL49 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL34 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL35 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL36 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL37 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL38 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL39 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL40 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL41 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL42 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL43 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL44 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL45 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL46 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL47 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL48 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL26 ) (at_lander general waypoint1) (P_ARTIFICIAL49 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL34 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL35 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL36 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL37 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL38 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL39 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL40 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL41 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL42 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL43 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL44 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL45 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL46 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL47 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL48 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint1) (P_ARTIFICIAL49 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL34 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL35 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL36 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL37 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL38 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL39 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL40 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL41 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL42 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL43 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL44 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL45 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL46 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL47 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL48 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint1) (P_ARTIFICIAL49 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL34 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL35 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL36 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL37 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL38 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL39 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL40 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL41 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL42 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL43 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL44 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL45 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL46 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL47 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL48 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_lander general waypoint1) (P_ARTIFICIAL49 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL34 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL35 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL36 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL37 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL38 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL39 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL40 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL41 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL42 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL43 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL44 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL45 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL46 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL47 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL48 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint1) (P_ARTIFICIAL49 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL34 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL35 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL36 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL37 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL38 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL39 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL40 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL41 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL42 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL43 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL44 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL45 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL46 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL47 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL48 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint1) (P_ARTIFICIAL49 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL10 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action dummy-init-action-rotemagent1
:precondition 
(and (can-use-init-action rotemagent1))
:effect 
(and (not (can-use-init-action rotemagent1)) (used-init-action rotemagent1) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint9) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_soil_sample waypoint11) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_rock_sample waypoint14) (at_soil_sample waypoint15) (at_rock_sample waypoint16) (at_soil_sample waypoint17) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint20) (at_rock_sample waypoint21) (at_soil_sample waypoint22) (at_rock_sample waypoint22) (at_soil_sample waypoint23) (at_soil_sample waypoint24) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (regular-actions-stage rotemplaceholder))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1001 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1003 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1004 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1005 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1006 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1007 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1008 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1009 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1010 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1011 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1012 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1013 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1014 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1015 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1016 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_lander general waypoint1) (P_ARTIFICIAL1017 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint1) (P_ARTIFICIAL1001 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint1) (P_ARTIFICIAL1003 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint1) (P_ARTIFICIAL1004 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint1) (P_ARTIFICIAL1005 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint1) (P_ARTIFICIAL1006 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint1) (P_ARTIFICIAL1007 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint1) (P_ARTIFICIAL1008 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint1) (P_ARTIFICIAL1009 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint1) (P_ARTIFICIAL1010 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint1) (P_ARTIFICIAL1011 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint1) (P_ARTIFICIAL1012 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint1) (P_ARTIFICIAL1013 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint1) (P_ARTIFICIAL1014 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint1) (P_ARTIFICIAL1015 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint1) (P_ARTIFICIAL1016 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_lander general waypoint1) (P_ARTIFICIAL1017 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint1) (P_ARTIFICIAL1001 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint1) (P_ARTIFICIAL1003 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint1) (P_ARTIFICIAL1004 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint1) (P_ARTIFICIAL1005 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint1) (P_ARTIFICIAL1006 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint1) (P_ARTIFICIAL1007 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint1) (P_ARTIFICIAL1008 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint1) (P_ARTIFICIAL1009 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint1) (P_ARTIFICIAL1010 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint1) (P_ARTIFICIAL1011 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint1) (P_ARTIFICIAL1012 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint1) (P_ARTIFICIAL1013 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint1) (P_ARTIFICIAL1014 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint1) (P_ARTIFICIAL1015 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint1) (P_ARTIFICIAL1016 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint1) (P_ARTIFICIAL1017 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint1) (P_ARTIFICIAL1001 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint1) (P_ARTIFICIAL1003 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint1) (P_ARTIFICIAL1004 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint1) (P_ARTIFICIAL1005 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint1) (P_ARTIFICIAL1006 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint1) (P_ARTIFICIAL1007 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint1) (P_ARTIFICIAL1008 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint1) (P_ARTIFICIAL1009 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint1) (P_ARTIFICIAL1010 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint1) (P_ARTIFICIAL1011 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint1) (P_ARTIFICIAL1012 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint1) (P_ARTIFICIAL1013 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint1) (P_ARTIFICIAL1014 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint1) (P_ARTIFICIAL1015 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint1) (P_ARTIFICIAL1016 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_lander general waypoint1) (P_ARTIFICIAL1017 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint1) (P_ARTIFICIAL1001 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint1) (P_ARTIFICIAL1003 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint1) (P_ARTIFICIAL1004 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint1) (P_ARTIFICIAL1005 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint1) (P_ARTIFICIAL1006 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint1) (P_ARTIFICIAL1007 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint1) (P_ARTIFICIAL1008 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint1) (P_ARTIFICIAL1009 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint1) (P_ARTIFICIAL1010 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint1) (P_ARTIFICIAL1011 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint1) (P_ARTIFICIAL1012 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint1) (P_ARTIFICIAL1013 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint1) (P_ARTIFICIAL1014 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint1) (P_ARTIFICIAL1015 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint1) (P_ARTIFICIAL1016 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint1) (P_ARTIFICIAL1017 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint1) (P_ARTIFICIAL1001 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint1) (P_ARTIFICIAL1003 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint1) (P_ARTIFICIAL1004 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint1) (P_ARTIFICIAL1005 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint1) (P_ARTIFICIAL1006 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint1) (P_ARTIFICIAL1007 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint1) (P_ARTIFICIAL1008 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint1) (P_ARTIFICIAL1009 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint1) (P_ARTIFICIAL1010 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint1) (P_ARTIFICIAL1011 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint1) (P_ARTIFICIAL1012 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint1) (P_ARTIFICIAL1013 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint1) (P_ARTIFICIAL1014 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint1) (P_ARTIFICIAL1015 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint1) (P_ARTIFICIAL1016 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint1) (P_ARTIFICIAL1017 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint1) (P_ARTIFICIAL1001 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint1) (P_ARTIFICIAL1003 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint1) (P_ARTIFICIAL1004 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint1) (P_ARTIFICIAL1005 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint1) (P_ARTIFICIAL1006 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint1) (P_ARTIFICIAL1007 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint1) (P_ARTIFICIAL1008 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint1) (P_ARTIFICIAL1009 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint1) (P_ARTIFICIAL1010 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint1) (P_ARTIFICIAL1011 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint1) (P_ARTIFICIAL1012 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint1) (P_ARTIFICIAL1013 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint1) (P_ARTIFICIAL1014 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint1) (P_ARTIFICIAL1015 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint1) (P_ARTIFICIAL1016 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint1) (P_ARTIFICIAL1017 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint1) (P_ARTIFICIAL1001 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint1) (P_ARTIFICIAL1003 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint1) (P_ARTIFICIAL1004 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint1) (P_ARTIFICIAL1005 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint1) (P_ARTIFICIAL1006 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint1) (P_ARTIFICIAL1007 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint1) (P_ARTIFICIAL1008 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint1) (P_ARTIFICIAL1009 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint1) (P_ARTIFICIAL1010 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint1) (P_ARTIFICIAL1011 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint1) (P_ARTIFICIAL1012 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint1) (P_ARTIFICIAL1013 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint1) (P_ARTIFICIAL1014 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint1) (P_ARTIFICIAL1015 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint1) (P_ARTIFICIAL1016 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint1) (P_ARTIFICIAL1017 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL1002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action dummy-init-action-rotemagent2
:precondition 
(and (can-use-init-action rotemagent2))
:effect 
(and (not (can-use-init-action rotemagent2)) (used-init-action rotemagent2) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint9) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_soil_sample waypoint11) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_rock_sample waypoint14) (at_soil_sample waypoint15) (at_rock_sample waypoint16) (at_soil_sample waypoint17) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint20) (at_rock_sample waypoint21) (at_soil_sample waypoint22) (at_rock_sample waypoint22) (at_soil_sample waypoint23) (at_soil_sample waypoint24) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover2_rover2store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_rock_sample waypoint18) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint18)))
)

(:action sample_rock_rover2_rover2store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_rock_sample waypoint14) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint14)))
)

(:action sample_rock_rover2_rover2store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_rock_sample waypoint21) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint21)))
)

(:action sample_rock_rover2_rover2store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_rock_sample waypoint9) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint9)))
)

(:action sample_rock_rover2_rover2store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_rock_sample waypoint16) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint16)))
)

(:action drop_rover2_rover2store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover2store))
:effect 
(and (not (full rover2store)) (empty rover2store))
)

(:action communicate_rock_data_rover2_general_waypoint18_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2006 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover2_general_waypoint18_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2006 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover2_general_waypoint18_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2006 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover2_general_waypoint18_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2006 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover2_general_waypoint18_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2006 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover2_general_waypoint18_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2006 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover2_general_waypoint18_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2006 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover2_general_waypoint18_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2006 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2013 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2014 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2015 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2016 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2017 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2018 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2019 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2020 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2021 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2022 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2023 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2024 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2025 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2026 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2027 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2028 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2013 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2014 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2015 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2016 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2017 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2018 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2019 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2020 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2021 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2022 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2023 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2024 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2025 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2026 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2027 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2028 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2013 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2014 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2015 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2016 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2017 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2018 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2019 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2020 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2021 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2022 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2023 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2024 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2025 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2026 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2027 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2028 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2013 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2014 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2015 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2016 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2017 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2018 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2019 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2020 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2021 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2022 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2023 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2024 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2025 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2026 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2027 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2028 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2013 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2014 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2015 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2016 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2017 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2018 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2019 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2020 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2021 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2022 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2023 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2024 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2025 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2026 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2027 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2028 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2013 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2014 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2015 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2016 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2017 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2018 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2019 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2020 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2021 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2022 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2023 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2024 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2025 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2026 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2027 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2028 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2013 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2014 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2015 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2016 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2017 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2018 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2019 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2020 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2021 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2022 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2023 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2024 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2025 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2026 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2027 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2028 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2013 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2014 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2015 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2016 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2017 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2018 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2019 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2020 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2021 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2022 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2023 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2024 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2025 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2026 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2027 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2028 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action sample_rock_rover2_rover2store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2029 ) (at_rock_sample waypoint12) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint12)))
)

(:action sample_rock_rover2_rover2store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2030 ) (at_rock_sample waypoint10) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint10)))
)

(:action sample_rock_rover2_rover2store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2031 ) (at_rock_sample waypoint7) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover2_rover2store_waypoint22
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2032 ) (at_rock_sample waypoint22) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint22)))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2033 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover2_general_waypoint21_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2034 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2035 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2036 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2033 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover2_general_waypoint21_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2034 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2035 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2036 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2033 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover2_general_waypoint21_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2034 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2035 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2036 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2033 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover2_general_waypoint21_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2034 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2035 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2036 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2033 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover2_general_waypoint21_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2034 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2035 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2036 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2033 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover2_general_waypoint21_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2034 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2035 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2036 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2033 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover2_general_waypoint21_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2034 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2035 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2036 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2033 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover2_general_waypoint21_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2034 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2035 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2036 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint12_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2037 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover2_general_waypoint10_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2038 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2039 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint22_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint1) (P_ARTIFICIAL2040 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover2_general_waypoint12_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2037 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover2_general_waypoint10_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2038 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2039 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint22_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_lander general waypoint1) (P_ARTIFICIAL2040 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover2_general_waypoint12_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2037 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover2_general_waypoint10_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2038 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2039 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint22_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_lander general waypoint1) (P_ARTIFICIAL2040 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover2_general_waypoint12_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2037 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover2_general_waypoint10_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2038 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2039 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint22_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_lander general waypoint1) (P_ARTIFICIAL2040 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover2_general_waypoint12_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2037 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover2_general_waypoint10_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2038 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2039 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint22_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_lander general waypoint1) (P_ARTIFICIAL2040 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover2_general_waypoint12_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2037 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover2_general_waypoint10_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2038 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2039 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint22_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint1) (P_ARTIFICIAL2040 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover2_general_waypoint12_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2037 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover2_general_waypoint10_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2038 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2039 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint22_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_lander general waypoint1) (P_ARTIFICIAL2040 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover2_general_waypoint12_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2037 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover2_general_waypoint10_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2038 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2039 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint22_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint1) (P_ARTIFICIAL2040 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL2007 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action dummy-init-action-rotemagent3
:precondition 
(and (can-use-init-action rotemagent3))
:effect 
(and (not (can-use-init-action rotemagent3)) (used-init-action rotemagent3) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint9) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_soil_sample waypoint11) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_rock_sample waypoint14) (at_soil_sample waypoint15) (at_rock_sample waypoint16) (at_soil_sample waypoint17) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint20) (at_rock_sample waypoint21) (at_soil_sample waypoint22) (at_rock_sample waypoint22) (at_soil_sample waypoint23) (at_soil_sample waypoint24) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover3_rover3store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_soil_sample waypoint1) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint1)))
)

(:action sample_soil_rover3_rover3store_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_soil_sample waypoint13) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint13)))
)

(:action sample_soil_rover3_rover3store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_soil_sample waypoint18) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint18)))
)

(:action sample_soil_rover3_rover3store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_soil_sample waypoint20) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint20)))
)

(:action sample_rock_rover3_rover3store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_rock_sample waypoint12) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint12)))
)

(:action sample_rock_rover3_rover3store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_rock_sample waypoint18) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint18)))
)

(:action sample_soil_rover3_rover3store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_soil_sample waypoint15) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint15)))
)

(:action sample_soil_rover3_rover3store_waypoint23
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_soil_sample waypoint23) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint23)))
)

(:action sample_soil_rover3_rover3store_waypoint22
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_soil_sample waypoint22) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint22)))
)

(:action sample_soil_rover3_rover3store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3008 ) (at_soil_sample waypoint24) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint24)))
)

(:action sample_soil_rover3_rover3store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_soil_sample waypoint0) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint0)))
)

(:action sample_soil_rover3_rover3store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_soil_sample waypoint9) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint9)))
)

(:action sample_soil_rover3_rover3store_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_soil_sample waypoint17) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint17)))
)

(:action sample_rock_rover3_rover3store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_rock_sample waypoint14) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint14)))
)

(:action sample_rock_rover3_rover3store_waypoint22
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_rock_sample waypoint22) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint22)))
)

(:action sample_rock_rover3_rover3store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3013 ) (at_rock_sample waypoint21) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint21)))
)

(:action sample_rock_rover3_rover3store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_rock_sample waypoint9) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint9)))
)

(:action sample_rock_rover3_rover3store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_rock_sample waypoint16) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint16)))
)

(:action drop_rover3_rover3store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover3store))
:effect 
(and (not (full rover3store)) (empty rover3store))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3015 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint13_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3017 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3018 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint20_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3019 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3015 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint13_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3017 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3018 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint20_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3019 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3015 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint13_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3017 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3018 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint20_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3019 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3015 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint13_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3017 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3018 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint20_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3019 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3015 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint13_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3017 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3018 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint20_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3019 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3015 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint13_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3017 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3018 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint20_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3019 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3015 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint13_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3017 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3018 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint20_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3019 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3015 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint13_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3017 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3018 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint20_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3019 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3024 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint18_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3025 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3024 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint18_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3025 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3024 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint18_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3025 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3024 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint18_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3025 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3024 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint18_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3025 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3024 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint18_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3025 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3024 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint18_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3025 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3024 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint18_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3025 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action sample_soil_rover3_rover3store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3026 ) (at_soil_sample waypoint7) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint7)))
)

(:action sample_soil_rover3_rover3store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3027 ) (at_soil_sample waypoint8) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint8)))
)

(:action sample_soil_rover3_rover3store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3028 ) (at_soil_sample waypoint11) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint11)))
)

(:action sample_rock_rover3_rover3store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3026 ) (at_rock_sample waypoint7) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover3_rover3store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_rock_sample waypoint10) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint10)))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3030 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3031 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint22_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3032 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3033 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3034 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint9_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3035 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3036 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3030 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3031 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint22_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3032 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3033 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3034 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint9_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3035 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3036 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3030 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3031 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint22_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3032 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3033 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3034 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint9_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3035 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3036 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3030 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3031 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint22_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3032 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3033 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3034 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint9_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3035 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3036 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3030 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3031 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint22_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3032 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3033 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3034 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint9_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3035 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3036 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3030 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3031 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint22_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3032 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3033 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3034 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint9_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3035 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3036 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3030 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3031 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint22_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3032 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3033 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3034 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint9_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3035 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3036 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3030 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3031 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint22_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3032 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3033 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3034 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint9_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3035 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3036 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_rock_data_rover3_general_waypoint14_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3037 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover3_general_waypoint22_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3038 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover3_general_waypoint21_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3039 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3040 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint16_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3041 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover3_general_waypoint14_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3037 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover3_general_waypoint22_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3038 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover3_general_waypoint21_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3039 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3040 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint16_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3041 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover3_general_waypoint14_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3037 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover3_general_waypoint22_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3038 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover3_general_waypoint21_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3039 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3040 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint16_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3041 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover3_general_waypoint14_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3037 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover3_general_waypoint22_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3038 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover3_general_waypoint21_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3039 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3040 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint16_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3041 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover3_general_waypoint14_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3037 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover3_general_waypoint22_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3038 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover3_general_waypoint21_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3039 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3040 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint16_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3041 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover3_general_waypoint14_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3037 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover3_general_waypoint22_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3038 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover3_general_waypoint21_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3039 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3040 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint16_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3041 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover3_general_waypoint14_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3037 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover3_general_waypoint22_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3038 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover3_general_waypoint21_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3039 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3040 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint16_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3041 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover3_general_waypoint14_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3037 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover3_general_waypoint22_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3038 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover3_general_waypoint21_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3039 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3040 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint16_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3041 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3042 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3043 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3044 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3042 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3043 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3044 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3042 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3043 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3044 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3042 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3043 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3044 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3042 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3043 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3044 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3042 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3043 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3044 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3042 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3043 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3044 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3042 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3043 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint11_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3044 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3045 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint10_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_lander general waypoint1) (P_ARTIFICIAL3046 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3045 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint10_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint1) (P_ARTIFICIAL3046 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3045 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint10_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_lander general waypoint1) (P_ARTIFICIAL3046 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3045 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint10_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint1) (P_ARTIFICIAL3046 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3045 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint10_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint1) (P_ARTIFICIAL3046 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3045 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint10_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint1) (P_ARTIFICIAL3046 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3045 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint10_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_lander general waypoint1) (P_ARTIFICIAL3046 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3045 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint10_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_lander general waypoint1) (P_ARTIFICIAL3046 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL3016 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action dummy-init-action-rotemagent4
:precondition 
(and (can-use-init-action rotemagent4))
:effect 
(and (not (can-use-init-action rotemagent4)) (used-init-action rotemagent4) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint9) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_soil_sample waypoint11) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_rock_sample waypoint14) (at_soil_sample waypoint15) (at_rock_sample waypoint16) (at_soil_sample waypoint17) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint20) (at_rock_sample waypoint21) (at_soil_sample waypoint22) (at_rock_sample waypoint22) (at_soil_sample waypoint23) (at_soil_sample waypoint24) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover4_rover4store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_rock_sample waypoint16) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint16)))
)

(:action sample_rock_rover4_rover4store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4001 ) (at_rock_sample waypoint7) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover4_rover4store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_rock_sample waypoint10) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint10)))
)

(:action sample_rock_rover4_rover4store_waypoint22
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_rock_sample waypoint22) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint22)))
)

(:action drop_rover4_rover4store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover4store))
:effect 
(and (not (full rover4store)) (empty rover4store))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4005 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4005 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4005 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4005 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action sample_rock_rover4_rover4store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_rock_sample waypoint9) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint9)))
)

(:action sample_rock_rover4_rover4store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_rock_sample waypoint14) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint14)))
)

(:action sample_rock_rover4_rover4store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_rock_sample waypoint21) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint21)))
)

(:action sample_rock_rover4_rover4store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_rock_sample waypoint18) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint18)))
)

(:action sample_rock_rover4_rover4store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_rock_sample waypoint12) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint12)))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4015 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint10_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4016 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover4_general_waypoint22_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4017 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4005 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4015 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint10_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4016 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover4_general_waypoint22_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4017 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4015 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint10_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4016 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover4_general_waypoint22_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4017 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4015 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint10_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4016 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover4_general_waypoint22_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4017 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4005 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4015 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint10_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4016 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover4_general_waypoint22_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4017 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4015 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint10_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4016 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover4_general_waypoint22_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4017 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4005 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4015 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint10_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4016 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover4_general_waypoint22_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4017 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4019 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4020 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4021 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4022 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4023 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4024 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4025 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4026 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4027 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4028 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4029 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4030 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4031 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4032 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4033 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4034 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4035 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4036 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4037 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4038 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4039 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4040 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4041 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4042 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4019 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4020 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4021 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4022 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4023 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4024 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4025 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4026 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4027 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4028 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4029 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4030 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4031 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4032 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4033 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4034 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4035 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4036 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4037 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4038 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4039 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4040 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4041 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4042 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4019 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4020 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4021 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4022 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4023 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4024 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4025 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4026 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4027 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4028 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4029 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4030 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4031 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4032 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4033 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4034 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4035 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4036 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4037 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4038 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4039 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4040 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4041 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4042 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4019 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4020 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4021 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4022 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4023 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4024 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4025 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4026 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4027 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4028 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4029 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4030 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4031 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4032 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4033 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4034 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4035 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4036 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4037 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4038 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4039 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4040 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4041 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4042 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4019 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4020 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4021 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4022 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4023 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4024 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4025 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4026 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4027 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4028 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4029 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4030 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4031 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4032 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4033 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4034 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4035 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4036 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4037 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4038 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4039 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4040 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4041 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4042 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4019 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4020 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4021 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4022 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4023 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4024 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4025 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4026 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4027 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4028 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4029 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4030 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4031 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4032 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4033 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4034 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4035 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4036 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4037 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4038 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4039 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4040 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4041 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4042 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4019 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4020 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4021 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4022 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4023 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4024 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4025 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4026 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4027 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4028 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4029 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4030 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4031 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4032 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4033 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4034 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4035 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4036 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4037 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4038 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4039 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4040 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4041 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4042 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4005 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4015 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint10_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4016 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover4_general_waypoint22_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4017 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint22))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4044 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4045 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4046 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint18_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4047 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4048 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4044 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4045 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4046 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint18_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4047 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_lander general waypoint1) (P_ARTIFICIAL4048 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4044 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4045 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4046 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint18_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4047 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint1) (P_ARTIFICIAL4048 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4044 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4045 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4046 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint18_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4047 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint1) (P_ARTIFICIAL4048 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4044 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4045 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4046 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint18_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4047 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_lander general waypoint1) (P_ARTIFICIAL4048 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4044 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4045 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4046 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint18_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4047 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint1) (P_ARTIFICIAL4048 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4044 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4045 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4046 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint18_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4047 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint1) (P_ARTIFICIAL4048 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4044 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4045 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4046 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint18_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4047 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_lander general waypoint1) (P_ARTIFICIAL4048 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4019 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4020 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4021 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4022 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4023 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4024 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4025 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4026 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4027 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4028 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4029 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4030 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4031 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4032 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4033 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4034 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4035 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4036 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4037 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4038 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4039 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4040 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4041 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4043 ) (at_lander general waypoint1) (P_ARTIFICIAL4042 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL4006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action dummy-init-action-rotemagent5
:precondition 
(and (can-use-init-action rotemagent5))
:effect 
(and (not (can-use-init-action rotemagent5)) (used-init-action rotemagent5) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint9) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_soil_sample waypoint11) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_rock_sample waypoint14) (at_soil_sample waypoint15) (at_rock_sample waypoint16) (at_soil_sample waypoint17) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint20) (at_rock_sample waypoint21) (at_soil_sample waypoint22) (at_rock_sample waypoint22) (at_soil_sample waypoint23) (at_soil_sample waypoint24) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (regular-actions-stage rotemplaceholder))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_lander general waypoint1) (P_ARTIFICIAL5001 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_lander general waypoint1) (P_ARTIFICIAL5003 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_lander general waypoint1) (P_ARTIFICIAL5004 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_lander general waypoint1) (P_ARTIFICIAL5005 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_lander general waypoint1) (P_ARTIFICIAL5006 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_lander general waypoint1) (P_ARTIFICIAL5007 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_lander general waypoint1) (P_ARTIFICIAL5008 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint1) (P_ARTIFICIAL5001 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint1) (P_ARTIFICIAL5003 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint1) (P_ARTIFICIAL5004 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint1) (P_ARTIFICIAL5005 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint1) (P_ARTIFICIAL5006 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint1) (P_ARTIFICIAL5007 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint1) (P_ARTIFICIAL5008 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint1) (P_ARTIFICIAL5001 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint1) (P_ARTIFICIAL5003 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint1) (P_ARTIFICIAL5004 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint1) (P_ARTIFICIAL5005 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint1) (P_ARTIFICIAL5006 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint1) (P_ARTIFICIAL5007 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint1) (P_ARTIFICIAL5008 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint1) (P_ARTIFICIAL5001 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint1) (P_ARTIFICIAL5003 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint1) (P_ARTIFICIAL5004 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint1) (P_ARTIFICIAL5005 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint1) (P_ARTIFICIAL5006 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint1) (P_ARTIFICIAL5007 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint1) (P_ARTIFICIAL5008 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5012 ) (at_lander general waypoint1) (P_ARTIFICIAL5001 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5012 ) (at_lander general waypoint1) (P_ARTIFICIAL5003 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5012 ) (at_lander general waypoint1) (P_ARTIFICIAL5004 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5012 ) (at_lander general waypoint1) (P_ARTIFICIAL5005 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5012 ) (at_lander general waypoint1) (P_ARTIFICIAL5006 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5012 ) (at_lander general waypoint1) (P_ARTIFICIAL5007 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5012 ) (at_lander general waypoint1) (P_ARTIFICIAL5008 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint1) (P_ARTIFICIAL5001 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint1) (P_ARTIFICIAL5003 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint1) (P_ARTIFICIAL5004 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint1) (P_ARTIFICIAL5005 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint1) (P_ARTIFICIAL5006 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint1) (P_ARTIFICIAL5007 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint1) (P_ARTIFICIAL5008 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_lander general waypoint1) (P_ARTIFICIAL5014 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint1) (P_ARTIFICIAL5014 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint1) (P_ARTIFICIAL5014 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_lander general waypoint1) (P_ARTIFICIAL5014 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint1) (P_ARTIFICIAL5001 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint1) (P_ARTIFICIAL5003 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint1) (P_ARTIFICIAL5004 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint1) (P_ARTIFICIAL5005 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint1) (P_ARTIFICIAL5006 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint1) (P_ARTIFICIAL5007 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint1) (P_ARTIFICIAL5008 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint1) (P_ARTIFICIAL5014 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint1) (P_ARTIFICIAL5001 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint1) (P_ARTIFICIAL5003 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint1) (P_ARTIFICIAL5004 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint1) (P_ARTIFICIAL5005 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint1) (P_ARTIFICIAL5006 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint1) (P_ARTIFICIAL5007 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint1) (P_ARTIFICIAL5008 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint1) (P_ARTIFICIAL5014 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5012 ) (at_lander general waypoint1) (P_ARTIFICIAL5014 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_lander general waypoint1) (P_ARTIFICIAL5014 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL5002 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action dummy-init-action-rotemagent6
:precondition 
(and (can-use-init-action rotemagent6))
:effect 
(and (not (can-use-init-action rotemagent6)) (used-init-action rotemagent6) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint9) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_soil_sample waypoint11) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_rock_sample waypoint14) (at_soil_sample waypoint15) (at_rock_sample waypoint16) (at_soil_sample waypoint17) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint20) (at_rock_sample waypoint21) (at_soil_sample waypoint22) (at_rock_sample waypoint22) (at_soil_sample waypoint23) (at_soil_sample waypoint24) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover6_rover6store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_soil_sample waypoint1) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint1)))
)

(:action sample_soil_rover6_rover6store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6001 ) (at_soil_sample waypoint8) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint8)))
)

(:action sample_soil_rover6_rover6store_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6002 ) (at_soil_sample waypoint13) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint13)))
)

(:action sample_soil_rover6_rover6store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6003 ) (at_soil_sample waypoint20) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint20)))
)

(:action sample_soil_rover6_rover6store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_soil_sample waypoint18) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint18)))
)

(:action sample_soil_rover6_rover6store_waypoint23
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_soil_sample waypoint23) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint23)))
)

(:action sample_soil_rover6_rover6store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_soil_sample waypoint9) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint9)))
)

(:action sample_soil_rover6_rover6store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6007 ) (at_soil_sample waypoint11) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint11)))
)

(:action sample_soil_rover6_rover6store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_soil_sample waypoint15) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint15)))
)

(:action sample_soil_rover6_rover6store_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_soil_sample waypoint17) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint17)))
)

(:action sample_soil_rover6_rover6store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6010 ) (at_soil_sample waypoint7) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint7)))
)

(:action sample_soil_rover6_rover6store_waypoint22
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6011 ) (at_soil_sample waypoint22) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint22)))
)

(:action sample_soil_rover6_rover6store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_soil_sample waypoint24) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint24)))
)

(:action drop_rover6_rover6store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover6store))
:effect 
(and (not (full rover6store)) (empty rover6store))
)

(:action communicate_soil_data_rover6_general_waypoint1_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6013 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover6_general_waypoint8_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6015 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover6_general_waypoint13_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6016 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover6_general_waypoint20_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6017 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover6_general_waypoint1_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6013 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover6_general_waypoint8_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6015 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover6_general_waypoint13_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6016 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover6_general_waypoint20_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6017 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover6_general_waypoint1_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6013 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover6_general_waypoint8_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6015 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover6_general_waypoint13_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6016 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover6_general_waypoint20_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6017 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover6_general_waypoint1_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6013 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover6_general_waypoint8_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6015 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover6_general_waypoint13_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6016 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover6_general_waypoint20_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6017 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover6_general_waypoint1_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6013 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover6_general_waypoint8_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6015 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover6_general_waypoint13_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6016 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover6_general_waypoint20_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6017 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover6_general_waypoint1_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6013 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover6_general_waypoint8_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6015 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover6_general_waypoint13_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6016 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover6_general_waypoint20_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6017 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover6_general_waypoint1_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6013 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover6_general_waypoint8_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6015 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover6_general_waypoint13_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6016 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover6_general_waypoint20_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6017 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover6_general_waypoint1_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6013 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover6_general_waypoint8_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6015 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover6_general_waypoint13_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6016 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover6_general_waypoint20_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6017 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_image_data_rover6_general_objective0_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6023 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover6_general_objective1_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6024 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover6_general_objective2_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6025 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover6_general_objective3_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6026 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover6_general_objective4_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6027 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover6_general_objective5_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6028 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover6_general_objective6_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6029 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover6_general_objective7_colour_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6030 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover6_general_objective0_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6031 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover6_general_objective1_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6032 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover6_general_objective2_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6033 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover6_general_objective3_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6034 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover6_general_objective4_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6035 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover6_general_objective5_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6036 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover6_general_objective6_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6037 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover6_general_objective7_high_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6038 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover6_general_objective0_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6039 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover6_general_objective1_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6040 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover6_general_objective2_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6041 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover6_general_objective3_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6042 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover6_general_objective4_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6043 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover6_general_objective5_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6044 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover6_general_objective6_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6045 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover6_general_objective7_low_res_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6046 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover6_general_objective0_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6023 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover6_general_objective1_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6024 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover6_general_objective2_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6025 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover6_general_objective3_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6026 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover6_general_objective4_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6027 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover6_general_objective5_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6028 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover6_general_objective6_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6029 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover6_general_objective7_colour_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6030 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover6_general_objective0_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6031 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover6_general_objective1_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6032 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover6_general_objective2_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6033 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover6_general_objective3_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6034 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover6_general_objective4_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6035 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover6_general_objective5_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6036 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover6_general_objective6_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6037 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover6_general_objective7_high_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6038 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover6_general_objective0_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6039 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover6_general_objective1_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6040 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover6_general_objective2_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6041 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover6_general_objective3_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6042 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover6_general_objective4_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6043 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover6_general_objective5_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6044 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover6_general_objective6_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6045 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover6_general_objective7_low_res_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6046 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover6_general_objective0_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6023 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover6_general_objective1_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6024 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover6_general_objective2_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6025 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover6_general_objective3_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6026 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover6_general_objective4_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6027 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover6_general_objective5_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6028 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover6_general_objective6_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6029 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover6_general_objective7_colour_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6030 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover6_general_objective0_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6031 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover6_general_objective1_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6032 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover6_general_objective2_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6033 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover6_general_objective3_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6034 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover6_general_objective4_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6035 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover6_general_objective5_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6036 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover6_general_objective6_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6037 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover6_general_objective7_high_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6038 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover6_general_objective0_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6039 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover6_general_objective1_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6040 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover6_general_objective2_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6041 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover6_general_objective3_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6042 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover6_general_objective4_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6043 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover6_general_objective5_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6044 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover6_general_objective6_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6045 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover6_general_objective7_low_res_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6046 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover6_general_objective0_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6023 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover6_general_objective1_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6024 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover6_general_objective2_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6025 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover6_general_objective3_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6026 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover6_general_objective4_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6027 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover6_general_objective5_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6028 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover6_general_objective6_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6029 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover6_general_objective7_colour_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6030 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover6_general_objective0_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6031 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover6_general_objective1_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6032 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover6_general_objective2_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6033 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover6_general_objective3_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6034 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover6_general_objective4_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6035 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover6_general_objective5_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6036 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover6_general_objective6_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6037 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover6_general_objective7_high_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6038 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover6_general_objective0_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6039 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover6_general_objective1_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6040 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover6_general_objective2_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6041 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover6_general_objective3_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6042 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover6_general_objective4_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6043 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover6_general_objective5_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6044 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover6_general_objective6_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6045 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover6_general_objective7_low_res_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6046 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover6_general_objective0_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6023 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover6_general_objective1_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6024 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover6_general_objective2_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6025 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover6_general_objective3_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6026 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover6_general_objective4_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6027 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover6_general_objective5_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6028 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover6_general_objective6_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6029 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover6_general_objective7_colour_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6030 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover6_general_objective0_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6031 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover6_general_objective1_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6032 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover6_general_objective2_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6033 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover6_general_objective3_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6034 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover6_general_objective4_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6035 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover6_general_objective5_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6036 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover6_general_objective6_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6037 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover6_general_objective7_high_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6038 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover6_general_objective0_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6039 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover6_general_objective1_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6040 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover6_general_objective2_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6041 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover6_general_objective3_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6042 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover6_general_objective4_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6043 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover6_general_objective5_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6044 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover6_general_objective6_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6045 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover6_general_objective7_low_res_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6046 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover6_general_objective0_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6023 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover6_general_objective1_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6024 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover6_general_objective2_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6025 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover6_general_objective3_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6026 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover6_general_objective4_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6027 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover6_general_objective5_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6028 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover6_general_objective6_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6029 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover6_general_objective7_colour_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6030 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover6_general_objective0_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6031 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover6_general_objective1_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6032 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover6_general_objective2_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6033 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover6_general_objective3_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6034 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover6_general_objective4_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6035 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover6_general_objective5_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6036 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover6_general_objective6_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6037 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover6_general_objective7_high_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6038 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover6_general_objective0_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6039 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover6_general_objective1_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6040 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover6_general_objective2_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6041 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover6_general_objective3_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6042 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover6_general_objective4_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6043 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover6_general_objective5_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6044 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover6_general_objective6_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6045 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover6_general_objective7_low_res_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6046 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover6_general_objective0_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6023 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover6_general_objective1_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6024 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover6_general_objective2_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6025 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover6_general_objective3_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6026 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover6_general_objective4_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6027 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover6_general_objective5_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6028 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover6_general_objective6_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6029 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover6_general_objective7_colour_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6030 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover6_general_objective0_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6031 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover6_general_objective1_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6032 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover6_general_objective2_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6033 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover6_general_objective3_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6034 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover6_general_objective4_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6035 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover6_general_objective5_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6036 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover6_general_objective6_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6037 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover6_general_objective7_high_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6038 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover6_general_objective0_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6039 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover6_general_objective1_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6040 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover6_general_objective2_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6041 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover6_general_objective3_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6042 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover6_general_objective4_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6043 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover6_general_objective5_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6044 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover6_general_objective6_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6045 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover6_general_objective7_low_res_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6046 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover6_general_objective0_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6023 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover6_general_objective1_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6024 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover6_general_objective2_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6025 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover6_general_objective3_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6026 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover6_general_objective4_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6027 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover6_general_objective5_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6028 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover6_general_objective6_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6029 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover6_general_objective7_colour_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6030 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover6_general_objective0_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6031 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover6_general_objective1_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6032 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover6_general_objective2_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6033 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover6_general_objective3_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6034 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover6_general_objective4_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6035 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover6_general_objective5_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6036 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover6_general_objective6_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6037 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover6_general_objective7_high_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6038 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover6_general_objective0_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6039 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover6_general_objective1_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6040 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover6_general_objective2_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6041 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover6_general_objective3_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6042 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover6_general_objective4_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6043 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover6_general_objective5_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6044 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover6_general_objective6_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6045 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover6_general_objective7_low_res_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6046 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action sample_soil_rover6_rover6store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6047 ) (at_soil_sample waypoint0) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_soil_sample waypoint0)))
)

(:action communicate_soil_data_rover6_general_waypoint18_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6048 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover6_general_waypoint23_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6049 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover6_general_waypoint9_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6050 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover6_general_waypoint11_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6051 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover6_general_waypoint15_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6052 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover6_general_waypoint17_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6053 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover6_general_waypoint7_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6054 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover6_general_waypoint22_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6055 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover6_general_waypoint24_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6056 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover6_general_waypoint18_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6048 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover6_general_waypoint23_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6049 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover6_general_waypoint9_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6050 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover6_general_waypoint11_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6051 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover6_general_waypoint15_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6052 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover6_general_waypoint17_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6053 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover6_general_waypoint7_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6054 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover6_general_waypoint22_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6055 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover6_general_waypoint24_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6056 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover6_general_waypoint18_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6048 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover6_general_waypoint23_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6049 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover6_general_waypoint9_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6050 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover6_general_waypoint11_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6051 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover6_general_waypoint15_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6052 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover6_general_waypoint17_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6053 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover6_general_waypoint7_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6054 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover6_general_waypoint22_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6055 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover6_general_waypoint24_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6056 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover6_general_waypoint18_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6048 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover6_general_waypoint23_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6049 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover6_general_waypoint9_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6050 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover6_general_waypoint11_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6051 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover6_general_waypoint15_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6052 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover6_general_waypoint17_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6053 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover6_general_waypoint7_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6054 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover6_general_waypoint22_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6055 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover6_general_waypoint24_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6056 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover6_general_waypoint18_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6048 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover6_general_waypoint23_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6049 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover6_general_waypoint9_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6050 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover6_general_waypoint11_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6051 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover6_general_waypoint15_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6052 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover6_general_waypoint17_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6053 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover6_general_waypoint7_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6054 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover6_general_waypoint22_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6055 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover6_general_waypoint24_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6056 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover6_general_waypoint18_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6048 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover6_general_waypoint23_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6049 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover6_general_waypoint9_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6050 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover6_general_waypoint11_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6051 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover6_general_waypoint15_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6052 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover6_general_waypoint17_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6053 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover6_general_waypoint7_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6054 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover6_general_waypoint22_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6055 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover6_general_waypoint24_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6056 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover6_general_waypoint18_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6048 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover6_general_waypoint23_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6049 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover6_general_waypoint9_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6050 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover6_general_waypoint11_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6051 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover6_general_waypoint15_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6052 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover6_general_waypoint17_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6053 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover6_general_waypoint7_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6054 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover6_general_waypoint22_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6055 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover6_general_waypoint24_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6056 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover6_general_waypoint18_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6048 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover6_general_waypoint23_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6049 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover6_general_waypoint9_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6050 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover6_general_waypoint11_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6051 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover6_general_waypoint15_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6052 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover6_general_waypoint17_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6053 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover6_general_waypoint7_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6054 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover6_general_waypoint22_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6055 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover6_general_waypoint24_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6056 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover6_general_waypoint0_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_lander general waypoint1) (P_ARTIFICIAL6057 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover6_general_waypoint0_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6018 ) (at_lander general waypoint1) (P_ARTIFICIAL6057 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover6_general_waypoint0_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6019 ) (at_lander general waypoint1) (P_ARTIFICIAL6057 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover6_general_waypoint0_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6020 ) (at_lander general waypoint1) (P_ARTIFICIAL6057 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover6_general_waypoint0_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6021 ) (at_lander general waypoint1) (P_ARTIFICIAL6057 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover6_general_waypoint0_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6022 ) (at_lander general waypoint1) (P_ARTIFICIAL6057 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover6_general_waypoint0_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_lander general waypoint1) (P_ARTIFICIAL6057 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover6_general_waypoint0_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_lander general waypoint1) (P_ARTIFICIAL6057 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL6014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action dummy-init-action-rotemagent7
:precondition 
(and (can-use-init-action rotemagent7))
:effect 
(and (not (can-use-init-action rotemagent7)) (used-init-action rotemagent7) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint9) (at_rock_sample waypoint9) (at_rock_sample waypoint10) (at_soil_sample waypoint11) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_rock_sample waypoint14) (at_soil_sample waypoint15) (at_rock_sample waypoint16) (at_soil_sample waypoint17) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint20) (at_rock_sample waypoint21) (at_soil_sample waypoint22) (at_rock_sample waypoint22) (at_soil_sample waypoint23) (at_soil_sample waypoint24) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover7_rover7store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7000 ) (at_rock_sample waypoint16) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint16)))
)

(:action sample_rock_rover7_rover7store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7001 ) (at_rock_sample waypoint10) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint10)))
)

(:action drop_rover7_rover7store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover7store))
:effect 
(and (not (full rover7store)) (empty rover7store))
)

(:action communicate_rock_data_rover7_general_waypoint16_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint1) (P_ARTIFICIAL7003 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover7_general_waypoint16_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint1) (P_ARTIFICIAL7003 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action sample_rock_rover7_rover7store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7006 ) (at_rock_sample waypoint9) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint9)))
)

(:action sample_rock_rover7_rover7store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7007 ) (at_rock_sample waypoint14) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint14)))
)

(:action sample_rock_rover7_rover7store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_rock_sample waypoint7) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover7_rover7store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7009 ) (at_rock_sample waypoint18) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint18)))
)

(:action communicate_rock_data_rover7_general_waypoint16_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7010 ) (at_lander general waypoint1) (P_ARTIFICIAL7003 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover7_general_waypoint10_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7010 ) (at_lander general waypoint1) (P_ARTIFICIAL7011 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover7_general_waypoint10_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint1) (P_ARTIFICIAL7011 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover7_general_waypoint16_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint1) (P_ARTIFICIAL7003 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover7_general_waypoint10_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint1) (P_ARTIFICIAL7011 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover7_general_waypoint10_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint1) (P_ARTIFICIAL7011 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover7_general_waypoint16_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint1) (P_ARTIFICIAL7003 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover7_general_waypoint10_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint1) (P_ARTIFICIAL7011 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover7_general_waypoint16_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7007 ) (at_lander general waypoint1) (P_ARTIFICIAL7003 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover7_general_waypoint10_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7007 ) (at_lander general waypoint1) (P_ARTIFICIAL7011 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover7_general_waypoint16_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7014 ) (at_lander general waypoint1) (P_ARTIFICIAL7003 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover7_general_waypoint10_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7014 ) (at_lander general waypoint1) (P_ARTIFICIAL7011 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action communicate_rock_data_rover7_general_waypoint16_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7009 ) (at_lander general waypoint1) (P_ARTIFICIAL7003 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover7_general_waypoint10_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7009 ) (at_lander general waypoint1) (P_ARTIFICIAL7011 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint10))
)

(:action sample_rock_rover7_rover7store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_rock_sample waypoint21) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint21)))
)

(:action sample_rock_rover7_rover7store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7016 ) (at_rock_sample waypoint12) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_rock_sample waypoint12)))
)

(:action communicate_rock_data_rover7_general_waypoint9_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7010 ) (at_lander general waypoint1) (P_ARTIFICIAL7017 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover7_general_waypoint14_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7010 ) (at_lander general waypoint1) (P_ARTIFICIAL7018 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover7_general_waypoint7_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7010 ) (at_lander general waypoint1) (P_ARTIFICIAL7019 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover7_general_waypoint18_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7010 ) (at_lander general waypoint1) (P_ARTIFICIAL7020 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover7_general_waypoint9_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint1) (P_ARTIFICIAL7017 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover7_general_waypoint14_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint1) (P_ARTIFICIAL7018 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover7_general_waypoint7_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint1) (P_ARTIFICIAL7019 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover7_general_waypoint18_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint1) (P_ARTIFICIAL7020 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover7_general_waypoint9_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint1) (P_ARTIFICIAL7017 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover7_general_waypoint14_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint1) (P_ARTIFICIAL7018 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover7_general_waypoint7_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint1) (P_ARTIFICIAL7019 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover7_general_waypoint18_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint1) (P_ARTIFICIAL7020 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover7_general_waypoint9_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint1) (P_ARTIFICIAL7017 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover7_general_waypoint14_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint1) (P_ARTIFICIAL7018 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover7_general_waypoint7_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint1) (P_ARTIFICIAL7019 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover7_general_waypoint18_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint1) (P_ARTIFICIAL7020 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover7_general_waypoint9_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint1) (P_ARTIFICIAL7017 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover7_general_waypoint14_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint1) (P_ARTIFICIAL7018 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover7_general_waypoint7_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint1) (P_ARTIFICIAL7019 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover7_general_waypoint18_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint1) (P_ARTIFICIAL7020 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover7_general_waypoint9_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7007 ) (at_lander general waypoint1) (P_ARTIFICIAL7017 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover7_general_waypoint14_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7007 ) (at_lander general waypoint1) (P_ARTIFICIAL7018 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover7_general_waypoint7_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7007 ) (at_lander general waypoint1) (P_ARTIFICIAL7019 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover7_general_waypoint18_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7007 ) (at_lander general waypoint1) (P_ARTIFICIAL7020 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover7_general_waypoint9_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7014 ) (at_lander general waypoint1) (P_ARTIFICIAL7017 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover7_general_waypoint14_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7014 ) (at_lander general waypoint1) (P_ARTIFICIAL7018 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover7_general_waypoint7_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7014 ) (at_lander general waypoint1) (P_ARTIFICIAL7019 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover7_general_waypoint18_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7014 ) (at_lander general waypoint1) (P_ARTIFICIAL7020 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover7_general_waypoint9_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7009 ) (at_lander general waypoint1) (P_ARTIFICIAL7017 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover7_general_waypoint14_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7009 ) (at_lander general waypoint1) (P_ARTIFICIAL7018 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover7_general_waypoint7_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7009 ) (at_lander general waypoint1) (P_ARTIFICIAL7019 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover7_general_waypoint18_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7009 ) (at_lander general waypoint1) (P_ARTIFICIAL7020 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover7_general_waypoint21_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7010 ) (at_lander general waypoint1) (P_ARTIFICIAL7021 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover7_general_waypoint12_waypoint23_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7010 ) (at_lander general waypoint1) (P_ARTIFICIAL7022 ) (visible waypoint23 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover7_general_waypoint21_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint1) (P_ARTIFICIAL7021 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover7_general_waypoint12_waypoint2_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint1) (P_ARTIFICIAL7022 ) (visible waypoint2 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover7_general_waypoint21_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint1) (P_ARTIFICIAL7021 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover7_general_waypoint12_waypoint3_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint1) (P_ARTIFICIAL7022 ) (visible waypoint3 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover7_general_waypoint21_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint1) (P_ARTIFICIAL7021 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover7_general_waypoint12_waypoint4_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7005 ) (at_lander general waypoint1) (P_ARTIFICIAL7022 ) (visible waypoint4 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover7_general_waypoint21_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint1) (P_ARTIFICIAL7021 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover7_general_waypoint12_waypoint5_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_lander general waypoint1) (P_ARTIFICIAL7022 ) (visible waypoint5 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover7_general_waypoint21_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7007 ) (at_lander general waypoint1) (P_ARTIFICIAL7021 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover7_general_waypoint12_waypoint14_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7007 ) (at_lander general waypoint1) (P_ARTIFICIAL7022 ) (visible waypoint14 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover7_general_waypoint21_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7014 ) (at_lander general waypoint1) (P_ARTIFICIAL7021 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover7_general_waypoint12_waypoint15_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7014 ) (at_lander general waypoint1) (P_ARTIFICIAL7022 ) (visible waypoint15 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover7_general_waypoint21_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7009 ) (at_lander general waypoint1) (P_ARTIFICIAL7021 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover7_general_waypoint12_waypoint18_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7009 ) (at_lander general waypoint1) (P_ARTIFICIAL7022 ) (visible waypoint18 waypoint1) (P_ARTIFICIAL7004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

)
