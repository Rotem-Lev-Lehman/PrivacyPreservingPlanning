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
 rover7store - store
 rover3store - store
 rover4store - store
 high_res - mode
 waypoint27 - waypoint
 camera8 - camera
 low_res - mode
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
 waypoint36 - waypoint
 waypoint37 - waypoint
 waypoint34 - waypoint
 waypoint35 - waypoint
 waypoint32 - waypoint
 waypoint33 - waypoint
 waypoint30 - waypoint
 waypoint31 - waypoint
 waypoint12 - waypoint
 waypoint38 - waypoint
 waypoint39 - waypoint
 camera1 - camera
 camera3 - camera
 camera2 - camera
 rover0store - store
 general - lander
 camera6 - camera
 camera7 - camera
 rover6store - store
 waypoint25 - waypoint
 waypoint24 - waypoint
 rover2store - store
 waypoint26 - waypoint
 waypoint21 - waypoint
 waypoint20 - waypoint
 waypoint23 - waypoint
 waypoint22 - waypoint
 waypoint29 - waypoint
 waypoint28 - waypoint
 camera4 - camera
 waypoint8 - waypoint
 waypoint9 - waypoint
 waypoint6 - waypoint
 waypoint7 - waypoint
 waypoint4 - waypoint
 waypoint5 - waypoint
 waypoint2 - waypoint
 waypoint3 - waypoint
 waypoint0 - waypoint
 waypoint1 - waypoint
 waypoint18 - waypoint
 waypoint19 - waypoint
 camera5 - camera
 waypoint10 - waypoint
 waypoint11 - waypoint
 colour - mode
 waypoint13 - waypoint
 waypoint14 - waypoint
 waypoint15 - waypoint
 waypoint16 - waypoint
 waypoint17 - waypoint
 rover1store - store
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
(P_ARTIFICIAL1033)
(P_ARTIFICIAL1034)
(P_ARTIFICIAL1035)
(P_ARTIFICIAL1036)
(P_ARTIFICIAL1037)
(P_ARTIFICIAL1038)
(P_ARTIFICIAL1039)
(P_ARTIFICIAL1040)
(P_ARTIFICIAL1041)
(P_ARTIFICIAL1042)
(P_ARTIFICIAL1043)
(P_ARTIFICIAL1044)
(P_ARTIFICIAL1045)
(P_ARTIFICIAL1046)
(P_ARTIFICIAL1047)
(P_ARTIFICIAL1048)
(P_ARTIFICIAL1049)
(P_ARTIFICIAL1050)
(P_ARTIFICIAL1051)
(P_ARTIFICIAL1052)
(P_ARTIFICIAL1053)
(P_ARTIFICIAL1054)
(P_ARTIFICIAL1055)
(P_ARTIFICIAL1056)
(P_ARTIFICIAL1057)
(P_ARTIFICIAL1058)
(P_ARTIFICIAL1059)
(P_ARTIFICIAL1060)
(P_ARTIFICIAL1061)
(P_ARTIFICIAL1062)
(P_ARTIFICIAL1063)
(P_ARTIFICIAL1064)
(P_ARTIFICIAL1065)
(P_ARTIFICIAL1066)
(P_ARTIFICIAL1067)
(P_ARTIFICIAL1068)
(P_ARTIFICIAL1069)
(P_ARTIFICIAL1070)
(P_ARTIFICIAL1071)
(P_ARTIFICIAL1072)
(P_ARTIFICIAL1073)
(P_ARTIFICIAL1074)
(P_ARTIFICIAL1075)
(P_ARTIFICIAL1076)
(P_ARTIFICIAL1077)
(P_ARTIFICIAL1078)
(P_ARTIFICIAL1079)
(P_ARTIFICIAL1080)
(P_ARTIFICIAL1081)
(P_ARTIFICIAL1082)
(P_ARTIFICIAL1083)
(P_ARTIFICIAL1084)
(P_ARTIFICIAL1085)
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
(P_ARTIFICIAL3050)
(P_ARTIFICIAL3051)
(P_ARTIFICIAL3052)
(P_ARTIFICIAL3053)
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
(P_ARTIFICIAL7023)
(P_ARTIFICIAL7024)
(P_ARTIFICIAL7025)
(P_ARTIFICIAL7026)
(P_ARTIFICIAL7027)
(P_ARTIFICIAL7028)
(P_ARTIFICIAL7029)
(P_ARTIFICIAL7030)
(P_ARTIFICIAL7031)
(P_ARTIFICIAL7032)
(P_ARTIFICIAL7033)
(P_ARTIFICIAL7034)
(P_ARTIFICIAL7035)
(P_ARTIFICIAL7036)
(P_ARTIFICIAL7037)
(P_ARTIFICIAL7038)
(P_ARTIFICIAL7039)
(P_ARTIFICIAL7040)
(P_ARTIFICIAL7041)
(P_ARTIFICIAL7042)
(P_ARTIFICIAL7043)
(P_ARTIFICIAL7044)
(P_ARTIFICIAL7045)
(P_ARTIFICIAL7046)
(P_ARTIFICIAL7047)
(P_ARTIFICIAL7048)
(P_ARTIFICIAL7049)
(P_ARTIFICIAL7050)
(P_ARTIFICIAL7051)
(P_ARTIFICIAL7052)
(P_ARTIFICIAL7053)
(P_ARTIFICIAL7054)
(P_ARTIFICIAL7055)
(P_ARTIFICIAL7056)
(P_ARTIFICIAL7057)
(P_ARTIFICIAL7058)
(P_ARTIFICIAL7059)
(P_ARTIFICIAL7060)
(P_ARTIFICIAL7061)
(P_ARTIFICIAL7062)
(P_ARTIFICIAL7063)
(P_ARTIFICIAL7064)
(P_ARTIFICIAL7065)
(P_ARTIFICIAL7066)
(P_ARTIFICIAL7067)
(P_ARTIFICIAL7068)
(P_ARTIFICIAL7069)
(P_ARTIFICIAL7070)
(P_ARTIFICIAL7071)
)

(:action dummy-init-action-rotemagent0
:precondition 
(and (can-use-init-action rotemagent0))
:effect 
(and (not (can-use-init-action rotemagent0)) (used-init-action rotemagent0) (at_rock_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint10) (at_soil_sample waypoint11) (at_rock_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_soil_sample waypoint14) (at_rock_sample waypoint15) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint20) (at_rock_sample waypoint20) (at_soil_sample waypoint21) (at_rock_sample waypoint21) (at_soil_sample waypoint22) (at_soil_sample waypoint24) (at_soil_sample waypoint26) (at_soil_sample waypoint27) (at_soil_sample waypoint30) (at_rock_sample waypoint31) (at_rock_sample waypoint32) (at_rock_sample waypoint33) (at_soil_sample waypoint34) (at_rock_sample waypoint34) (at_soil_sample waypoint36) (at_rock_sample waypoint36) (at_rock_sample waypoint37) (at_rock_sample waypoint38) (at_soil_sample waypoint39) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover0_rover0store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_rock_sample waypoint21) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint21)))
)

(:action sample_rock_rover0_rover0store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_rock_sample waypoint0) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint0)))
)

(:action sample_rock_rover0_rover0store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_rock_sample waypoint11) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint11)))
)

(:action drop_rover0_rover0store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover0store))
:effect 
(and (not (full rover0store)) (empty rover0store))
)

(:action sample_rock_rover0_rover0store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3 ) (at_rock_sample waypoint12) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint12)))
)

(:action sample_rock_rover0_rover0store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_rock_sample waypoint15) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint15)))
)

(:action sample_rock_rover0_rover0store_waypoint33
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_rock_sample waypoint33) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint33)))
)

(:action sample_rock_rover0_rover0store_waypoint34
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_rock_sample waypoint34) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint34)))
)

(:action sample_rock_rover0_rover0store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_rock_sample waypoint20) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint20)))
)

(:action sample_rock_rover0_rover0store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_rock_sample waypoint4) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover0_rover0store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_rock_sample waypoint7) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover0_rover0store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_rock_sample waypoint18) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint18)))
)

(:action sample_rock_rover0_rover0store_waypoint37
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL11 ) (at_rock_sample waypoint37) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint37)))
)

(:action communicate_rock_data_rover0_general_waypoint21_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL13 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover0_general_waypoint0_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL15 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover0_general_waypoint11_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL16 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover0_general_waypoint21_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL13 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover0_general_waypoint0_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL15 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover0_general_waypoint11_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL16 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover0_general_waypoint21_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL13 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover0_general_waypoint0_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL15 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover0_general_waypoint11_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL16 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover0_general_waypoint21_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL13 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover0_general_waypoint0_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL15 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover0_general_waypoint11_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL16 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL19 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL20 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL21 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL22 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL23 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL24 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL25 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL26 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL19 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL20 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL21 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL22 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL23 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL24 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL25 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL26 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL19 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL20 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL21 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL22 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL23 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL24 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL25 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL26 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL19 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL20 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL21 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL22 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL23 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL24 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL25 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL26 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action sample_rock_rover0_rover0store_waypoint38
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL27 ) (at_rock_sample waypoint38) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint38)))
)

(:action sample_rock_rover0_rover0store_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL28 ) (at_rock_sample waypoint31) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint31)))
)

(:action sample_rock_rover0_rover0store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL29 ) (at_rock_sample waypoint3) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint3)))
)

(:action sample_rock_rover0_rover0store_waypoint32
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL30 ) (at_rock_sample waypoint32) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint32)))
)

(:action communicate_rock_data_rover0_general_waypoint12_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL31 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover0_general_waypoint15_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL32 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover0_general_waypoint33_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL33 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover0_general_waypoint34_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL34 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover0_general_waypoint20_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL35 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL36 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint7_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL37 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover0_general_waypoint18_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL38 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover0_general_waypoint37_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL39 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover0_general_waypoint12_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL31 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover0_general_waypoint15_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL32 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover0_general_waypoint33_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL33 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover0_general_waypoint34_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL34 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover0_general_waypoint20_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL35 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL36 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint7_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL37 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover0_general_waypoint18_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL38 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover0_general_waypoint37_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL39 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover0_general_waypoint12_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL31 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover0_general_waypoint15_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL32 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover0_general_waypoint33_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL33 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover0_general_waypoint34_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL34 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover0_general_waypoint20_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL35 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL36 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint7_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL37 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover0_general_waypoint18_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL38 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover0_general_waypoint37_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL39 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover0_general_waypoint12_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL31 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover0_general_waypoint15_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL32 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover0_general_waypoint33_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL33 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover0_general_waypoint34_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL34 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover0_general_waypoint20_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL35 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL36 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint7_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL37 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover0_general_waypoint18_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL38 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover0_general_waypoint37_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL39 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover0_general_waypoint21_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL13 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover0_general_waypoint0_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL15 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover0_general_waypoint11_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL16 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover0_general_waypoint12_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL31 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover0_general_waypoint15_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL32 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover0_general_waypoint33_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL33 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover0_general_waypoint34_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL34 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover0_general_waypoint20_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL35 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL36 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint7_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL37 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover0_general_waypoint18_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL38 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover0_general_waypoint37_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL39 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover0_general_waypoint21_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL13 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover0_general_waypoint0_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL15 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover0_general_waypoint11_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL16 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover0_general_waypoint12_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL31 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover0_general_waypoint15_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL32 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover0_general_waypoint33_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL33 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover0_general_waypoint34_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL34 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover0_general_waypoint20_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL35 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL36 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint7_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL37 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover0_general_waypoint18_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL38 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover0_general_waypoint37_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL39 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL19 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL20 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL21 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL22 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL23 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL24 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL25 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL26 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL19 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL20 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL21 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL22 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL23 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL24 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL25 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL26 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_rock_data_rover0_general_waypoint38_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL42 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover0_general_waypoint31_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL43 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL44 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint32_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_lander general waypoint3) (P_ARTIFICIAL45 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover0_general_waypoint38_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL42 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover0_general_waypoint31_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL43 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL44 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint32_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_lander general waypoint3) (P_ARTIFICIAL45 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover0_general_waypoint38_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL42 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover0_general_waypoint31_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL43 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL44 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint32_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint3) (P_ARTIFICIAL45 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover0_general_waypoint38_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL42 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover0_general_waypoint31_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL43 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL44 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint32_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint3) (P_ARTIFICIAL45 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover0_general_waypoint38_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL42 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover0_general_waypoint31_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL43 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL44 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint32_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_lander general waypoint3) (P_ARTIFICIAL45 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover0_general_waypoint38_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL42 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover0_general_waypoint31_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL43 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover0_general_waypoint3_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL44 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover0_general_waypoint32_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_lander general waypoint3) (P_ARTIFICIAL45 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL14 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action dummy-init-action-rotemagent1
:precondition 
(and (can-use-init-action rotemagent1))
:effect 
(and (not (can-use-init-action rotemagent1)) (used-init-action rotemagent1) (at_rock_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint10) (at_soil_sample waypoint11) (at_rock_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_soil_sample waypoint14) (at_rock_sample waypoint15) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint20) (at_rock_sample waypoint20) (at_soil_sample waypoint21) (at_rock_sample waypoint21) (at_soil_sample waypoint22) (at_soil_sample waypoint24) (at_soil_sample waypoint26) (at_soil_sample waypoint27) (at_soil_sample waypoint30) (at_rock_sample waypoint31) (at_rock_sample waypoint32) (at_rock_sample waypoint33) (at_soil_sample waypoint34) (at_rock_sample waypoint34) (at_soil_sample waypoint36) (at_rock_sample waypoint36) (at_rock_sample waypoint37) (at_rock_sample waypoint38) (at_soil_sample waypoint39) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover1_rover1store_waypoint30
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_soil_sample waypoint30) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint30)))
)

(:action sample_soil_rover1_rover1store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1001 ) (at_soil_sample waypoint18) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint18)))
)

(:action sample_rock_rover1_rover1store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_rock_sample waypoint4) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover1_rover1store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1001 ) (at_rock_sample waypoint18) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint18)))
)

(:action sample_rock_rover1_rover1store_waypoint37
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_rock_sample waypoint37) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint37)))
)

(:action drop_rover1_rover1store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover1store))
:effect 
(and (not (full rover1store)) (empty rover1store))
)

(:action communicate_soil_data_rover1_general_waypoint30_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1005 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint30))
)

(:action sample_soil_rover1_rover1store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_soil_sample waypoint7) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint7)))
)

(:action sample_soil_rover1_rover1store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_soil_sample waypoint8) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint8)))
)

(:action sample_soil_rover1_rover1store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_soil_sample waypoint10) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint10)))
)

(:action sample_soil_rover1_rover1store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1010 ) (at_soil_sample waypoint11) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint11)))
)

(:action sample_soil_rover1_rover1store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1011 ) (at_soil_sample waypoint1) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint1)))
)

(:action sample_soil_rover1_rover1store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1012 ) (at_soil_sample waypoint3) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint3)))
)

(:action sample_soil_rover1_rover1store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1013 ) (at_soil_sample waypoint12) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover1_rover1store_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_soil_sample waypoint27) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint27)))
)

(:action sample_soil_rover1_rover1store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_soil_sample waypoint5) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint5)))
)

(:action sample_soil_rover1_rover1store_waypoint34
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1016 ) (at_soil_sample waypoint34) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint34)))
)

(:action sample_soil_rover1_rover1store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_soil_sample waypoint24) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint24)))
)

(:action sample_rock_rover1_rover1store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_rock_sample waypoint7) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover1_rover1store_waypoint38
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_rock_sample waypoint38) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint38)))
)

(:action sample_rock_rover1_rover1store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1010 ) (at_rock_sample waypoint11) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint11)))
)

(:action sample_rock_rover1_rover1store_waypoint32
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_rock_sample waypoint32) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint32)))
)

(:action sample_rock_rover1_rover1store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1012 ) (at_rock_sample waypoint3) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint3)))
)

(:action sample_rock_rover1_rover1store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1013 ) (at_rock_sample waypoint12) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint12)))
)

(:action sample_rock_rover1_rover1store_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_rock_sample waypoint31) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint31)))
)

(:action sample_rock_rover1_rover1store_waypoint34
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1016 ) (at_rock_sample waypoint34) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint34)))
)

(:action communicate_soil_data_rover1_general_waypoint30_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1005 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint30))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1021 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1021 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover1_general_waypoint30_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1005 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint30))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1021 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover1_general_waypoint30_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1005 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint30))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1021 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_rock_data_rover1_general_waypoint4_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1023 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover1_general_waypoint18_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1024 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover1_general_waypoint37_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1025 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover1_general_waypoint4_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1023 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover1_general_waypoint18_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1024 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover1_general_waypoint37_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1025 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover1_general_waypoint4_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1023 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover1_general_waypoint18_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1024 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover1_general_waypoint37_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1025 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover1_general_waypoint4_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1023 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover1_general_waypoint18_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1024 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover1_general_waypoint37_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1025 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1026 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1027 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1028 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1029 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1030 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1031 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1032 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1033 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1034 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1035 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1036 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1037 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1038 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1039 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective6_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1040 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover1_general_objective7_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1041 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1026 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1027 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1028 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1029 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1030 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1031 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1032 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1033 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1034 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1035 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1036 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1037 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1038 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1039 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective6_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1040 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover1_general_objective7_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1041 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1026 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1027 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1028 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1029 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1030 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1031 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1032 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1033 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1034 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1035 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1036 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1037 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1038 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1039 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective6_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1040 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover1_general_objective7_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1041 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1026 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1027 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1028 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1029 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1030 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1031 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1032 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1033 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1034 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1035 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1036 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1037 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1038 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1039 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective6_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1040 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover1_general_objective7_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1041 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action sample_soil_rover1_rover1store_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1042 ) (at_soil_sample waypoint13) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint13)))
)

(:action sample_soil_rover1_rover1store_waypoint39
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_soil_sample waypoint39) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint39)))
)

(:action sample_soil_rover1_rover1store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1044 ) (at_soil_sample waypoint21) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint21)))
)

(:action sample_soil_rover1_rover1store_waypoint26
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1045 ) (at_soil_sample waypoint26) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint26)))
)

(:action sample_soil_rover1_rover1store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1046 ) (at_soil_sample waypoint20) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint20)))
)

(:action sample_soil_rover1_rover1store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1047 ) (at_soil_sample waypoint2) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint2)))
)

(:action sample_soil_rover1_rover1store_waypoint36
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1048 ) (at_soil_sample waypoint36) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint36)))
)

(:action sample_soil_rover1_rover1store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1049 ) (at_soil_sample waypoint14) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint14)))
)

(:action sample_rock_rover1_rover1store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1044 ) (at_rock_sample waypoint21) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint21)))
)

(:action sample_rock_rover1_rover1store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1050 ) (at_rock_sample waypoint0) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint0)))
)

(:action sample_rock_rover1_rover1store_waypoint33
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1051 ) (at_rock_sample waypoint33) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint33)))
)

(:action sample_rock_rover1_rover1store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_rock_sample waypoint15) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint15)))
)

(:action sample_rock_rover1_rover1store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1046 ) (at_rock_sample waypoint20) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint20)))
)

(:action sample_rock_rover1_rover1store_waypoint36
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1048 ) (at_rock_sample waypoint36) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint36)))
)

(:action communicate_soil_data_rover1_general_waypoint7_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1053 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover1_general_waypoint8_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1054 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover1_general_waypoint10_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1055 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover1_general_waypoint11_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1056 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover1_general_waypoint1_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1057 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover1_general_waypoint3_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1058 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1059 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1060 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint5_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1061 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover1_general_waypoint34_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1062 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover1_general_waypoint24_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1063 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover1_general_waypoint30_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1005 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint30))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1021 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover1_general_waypoint7_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1053 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover1_general_waypoint8_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1054 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover1_general_waypoint10_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1055 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover1_general_waypoint11_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1056 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover1_general_waypoint1_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1057 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover1_general_waypoint3_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1058 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1059 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1060 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint5_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1061 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover1_general_waypoint34_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1062 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover1_general_waypoint24_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1063 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover1_general_waypoint7_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1053 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover1_general_waypoint8_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1054 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover1_general_waypoint10_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1055 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover1_general_waypoint11_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1056 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover1_general_waypoint1_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1057 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover1_general_waypoint3_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1058 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1059 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1060 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint5_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1061 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover1_general_waypoint34_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1062 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover1_general_waypoint24_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1063 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover1_general_waypoint7_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1053 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover1_general_waypoint8_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1054 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover1_general_waypoint10_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1055 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover1_general_waypoint11_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1056 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover1_general_waypoint1_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1057 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover1_general_waypoint3_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1058 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1059 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1060 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint5_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1061 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover1_general_waypoint34_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1062 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover1_general_waypoint24_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1063 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover1_general_waypoint7_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1053 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover1_general_waypoint8_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1054 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover1_general_waypoint10_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1055 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover1_general_waypoint11_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1056 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover1_general_waypoint1_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1057 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover1_general_waypoint3_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1058 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1059 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1060 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint5_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1061 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover1_general_waypoint34_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1062 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover1_general_waypoint24_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1063 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover1_general_waypoint30_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1005 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint30))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1021 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover1_general_waypoint7_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1053 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover1_general_waypoint8_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1054 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover1_general_waypoint10_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1055 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover1_general_waypoint11_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1056 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover1_general_waypoint1_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1057 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover1_general_waypoint3_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1058 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1059 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1060 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint5_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1061 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover1_general_waypoint34_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1062 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover1_general_waypoint24_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1063 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_rock_data_rover1_general_waypoint7_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1064 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover1_general_waypoint38_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1065 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover1_general_waypoint11_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1066 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover1_general_waypoint32_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1067 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover1_general_waypoint3_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1068 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover1_general_waypoint12_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1069 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover1_general_waypoint31_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1070 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover1_general_waypoint34_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1071 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover1_general_waypoint4_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1023 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover1_general_waypoint18_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1024 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover1_general_waypoint37_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1025 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover1_general_waypoint7_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1064 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover1_general_waypoint38_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1065 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover1_general_waypoint11_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1066 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover1_general_waypoint32_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1067 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover1_general_waypoint3_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1068 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover1_general_waypoint12_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1069 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover1_general_waypoint31_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1070 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover1_general_waypoint34_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1071 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover1_general_waypoint7_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1064 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover1_general_waypoint38_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1065 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover1_general_waypoint11_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1066 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover1_general_waypoint32_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1067 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover1_general_waypoint3_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1068 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover1_general_waypoint12_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1069 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover1_general_waypoint31_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1070 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover1_general_waypoint34_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1071 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover1_general_waypoint7_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1064 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover1_general_waypoint38_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1065 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover1_general_waypoint11_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1066 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover1_general_waypoint32_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1067 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover1_general_waypoint3_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1068 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover1_general_waypoint12_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1069 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover1_general_waypoint31_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1070 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover1_general_waypoint34_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1071 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover1_general_waypoint7_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1064 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover1_general_waypoint38_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1065 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover1_general_waypoint11_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1066 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover1_general_waypoint32_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1067 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover1_general_waypoint3_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1068 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover1_general_waypoint12_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1069 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover1_general_waypoint31_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1070 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover1_general_waypoint34_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1071 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover1_general_waypoint4_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1023 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover1_general_waypoint18_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1024 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover1_general_waypoint37_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1025 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover1_general_waypoint7_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1064 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover1_general_waypoint38_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1065 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover1_general_waypoint11_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1066 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover1_general_waypoint32_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1067 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover1_general_waypoint3_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1068 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover1_general_waypoint12_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1069 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover1_general_waypoint31_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1070 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover1_general_waypoint34_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1071 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1026 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1027 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1028 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1029 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1030 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1031 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1032 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1033 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1034 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1035 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1036 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1037 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1038 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1039 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective6_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1040 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover1_general_objective7_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1041 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1026 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1027 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1028 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1029 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1030 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1031 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1032 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1033 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1034 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1035 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1036 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1037 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1038 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1039 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective6_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1040 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover1_general_objective7_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1041 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_soil_data_rover1_general_waypoint13_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1072 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover1_general_waypoint39_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1073 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint39))
)

(:action communicate_soil_data_rover1_general_waypoint21_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1074 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1075 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint20_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1076 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover1_general_waypoint2_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1077 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover1_general_waypoint36_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1078 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint36))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1079 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover1_general_waypoint13_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1072 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover1_general_waypoint39_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1073 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint39))
)

(:action communicate_soil_data_rover1_general_waypoint21_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1074 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1075 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint20_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1076 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover1_general_waypoint2_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1077 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover1_general_waypoint36_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1078 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint36))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1079 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover1_general_waypoint13_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1072 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover1_general_waypoint39_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1073 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint39))
)

(:action communicate_soil_data_rover1_general_waypoint21_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1074 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1075 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint20_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1076 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover1_general_waypoint2_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1077 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover1_general_waypoint36_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1078 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint36))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1079 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover1_general_waypoint13_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1072 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover1_general_waypoint39_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1073 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint39))
)

(:action communicate_soil_data_rover1_general_waypoint21_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1074 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1075 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint20_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1076 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover1_general_waypoint2_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1077 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover1_general_waypoint36_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1078 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint36))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1079 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover1_general_waypoint13_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1072 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover1_general_waypoint39_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1073 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint39))
)

(:action communicate_soil_data_rover1_general_waypoint21_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1074 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1075 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint20_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1076 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover1_general_waypoint2_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1077 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover1_general_waypoint36_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1078 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint36))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1079 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover1_general_waypoint13_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1072 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover1_general_waypoint39_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1073 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint39))
)

(:action communicate_soil_data_rover1_general_waypoint21_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1074 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1075 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint20_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1076 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover1_general_waypoint2_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1077 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover1_general_waypoint36_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1078 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint36))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1079 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_rock_data_rover1_general_waypoint21_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1080 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover1_general_waypoint0_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1081 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover1_general_waypoint33_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1082 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover1_general_waypoint15_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1083 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover1_general_waypoint20_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1084 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover1_general_waypoint36_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint3) (P_ARTIFICIAL1085 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint36))
)

(:action communicate_rock_data_rover1_general_waypoint21_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1080 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover1_general_waypoint0_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1081 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover1_general_waypoint33_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1082 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover1_general_waypoint15_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1083 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover1_general_waypoint20_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1084 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover1_general_waypoint36_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1052 ) (at_lander general waypoint3) (P_ARTIFICIAL1085 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint36))
)

(:action communicate_rock_data_rover1_general_waypoint21_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1080 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover1_general_waypoint0_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1081 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover1_general_waypoint33_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1082 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover1_general_waypoint15_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1083 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover1_general_waypoint20_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1084 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover1_general_waypoint36_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint3) (P_ARTIFICIAL1085 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint36))
)

(:action communicate_rock_data_rover1_general_waypoint21_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1080 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover1_general_waypoint0_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1081 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover1_general_waypoint33_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1082 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover1_general_waypoint15_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1083 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover1_general_waypoint20_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1084 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover1_general_waypoint36_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint3) (P_ARTIFICIAL1085 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint36))
)

(:action communicate_rock_data_rover1_general_waypoint21_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1080 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover1_general_waypoint0_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1081 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover1_general_waypoint33_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1082 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover1_general_waypoint15_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1083 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover1_general_waypoint20_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1084 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover1_general_waypoint36_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_lander general waypoint3) (P_ARTIFICIAL1085 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint36))
)

(:action communicate_rock_data_rover1_general_waypoint21_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1080 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover1_general_waypoint0_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1081 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover1_general_waypoint33_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1082 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover1_general_waypoint15_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1083 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover1_general_waypoint20_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1084 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover1_general_waypoint36_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1043 ) (at_lander general waypoint3) (P_ARTIFICIAL1085 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL1006 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint36))
)

(:action dummy-init-action-rotemagent2
:precondition 
(and (can-use-init-action rotemagent2))
:effect 
(and (not (can-use-init-action rotemagent2)) (used-init-action rotemagent2) (at_rock_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint10) (at_soil_sample waypoint11) (at_rock_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_soil_sample waypoint14) (at_rock_sample waypoint15) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint20) (at_rock_sample waypoint20) (at_soil_sample waypoint21) (at_rock_sample waypoint21) (at_soil_sample waypoint22) (at_soil_sample waypoint24) (at_soil_sample waypoint26) (at_soil_sample waypoint27) (at_soil_sample waypoint30) (at_rock_sample waypoint31) (at_rock_sample waypoint32) (at_rock_sample waypoint33) (at_soil_sample waypoint34) (at_rock_sample waypoint34) (at_soil_sample waypoint36) (at_rock_sample waypoint36) (at_rock_sample waypoint37) (at_rock_sample waypoint38) (at_soil_sample waypoint39) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover2_rover2store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_rock_sample waypoint0) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint0)))
)

(:action sample_rock_rover2_rover2store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_rock_sample waypoint4) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover2_rover2store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_rock_sample waypoint7) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover2_rover2store_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_rock_sample waypoint31) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint31)))
)

(:action sample_rock_rover2_rover2store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_rock_sample waypoint15) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint15)))
)

(:action sample_rock_rover2_rover2store_waypoint33
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_rock_sample waypoint33) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint33)))
)

(:action sample_rock_rover2_rover2store_waypoint34
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_rock_sample waypoint34) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint34)))
)

(:action sample_rock_rover2_rover2store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_rock_sample waypoint11) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint11)))
)

(:action sample_rock_rover2_rover2store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_rock_sample waypoint18) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint18)))
)

(:action sample_rock_rover2_rover2store_waypoint37
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_rock_sample waypoint37) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint37)))
)

(:action sample_rock_rover2_rover2store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_rock_sample waypoint12) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint12)))
)

(:action sample_rock_rover2_rover2store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_rock_sample waypoint20) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint20)))
)

(:action sample_rock_rover2_rover2store_waypoint38
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_rock_sample waypoint38) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint38)))
)

(:action drop_rover2_rover2store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover2store))
:effect 
(and (not (full rover2store)) (empty rover2store))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2014 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2016 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2017 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint31_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2018 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2014 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2016 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2017 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint31_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2018 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2014 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2016 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2017 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint31_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2018 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2020 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2021 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2022 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2023 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2024 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2025 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2026 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2027 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2020 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2021 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2022 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2023 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2024 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2025 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2026 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2027 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2020 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2021 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2022 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2023 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2024 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2025 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2026 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2027 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action sample_rock_rover2_rover2store_waypoint36
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2028 ) (at_rock_sample waypoint36) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint36)))
)

(:action sample_rock_rover2_rover2store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2029 ) (at_rock_sample waypoint3) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint3)))
)

(:action sample_rock_rover2_rover2store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2030 ) (at_rock_sample waypoint21) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint21)))
)

(:action sample_rock_rover2_rover2store_waypoint32
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2031 ) (at_rock_sample waypoint32) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint32)))
)

(:action communicate_rock_data_rover2_general_waypoint15_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2032 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover2_general_waypoint33_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2033 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover2_general_waypoint34_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2034 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2035 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint18_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2036 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover2_general_waypoint37_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2037 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover2_general_waypoint12_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2038 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover2_general_waypoint20_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2039 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover2_general_waypoint38_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2040 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover2_general_waypoint15_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2032 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover2_general_waypoint33_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2033 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover2_general_waypoint34_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2034 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2035 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint18_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2036 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover2_general_waypoint37_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2037 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover2_general_waypoint12_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2038 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover2_general_waypoint20_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2039 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover2_general_waypoint38_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2040 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover2_general_waypoint15_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2032 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover2_general_waypoint33_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2033 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover2_general_waypoint34_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2034 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2035 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint18_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2036 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover2_general_waypoint37_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2037 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover2_general_waypoint12_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2038 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover2_general_waypoint20_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2039 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover2_general_waypoint38_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2040 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2014 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2016 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2017 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint31_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2018 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover2_general_waypoint15_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2032 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover2_general_waypoint33_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2033 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover2_general_waypoint34_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2034 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2035 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint18_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2036 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover2_general_waypoint37_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2037 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover2_general_waypoint12_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2038 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover2_general_waypoint20_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2039 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover2_general_waypoint38_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2040 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2014 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2016 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2017 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint31_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2018 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover2_general_waypoint15_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2032 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover2_general_waypoint33_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2033 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover2_general_waypoint34_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2034 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2035 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint18_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2036 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover2_general_waypoint37_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2037 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover2_general_waypoint12_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2038 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover2_general_waypoint20_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2039 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover2_general_waypoint38_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2040 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2014 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2016 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2017 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint31_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2018 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover2_general_waypoint15_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2032 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover2_general_waypoint33_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2033 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover2_general_waypoint34_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2034 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2035 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint18_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2036 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover2_general_waypoint37_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2037 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover2_general_waypoint12_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2038 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover2_general_waypoint20_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2039 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover2_general_waypoint38_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2040 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2020 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2021 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2022 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2023 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2024 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2025 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2026 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2027 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2020 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2021 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2022 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2023 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2024 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2025 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2026 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2027 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2020 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2021 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2022 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2023 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2024 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2025 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2026 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2027 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_rock_data_rover2_general_waypoint36_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2044 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint36))
)

(:action communicate_rock_data_rover2_general_waypoint3_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2045 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover2_general_waypoint21_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2046 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover2_general_waypoint32_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_lander general waypoint3) (P_ARTIFICIAL2047 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover2_general_waypoint36_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2044 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint36))
)

(:action communicate_rock_data_rover2_general_waypoint3_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2045 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover2_general_waypoint21_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2046 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover2_general_waypoint32_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint3) (P_ARTIFICIAL2047 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover2_general_waypoint36_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2044 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint36))
)

(:action communicate_rock_data_rover2_general_waypoint3_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2045 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover2_general_waypoint21_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2046 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover2_general_waypoint32_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint3) (P_ARTIFICIAL2047 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover2_general_waypoint36_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2044 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint36))
)

(:action communicate_rock_data_rover2_general_waypoint3_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2045 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover2_general_waypoint21_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2046 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover2_general_waypoint32_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2041 ) (at_lander general waypoint3) (P_ARTIFICIAL2047 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover2_general_waypoint36_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2044 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint36))
)

(:action communicate_rock_data_rover2_general_waypoint3_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2045 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover2_general_waypoint21_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2046 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover2_general_waypoint32_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2042 ) (at_lander general waypoint3) (P_ARTIFICIAL2047 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover2_general_waypoint36_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2044 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint36))
)

(:action communicate_rock_data_rover2_general_waypoint3_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2045 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover2_general_waypoint21_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2046 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover2_general_waypoint32_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2043 ) (at_lander general waypoint3) (P_ARTIFICIAL2047 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL2015 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action dummy-init-action-rotemagent3
:precondition 
(and (can-use-init-action rotemagent3))
:effect 
(and (not (can-use-init-action rotemagent3)) (used-init-action rotemagent3) (at_rock_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint10) (at_soil_sample waypoint11) (at_rock_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_soil_sample waypoint14) (at_rock_sample waypoint15) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint20) (at_rock_sample waypoint20) (at_soil_sample waypoint21) (at_rock_sample waypoint21) (at_soil_sample waypoint22) (at_soil_sample waypoint24) (at_soil_sample waypoint26) (at_soil_sample waypoint27) (at_soil_sample waypoint30) (at_rock_sample waypoint31) (at_rock_sample waypoint32) (at_rock_sample waypoint33) (at_soil_sample waypoint34) (at_rock_sample waypoint34) (at_soil_sample waypoint36) (at_rock_sample waypoint36) (at_rock_sample waypoint37) (at_rock_sample waypoint38) (at_soil_sample waypoint39) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover3_rover3store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_rock_sample waypoint0) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint0)))
)

(:action sample_rock_rover3_rover3store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_rock_sample waypoint12) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint12)))
)

(:action sample_rock_rover3_rover3store_waypoint34
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_rock_sample waypoint34) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint34)))
)

(:action drop_rover3_rover3store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover3store))
:effect 
(and (not (full rover3store)) (empty rover3store))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3004 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action sample_rock_rover3_rover3store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_rock_sample waypoint7) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover3_rover3store_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_rock_sample waypoint31) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint31)))
)

(:action sample_rock_rover3_rover3store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3008 ) (at_rock_sample waypoint11) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint11)))
)

(:action sample_rock_rover3_rover3store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_rock_sample waypoint3) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint3)))
)

(:action sample_rock_rover3_rover3store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_rock_sample waypoint15) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint15)))
)

(:action sample_rock_rover3_rover3store_waypoint33
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_rock_sample waypoint33) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint33)))
)

(:action sample_rock_rover3_rover3store_waypoint38
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_rock_sample waypoint38) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint38)))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3004 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3013 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint34_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3014 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3004 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3013 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint34_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3014 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3013 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint34_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3014 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3004 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3013 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint34_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3014 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3004 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3013 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint34_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3014 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3018 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3019 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3020 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3021 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3022 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3023 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3024 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective7_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3025 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3026 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3027 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3028 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3029 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3030 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3031 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3032 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3033 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3018 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3019 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3020 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3021 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3022 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3023 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3024 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective7_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3025 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3026 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3027 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3028 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3029 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3030 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3031 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3032 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3033 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3018 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3019 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3020 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3021 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3022 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3023 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3024 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective7_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3025 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3026 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3027 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3028 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3029 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3030 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3031 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3032 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3033 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3018 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3019 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3020 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3021 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3022 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3023 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3024 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective7_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3025 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3026 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3027 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3028 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3029 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3030 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3031 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3032 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3033 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3018 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3019 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3020 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3021 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3022 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3023 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3024 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective7_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3025 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3026 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3027 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3028 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3029 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3030 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3031 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3032 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3033 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action sample_rock_rover3_rover3store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3034 ) (at_rock_sample waypoint20) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint20)))
)

(:action sample_rock_rover3_rover3store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3035 ) (at_rock_sample waypoint4) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover3_rover3store_waypoint37
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_rock_sample waypoint37) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint37)))
)

(:action sample_rock_rover3_rover3store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_rock_sample waypoint18) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint18)))
)

(:action sample_rock_rover3_rover3store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_rock_sample waypoint21) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint21)))
)

(:action sample_rock_rover3_rover3store_waypoint32
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3039 ) (at_rock_sample waypoint32) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint32)))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3004 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover3_general_waypoint12_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3013 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover3_general_waypoint34_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3014 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3041 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint31_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3042 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover3_general_waypoint11_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3043 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3044 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3045 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint33_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3046 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover3_general_waypoint38_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3047 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3041 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint31_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3042 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover3_general_waypoint11_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3043 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3044 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3045 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint33_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3046 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover3_general_waypoint38_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3047 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3041 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint31_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3042 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover3_general_waypoint11_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3043 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3044 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3045 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint33_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3046 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover3_general_waypoint38_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3047 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3041 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint31_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3042 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover3_general_waypoint11_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3043 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3044 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3045 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint33_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3046 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover3_general_waypoint38_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3047 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3041 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint31_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3042 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover3_general_waypoint11_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3043 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3044 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3045 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint33_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3046 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover3_general_waypoint38_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3047 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3041 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint31_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3042 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover3_general_waypoint11_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3043 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover3_general_waypoint3_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3044 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3045 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint33_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3046 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover3_general_waypoint38_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3047 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3018 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3019 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3020 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3021 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3022 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3023 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3024 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective7_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3025 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3026 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3027 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3028 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3029 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3030 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3031 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3032 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3033 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3048 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3049 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint37_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3050 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover3_general_waypoint18_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3051 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover3_general_waypoint21_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3052 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover3_general_waypoint32_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_lander general waypoint3) (P_ARTIFICIAL3053 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3048 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3049 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint37_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3050 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover3_general_waypoint18_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3051 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover3_general_waypoint21_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3052 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover3_general_waypoint32_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_lander general waypoint3) (P_ARTIFICIAL3053 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3048 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3049 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint37_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3050 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover3_general_waypoint18_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3051 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover3_general_waypoint21_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3052 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover3_general_waypoint32_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint3) (P_ARTIFICIAL3053 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3048 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3049 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint37_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3050 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover3_general_waypoint18_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3051 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover3_general_waypoint21_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3052 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover3_general_waypoint32_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_lander general waypoint3) (P_ARTIFICIAL3053 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3048 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3049 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint37_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3050 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover3_general_waypoint18_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3051 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover3_general_waypoint21_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3052 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover3_general_waypoint32_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint3) (P_ARTIFICIAL3053 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3048 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint4_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3049 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover3_general_waypoint37_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3050 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover3_general_waypoint18_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3051 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover3_general_waypoint21_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3052 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover3_general_waypoint32_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint3) (P_ARTIFICIAL3053 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL3005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action dummy-init-action-rotemagent4
:precondition 
(and (can-use-init-action rotemagent4))
:effect 
(and (not (can-use-init-action rotemagent4)) (used-init-action rotemagent4) (at_rock_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint10) (at_soil_sample waypoint11) (at_rock_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_soil_sample waypoint14) (at_rock_sample waypoint15) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint20) (at_rock_sample waypoint20) (at_soil_sample waypoint21) (at_rock_sample waypoint21) (at_soil_sample waypoint22) (at_soil_sample waypoint24) (at_soil_sample waypoint26) (at_soil_sample waypoint27) (at_soil_sample waypoint30) (at_rock_sample waypoint31) (at_rock_sample waypoint32) (at_rock_sample waypoint33) (at_soil_sample waypoint34) (at_rock_sample waypoint34) (at_soil_sample waypoint36) (at_rock_sample waypoint36) (at_rock_sample waypoint37) (at_rock_sample waypoint38) (at_soil_sample waypoint39) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover4_rover4store_waypoint38
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_rock_sample waypoint38) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint38)))
)

(:action sample_rock_rover4_rover4store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4001 ) (at_rock_sample waypoint4) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover4_rover4store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_rock_sample waypoint12) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint12)))
)

(:action sample_rock_rover4_rover4store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_rock_sample waypoint20) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint20)))
)

(:action sample_rock_rover4_rover4store_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4004 ) (at_rock_sample waypoint31) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint31)))
)

(:action sample_rock_rover4_rover4store_waypoint33
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4005 ) (at_rock_sample waypoint33) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint33)))
)

(:action sample_rock_rover4_rover4store_waypoint34
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4006 ) (at_rock_sample waypoint34) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint34)))
)

(:action drop_rover4_rover4store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover4store))
:effect 
(and (not (full rover4store)) (empty rover4store))
)

(:action communicate_rock_data_rover4_general_waypoint38_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint3) (P_ARTIFICIAL4008 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover4_general_waypoint38_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint3) (P_ARTIFICIAL4008 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action sample_rock_rover4_rover4store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_rock_sample waypoint7) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover4_rover4store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_rock_sample waypoint11) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint11)))
)

(:action sample_rock_rover4_rover4store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_rock_sample waypoint18) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint18)))
)

(:action sample_rock_rover4_rover4store_waypoint37
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_rock_sample waypoint37) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint37)))
)

(:action sample_rock_rover4_rover4store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_rock_sample waypoint3) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint3)))
)

(:action sample_rock_rover4_rover4store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4016 ) (at_rock_sample waypoint0) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint0)))
)

(:action sample_rock_rover4_rover4store_waypoint32
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4017 ) (at_rock_sample waypoint32) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint32)))
)

(:action sample_rock_rover4_rover4store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_rock_sample waypoint15) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint15)))
)

(:action sample_rock_rover4_rover4store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_rock_sample waypoint21) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint21)))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint3) (P_ARTIFICIAL4020 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint3) (P_ARTIFICIAL4021 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint3) (P_ARTIFICIAL4022 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint31_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint3) (P_ARTIFICIAL4023 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover4_general_waypoint33_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint3) (P_ARTIFICIAL4024 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover4_general_waypoint34_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint3) (P_ARTIFICIAL4025 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover4_general_waypoint38_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint3) (P_ARTIFICIAL4008 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint3) (P_ARTIFICIAL4020 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint3) (P_ARTIFICIAL4021 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint3) (P_ARTIFICIAL4022 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint31_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint3) (P_ARTIFICIAL4023 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover4_general_waypoint33_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint3) (P_ARTIFICIAL4024 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover4_general_waypoint34_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint3) (P_ARTIFICIAL4025 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover4_general_waypoint38_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4026 ) (at_lander general waypoint3) (P_ARTIFICIAL4008 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4026 ) (at_lander general waypoint3) (P_ARTIFICIAL4020 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4026 ) (at_lander general waypoint3) (P_ARTIFICIAL4021 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4026 ) (at_lander general waypoint3) (P_ARTIFICIAL4022 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint31_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4026 ) (at_lander general waypoint3) (P_ARTIFICIAL4023 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover4_general_waypoint33_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4026 ) (at_lander general waypoint3) (P_ARTIFICIAL4024 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover4_general_waypoint34_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4026 ) (at_lander general waypoint3) (P_ARTIFICIAL4025 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover4_general_waypoint38_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4027 ) (at_lander general waypoint3) (P_ARTIFICIAL4008 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4027 ) (at_lander general waypoint3) (P_ARTIFICIAL4020 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4027 ) (at_lander general waypoint3) (P_ARTIFICIAL4021 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4027 ) (at_lander general waypoint3) (P_ARTIFICIAL4022 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint31_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4027 ) (at_lander general waypoint3) (P_ARTIFICIAL4023 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover4_general_waypoint33_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4027 ) (at_lander general waypoint3) (P_ARTIFICIAL4024 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover4_general_waypoint34_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4027 ) (at_lander general waypoint3) (P_ARTIFICIAL4025 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint3) (P_ARTIFICIAL4020 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint3) (P_ARTIFICIAL4021 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint3) (P_ARTIFICIAL4022 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint31_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint3) (P_ARTIFICIAL4023 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover4_general_waypoint33_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint3) (P_ARTIFICIAL4024 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover4_general_waypoint34_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint3) (P_ARTIFICIAL4025 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover4_general_waypoint38_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4028 ) (at_lander general waypoint3) (P_ARTIFICIAL4008 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4028 ) (at_lander general waypoint3) (P_ARTIFICIAL4020 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint12_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4028 ) (at_lander general waypoint3) (P_ARTIFICIAL4021 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4028 ) (at_lander general waypoint3) (P_ARTIFICIAL4022 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint31_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4028 ) (at_lander general waypoint3) (P_ARTIFICIAL4023 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover4_general_waypoint33_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4028 ) (at_lander general waypoint3) (P_ARTIFICIAL4024 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover4_general_waypoint34_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4028 ) (at_lander general waypoint3) (P_ARTIFICIAL4025 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action sample_rock_rover4_rover4store_waypoint36
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4029 ) (at_rock_sample waypoint36) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint36)))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint3) (P_ARTIFICIAL4030 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint3) (P_ARTIFICIAL4031 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint18_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint3) (P_ARTIFICIAL4032 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover4_general_waypoint37_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint3) (P_ARTIFICIAL4033 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint3) (P_ARTIFICIAL4034 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint0_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint3) (P_ARTIFICIAL4035 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover4_general_waypoint32_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint3) (P_ARTIFICIAL4036 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint3) (P_ARTIFICIAL4037 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint3) (P_ARTIFICIAL4038 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint3) (P_ARTIFICIAL4030 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint3) (P_ARTIFICIAL4031 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint18_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint3) (P_ARTIFICIAL4032 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover4_general_waypoint37_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint3) (P_ARTIFICIAL4033 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint3) (P_ARTIFICIAL4034 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint0_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint3) (P_ARTIFICIAL4035 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover4_general_waypoint32_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint3) (P_ARTIFICIAL4036 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint3) (P_ARTIFICIAL4037 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint3) (P_ARTIFICIAL4038 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4026 ) (at_lander general waypoint3) (P_ARTIFICIAL4030 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4026 ) (at_lander general waypoint3) (P_ARTIFICIAL4031 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint18_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4026 ) (at_lander general waypoint3) (P_ARTIFICIAL4032 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover4_general_waypoint37_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4026 ) (at_lander general waypoint3) (P_ARTIFICIAL4033 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4026 ) (at_lander general waypoint3) (P_ARTIFICIAL4034 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint0_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4026 ) (at_lander general waypoint3) (P_ARTIFICIAL4035 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover4_general_waypoint32_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4026 ) (at_lander general waypoint3) (P_ARTIFICIAL4036 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4026 ) (at_lander general waypoint3) (P_ARTIFICIAL4037 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4026 ) (at_lander general waypoint3) (P_ARTIFICIAL4038 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4027 ) (at_lander general waypoint3) (P_ARTIFICIAL4030 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4027 ) (at_lander general waypoint3) (P_ARTIFICIAL4031 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint18_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4027 ) (at_lander general waypoint3) (P_ARTIFICIAL4032 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover4_general_waypoint37_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4027 ) (at_lander general waypoint3) (P_ARTIFICIAL4033 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4027 ) (at_lander general waypoint3) (P_ARTIFICIAL4034 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint0_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4027 ) (at_lander general waypoint3) (P_ARTIFICIAL4035 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover4_general_waypoint32_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4027 ) (at_lander general waypoint3) (P_ARTIFICIAL4036 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4027 ) (at_lander general waypoint3) (P_ARTIFICIAL4037 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4027 ) (at_lander general waypoint3) (P_ARTIFICIAL4038 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint3) (P_ARTIFICIAL4030 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint3) (P_ARTIFICIAL4031 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint18_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint3) (P_ARTIFICIAL4032 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover4_general_waypoint37_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint3) (P_ARTIFICIAL4033 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint3) (P_ARTIFICIAL4034 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint0_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint3) (P_ARTIFICIAL4035 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover4_general_waypoint32_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint3) (P_ARTIFICIAL4036 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint3) (P_ARTIFICIAL4037 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint3) (P_ARTIFICIAL4038 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4028 ) (at_lander general waypoint3) (P_ARTIFICIAL4030 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4028 ) (at_lander general waypoint3) (P_ARTIFICIAL4031 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint18_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4028 ) (at_lander general waypoint3) (P_ARTIFICIAL4032 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover4_general_waypoint37_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4028 ) (at_lander general waypoint3) (P_ARTIFICIAL4033 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover4_general_waypoint3_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4028 ) (at_lander general waypoint3) (P_ARTIFICIAL4034 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover4_general_waypoint0_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4028 ) (at_lander general waypoint3) (P_ARTIFICIAL4035 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover4_general_waypoint32_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4028 ) (at_lander general waypoint3) (P_ARTIFICIAL4036 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4028 ) (at_lander general waypoint3) (P_ARTIFICIAL4037 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4028 ) (at_lander general waypoint3) (P_ARTIFICIAL4038 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint36_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint3) (P_ARTIFICIAL4039 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint36))
)

(:action communicate_rock_data_rover4_general_waypoint36_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint3) (P_ARTIFICIAL4039 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint36))
)

(:action communicate_rock_data_rover4_general_waypoint36_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4026 ) (at_lander general waypoint3) (P_ARTIFICIAL4039 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint36))
)

(:action communicate_rock_data_rover4_general_waypoint36_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4027 ) (at_lander general waypoint3) (P_ARTIFICIAL4039 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint36))
)

(:action communicate_rock_data_rover4_general_waypoint36_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint3) (P_ARTIFICIAL4039 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint36))
)

(:action communicate_rock_data_rover4_general_waypoint36_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4028 ) (at_lander general waypoint3) (P_ARTIFICIAL4039 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL4009 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint36))
)

(:action dummy-init-action-rotemagent5
:precondition 
(and (can-use-init-action rotemagent5))
:effect 
(and (not (can-use-init-action rotemagent5)) (used-init-action rotemagent5) (at_rock_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint10) (at_soil_sample waypoint11) (at_rock_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_soil_sample waypoint14) (at_rock_sample waypoint15) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint20) (at_rock_sample waypoint20) (at_soil_sample waypoint21) (at_rock_sample waypoint21) (at_soil_sample waypoint22) (at_soil_sample waypoint24) (at_soil_sample waypoint26) (at_soil_sample waypoint27) (at_soil_sample waypoint30) (at_rock_sample waypoint31) (at_rock_sample waypoint32) (at_rock_sample waypoint33) (at_soil_sample waypoint34) (at_rock_sample waypoint34) (at_soil_sample waypoint36) (at_rock_sample waypoint36) (at_rock_sample waypoint37) (at_rock_sample waypoint38) (at_soil_sample waypoint39) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover5_rover5store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_soil_sample waypoint1) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint1)))
)

(:action sample_soil_rover5_rover5store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_soil_sample waypoint2) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint2)))
)

(:action sample_soil_rover5_rover5store_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_soil_sample waypoint13) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint13)))
)

(:action sample_soil_rover5_rover5store_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_soil_sample waypoint27) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint27)))
)

(:action sample_soil_rover5_rover5store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_soil_sample waypoint20) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint20)))
)

(:action sample_soil_rover5_rover5store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5005 ) (at_soil_sample waypoint14) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint14)))
)

(:action sample_soil_rover5_rover5store_waypoint26
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5006 ) (at_soil_sample waypoint26) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint26)))
)

(:action sample_soil_rover5_rover5store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_soil_sample waypoint10) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint10)))
)

(:action sample_soil_rover5_rover5store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5008 ) (at_soil_sample waypoint12) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover5_rover5store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_soil_sample waypoint24) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint24)))
)

(:action sample_soil_rover5_rover5store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_soil_sample waypoint8) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint8)))
)

(:action sample_soil_rover5_rover5store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5011 ) (at_soil_sample waypoint18) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint18)))
)

(:action sample_soil_rover5_rover5store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5012 ) (at_soil_sample waypoint21) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint21)))
)

(:action sample_soil_rover5_rover5store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_soil_sample waypoint7) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint7)))
)

(:action sample_soil_rover5_rover5store_waypoint34
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5014 ) (at_soil_sample waypoint34) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint34)))
)

(:action sample_soil_rover5_rover5store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_soil_sample waypoint11) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint11)))
)

(:action sample_soil_rover5_rover5store_waypoint39
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_soil_sample waypoint39) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint39)))
)

(:action drop_rover5_rover5store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover5store))
:effect 
(and (not (full rover5store)) (empty rover5store))
)

(:action communicate_soil_data_rover5_general_waypoint1_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5017 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover5_general_waypoint2_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5019 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover5_general_waypoint13_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5020 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover5_general_waypoint27_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5021 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover5_general_waypoint1_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5017 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover5_general_waypoint2_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5019 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover5_general_waypoint13_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5020 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover5_general_waypoint27_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5021 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover5_general_waypoint1_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5017 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover5_general_waypoint2_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5019 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover5_general_waypoint13_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5020 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover5_general_waypoint27_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5021 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover5_general_waypoint1_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5017 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover5_general_waypoint2_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5019 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover5_general_waypoint13_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5020 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover5_general_waypoint27_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5021 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover5_general_waypoint1_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5017 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover5_general_waypoint2_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5019 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover5_general_waypoint13_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5020 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover5_general_waypoint27_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5021 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover5_general_waypoint1_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5017 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover5_general_waypoint2_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5019 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover5_general_waypoint13_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5020 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover5_general_waypoint27_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5021 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5025 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5026 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5027 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5028 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5029 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5030 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5031 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5032 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5025 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5026 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5027 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5028 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5029 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5030 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5031 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5032 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5025 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5026 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5027 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5028 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5029 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5030 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5031 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5032 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5025 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5026 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5027 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5028 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5029 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5030 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5031 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5032 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5025 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5026 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5027 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5028 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5029 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5030 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5031 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5032 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5025 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5026 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5027 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5028 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5029 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5030 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5031 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5032 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action sample_soil_rover5_rover5store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5033 ) (at_soil_sample waypoint3) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint3)))
)

(:action sample_soil_rover5_rover5store_waypoint22
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5034 ) (at_soil_sample waypoint22) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint22)))
)

(:action sample_soil_rover5_rover5store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_soil_sample waypoint5) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint5)))
)

(:action sample_soil_rover5_rover5store_waypoint30
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5036 ) (at_soil_sample waypoint30) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint30)))
)

(:action communicate_soil_data_rover5_general_waypoint20_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5037 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5038 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint26_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5039 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover5_general_waypoint10_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5040 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5041 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover5_general_waypoint24_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5042 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5043 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5044 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover5_general_waypoint21_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5045 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover5_general_waypoint7_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5046 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover5_general_waypoint34_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5047 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover5_general_waypoint11_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5048 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover5_general_waypoint39_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5049 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint39))
)

(:action communicate_soil_data_rover5_general_waypoint20_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5037 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5038 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint26_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5039 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover5_general_waypoint10_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5040 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5041 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover5_general_waypoint24_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5042 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5043 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5044 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover5_general_waypoint21_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5045 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover5_general_waypoint7_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5046 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover5_general_waypoint34_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5047 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover5_general_waypoint11_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5048 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover5_general_waypoint39_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5049 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint39))
)

(:action communicate_soil_data_rover5_general_waypoint20_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5037 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5038 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint26_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5039 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover5_general_waypoint10_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5040 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5041 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover5_general_waypoint24_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5042 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5043 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5044 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover5_general_waypoint21_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5045 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover5_general_waypoint7_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5046 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover5_general_waypoint34_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5047 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover5_general_waypoint11_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5048 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover5_general_waypoint39_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5049 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint39))
)

(:action communicate_soil_data_rover5_general_waypoint20_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5037 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5038 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint26_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5039 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover5_general_waypoint10_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5040 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5041 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover5_general_waypoint24_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5042 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5043 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5044 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover5_general_waypoint21_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5045 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover5_general_waypoint7_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5046 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover5_general_waypoint34_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5047 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover5_general_waypoint11_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5048 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover5_general_waypoint39_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5049 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint39))
)

(:action communicate_soil_data_rover5_general_waypoint20_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5037 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5038 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint26_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5039 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover5_general_waypoint10_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5040 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5041 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover5_general_waypoint24_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5042 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5043 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5044 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover5_general_waypoint21_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5045 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover5_general_waypoint7_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5046 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover5_general_waypoint34_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5047 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover5_general_waypoint11_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5048 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover5_general_waypoint39_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5049 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint39))
)

(:action communicate_soil_data_rover5_general_waypoint20_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5037 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5038 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint26_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5039 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover5_general_waypoint10_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5040 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5041 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover5_general_waypoint24_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5042 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5043 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5044 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover5_general_waypoint21_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5045 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover5_general_waypoint7_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5046 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover5_general_waypoint34_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5047 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover5_general_waypoint11_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5048 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover5_general_waypoint39_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5049 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint39))
)

(:action sample_soil_rover5_rover5store_waypoint36
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5050 ) (at_soil_sample waypoint36) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint36)))
)

(:action communicate_soil_data_rover5_general_waypoint3_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5051 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover5_general_waypoint22_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5052 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5053 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint30_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5054 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint30))
)

(:action communicate_soil_data_rover5_general_waypoint3_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5051 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover5_general_waypoint22_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5052 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5053 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint30_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5054 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint30))
)

(:action communicate_soil_data_rover5_general_waypoint3_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5051 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover5_general_waypoint22_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5052 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5053 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint30_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5054 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint30))
)

(:action communicate_soil_data_rover5_general_waypoint3_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5051 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover5_general_waypoint22_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5052 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5053 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint30_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5054 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint30))
)

(:action communicate_soil_data_rover5_general_waypoint3_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5051 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover5_general_waypoint22_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5052 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5053 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint30_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5054 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint30))
)

(:action communicate_soil_data_rover5_general_waypoint3_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5051 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover5_general_waypoint22_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5052 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5053 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint30_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5054 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint30))
)

(:action communicate_soil_data_rover5_general_waypoint36_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5010 ) (at_lander general waypoint3) (P_ARTIFICIAL5055 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint36))
)

(:action communicate_soil_data_rover5_general_waypoint36_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_lander general waypoint3) (P_ARTIFICIAL5055 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint36))
)

(:action communicate_soil_data_rover5_general_waypoint36_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_lander general waypoint3) (P_ARTIFICIAL5055 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint36))
)

(:action communicate_soil_data_rover5_general_waypoint36_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint3) (P_ARTIFICIAL5055 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint36))
)

(:action communicate_soil_data_rover5_general_waypoint36_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint3) (P_ARTIFICIAL5055 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint36))
)

(:action communicate_soil_data_rover5_general_waypoint36_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_lander general waypoint3) (P_ARTIFICIAL5055 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL5018 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint36))
)

(:action dummy-init-action-rotemagent6
:precondition 
(and (can-use-init-action rotemagent6))
:effect 
(and (not (can-use-init-action rotemagent6)) (used-init-action rotemagent6) (at_rock_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint10) (at_soil_sample waypoint11) (at_rock_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_soil_sample waypoint14) (at_rock_sample waypoint15) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint20) (at_rock_sample waypoint20) (at_soil_sample waypoint21) (at_rock_sample waypoint21) (at_soil_sample waypoint22) (at_soil_sample waypoint24) (at_soil_sample waypoint26) (at_soil_sample waypoint27) (at_soil_sample waypoint30) (at_rock_sample waypoint31) (at_rock_sample waypoint32) (at_rock_sample waypoint33) (at_soil_sample waypoint34) (at_rock_sample waypoint34) (at_soil_sample waypoint36) (at_rock_sample waypoint36) (at_rock_sample waypoint37) (at_rock_sample waypoint38) (at_soil_sample waypoint39) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover6_rover6store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6000 ) (at_rock_sample waypoint4) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover6_rover6store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6001 ) (at_rock_sample waypoint11) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint11)))
)

(:action sample_rock_rover6_rover6store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6002 ) (at_rock_sample waypoint18) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint18)))
)

(:action sample_rock_rover6_rover6store_waypoint37
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6003 ) (at_rock_sample waypoint37) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint37)))
)

(:action sample_rock_rover6_rover6store_waypoint38
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6004 ) (at_rock_sample waypoint38) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint38)))
)

(:action sample_rock_rover6_rover6store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6005 ) (at_rock_sample waypoint0) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint0)))
)

(:action sample_rock_rover6_rover6store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_rock_sample waypoint15) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint15)))
)

(:action sample_rock_rover6_rover6store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6007 ) (at_rock_sample waypoint20) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint20)))
)

(:action sample_rock_rover6_rover6store_waypoint33
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6008 ) (at_rock_sample waypoint33) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint33)))
)

(:action drop_rover6_rover6store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover6store))
:effect 
(and (not (full rover6store)) (empty rover6store))
)

(:action communicate_rock_data_rover6_general_waypoint4_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6010 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover6_general_waypoint4_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6010 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover6_general_waypoint4_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6010 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover6_general_waypoint4_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6010 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover6_general_waypoint4_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6010 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_image_data_rover6_general_objective0_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6015 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover6_general_objective1_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6016 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover6_general_objective2_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6017 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover6_general_objective3_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6018 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover6_general_objective4_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6019 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover6_general_objective5_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6020 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover6_general_objective6_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6021 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover6_general_objective7_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6022 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover6_general_objective0_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6023 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover6_general_objective1_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6024 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover6_general_objective2_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6025 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover6_general_objective3_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6026 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover6_general_objective4_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6027 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover6_general_objective5_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6028 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover6_general_objective6_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6029 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover6_general_objective7_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6030 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover6_general_objective0_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6015 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover6_general_objective1_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6016 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover6_general_objective2_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6017 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover6_general_objective3_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6018 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover6_general_objective4_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6019 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover6_general_objective5_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6020 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover6_general_objective6_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6021 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover6_general_objective7_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6022 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover6_general_objective0_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6023 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover6_general_objective1_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6024 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover6_general_objective2_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6025 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover6_general_objective3_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6026 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover6_general_objective4_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6027 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover6_general_objective5_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6028 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover6_general_objective6_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6029 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover6_general_objective7_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6030 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover6_general_objective0_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6015 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover6_general_objective1_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6016 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover6_general_objective2_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6017 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover6_general_objective3_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6018 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover6_general_objective4_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6019 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover6_general_objective5_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6020 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover6_general_objective6_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6021 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover6_general_objective7_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6022 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover6_general_objective0_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6023 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover6_general_objective1_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6024 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover6_general_objective2_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6025 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover6_general_objective3_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6026 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover6_general_objective4_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6027 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover6_general_objective5_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6028 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover6_general_objective6_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6029 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover6_general_objective7_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6030 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover6_general_objective0_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6015 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover6_general_objective1_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6016 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover6_general_objective2_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6017 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover6_general_objective3_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6018 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover6_general_objective4_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6019 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover6_general_objective5_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6020 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover6_general_objective6_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6021 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover6_general_objective7_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6022 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover6_general_objective0_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6023 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover6_general_objective1_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6024 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover6_general_objective2_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6025 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover6_general_objective3_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6026 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover6_general_objective4_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6027 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover6_general_objective5_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6028 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover6_general_objective6_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6029 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover6_general_objective7_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6030 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover6_general_objective0_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6015 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover6_general_objective1_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6016 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover6_general_objective2_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6017 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover6_general_objective3_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6018 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover6_general_objective4_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6019 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover6_general_objective5_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6020 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover6_general_objective6_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6021 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover6_general_objective7_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6022 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover6_general_objective0_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6023 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover6_general_objective1_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6024 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover6_general_objective2_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6025 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover6_general_objective3_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6026 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover6_general_objective4_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6027 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover6_general_objective5_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6028 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover6_general_objective6_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6029 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover6_general_objective7_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6030 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action sample_rock_rover6_rover6store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6031 ) (at_rock_sample waypoint7) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover6_rover6store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6032 ) (at_rock_sample waypoint12) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint12)))
)

(:action sample_rock_rover6_rover6store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6033 ) (at_rock_sample waypoint3) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint3)))
)

(:action sample_rock_rover6_rover6store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6034 ) (at_rock_sample waypoint21) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint21)))
)

(:action sample_rock_rover6_rover6store_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6035 ) (at_rock_sample waypoint31) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint31)))
)

(:action sample_rock_rover6_rover6store_waypoint34
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6036 ) (at_rock_sample waypoint34) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint34)))
)

(:action sample_rock_rover6_rover6store_waypoint32
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6037 ) (at_rock_sample waypoint32) (empty rover6store))
:effect 
(and (not (empty rover6store)) (full rover6store) (not (at_rock_sample waypoint32)))
)

(:action communicate_rock_data_rover6_general_waypoint11_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6038 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover6_general_waypoint18_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6039 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover6_general_waypoint37_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6040 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover6_general_waypoint38_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6041 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover6_general_waypoint0_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6042 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover6_general_waypoint15_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6043 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover6_general_waypoint20_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6044 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover6_general_waypoint33_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6045 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover6_general_waypoint11_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6038 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover6_general_waypoint18_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6039 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover6_general_waypoint37_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6040 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover6_general_waypoint38_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6041 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover6_general_waypoint0_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6042 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover6_general_waypoint15_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6043 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover6_general_waypoint20_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6044 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover6_general_waypoint33_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6045 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover6_general_waypoint4_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6010 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover6_general_waypoint11_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6038 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover6_general_waypoint18_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6039 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover6_general_waypoint37_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6040 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover6_general_waypoint38_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6041 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover6_general_waypoint0_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6042 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover6_general_waypoint15_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6043 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover6_general_waypoint20_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6044 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover6_general_waypoint33_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6045 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover6_general_waypoint11_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6038 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover6_general_waypoint18_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6039 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover6_general_waypoint37_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6040 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover6_general_waypoint38_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6041 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover6_general_waypoint0_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6042 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover6_general_waypoint15_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6043 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover6_general_waypoint20_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6044 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover6_general_waypoint33_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6045 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover6_general_waypoint11_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6038 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover6_general_waypoint18_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6039 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover6_general_waypoint37_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6040 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover6_general_waypoint38_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6041 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover6_general_waypoint0_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6042 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover6_general_waypoint15_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6043 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover6_general_waypoint20_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6044 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover6_general_waypoint33_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6045 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover6_general_waypoint11_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6038 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover6_general_waypoint18_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6039 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint18))
)

(:action communicate_rock_data_rover6_general_waypoint37_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6040 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint37))
)

(:action communicate_rock_data_rover6_general_waypoint38_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6041 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover6_general_waypoint0_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6042 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover6_general_waypoint15_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6043 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover6_general_waypoint20_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6044 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover6_general_waypoint33_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6045 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_image_data_rover6_general_objective0_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6015 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover6_general_objective1_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6016 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover6_general_objective2_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6017 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover6_general_objective3_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6018 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover6_general_objective4_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6019 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover6_general_objective5_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6020 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover6_general_objective6_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6021 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover6_general_objective7_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6022 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover6_general_objective0_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6023 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover6_general_objective1_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6024 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover6_general_objective2_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6025 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover6_general_objective3_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6026 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover6_general_objective4_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6027 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover6_general_objective5_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6028 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover6_general_objective6_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6029 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover6_general_objective7_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6030 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_rock_data_rover6_general_waypoint7_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6047 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover6_general_waypoint12_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6048 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover6_general_waypoint3_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6049 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover6_general_waypoint21_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6050 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover6_general_waypoint31_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6051 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover6_general_waypoint34_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6052 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover6_general_waypoint32_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6009 ) (at_lander general waypoint3) (P_ARTIFICIAL6053 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover6_general_waypoint7_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6047 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover6_general_waypoint12_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6048 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover6_general_waypoint3_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6049 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover6_general_waypoint21_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6050 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover6_general_waypoint31_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6051 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover6_general_waypoint34_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6052 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover6_general_waypoint32_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6006 ) (at_lander general waypoint3) (P_ARTIFICIAL6053 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover6_general_waypoint7_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6047 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover6_general_waypoint12_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6048 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover6_general_waypoint3_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6049 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover6_general_waypoint21_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6050 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover6_general_waypoint31_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6051 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover6_general_waypoint34_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6052 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover6_general_waypoint32_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6046 ) (at_lander general waypoint3) (P_ARTIFICIAL6053 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover6_general_waypoint7_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6047 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover6_general_waypoint12_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6048 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover6_general_waypoint3_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6049 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover6_general_waypoint21_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6050 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover6_general_waypoint31_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6051 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover6_general_waypoint34_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6052 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover6_general_waypoint32_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6012 ) (at_lander general waypoint3) (P_ARTIFICIAL6053 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover6_general_waypoint7_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6047 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover6_general_waypoint12_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6048 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover6_general_waypoint3_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6049 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover6_general_waypoint21_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6050 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover6_general_waypoint31_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6051 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover6_general_waypoint34_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6052 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover6_general_waypoint32_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6013 ) (at_lander general waypoint3) (P_ARTIFICIAL6053 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action communicate_rock_data_rover6_general_waypoint7_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6047 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover6_general_waypoint12_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6048 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint12))
)

(:action communicate_rock_data_rover6_general_waypoint3_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6049 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint3))
)

(:action communicate_rock_data_rover6_general_waypoint21_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6050 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover6_general_waypoint31_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6051 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover6_general_waypoint34_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6052 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover6_general_waypoint32_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6014 ) (at_lander general waypoint3) (P_ARTIFICIAL6053 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL6011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint32))
)

(:action dummy-init-action-rotemagent7
:precondition 
(and (can-use-init-action rotemagent7))
:effect 
(and (not (can-use-init-action rotemagent7)) (used-init-action rotemagent7) (at_rock_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_soil_sample waypoint3) (at_rock_sample waypoint3) (at_rock_sample waypoint4) (at_soil_sample waypoint5) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_soil_sample waypoint10) (at_soil_sample waypoint11) (at_rock_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint12) (at_soil_sample waypoint13) (at_soil_sample waypoint14) (at_rock_sample waypoint15) (at_soil_sample waypoint18) (at_rock_sample waypoint18) (at_soil_sample waypoint20) (at_rock_sample waypoint20) (at_soil_sample waypoint21) (at_rock_sample waypoint21) (at_soil_sample waypoint22) (at_soil_sample waypoint24) (at_soil_sample waypoint26) (at_soil_sample waypoint27) (at_soil_sample waypoint30) (at_rock_sample waypoint31) (at_rock_sample waypoint32) (at_rock_sample waypoint33) (at_soil_sample waypoint34) (at_rock_sample waypoint34) (at_soil_sample waypoint36) (at_rock_sample waypoint36) (at_rock_sample waypoint37) (at_rock_sample waypoint38) (at_soil_sample waypoint39) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store) (empty rover6store) (empty rover7store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5) (used-init-action rotemagent6) (used-init-action rotemagent7))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (not (used-init-action rotemagent6)) (not (used-init-action rotemagent7)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover7_rover7store_waypoint34
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7000 ) (at_soil_sample waypoint34) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint34)))
)

(:action sample_soil_rover7_rover7store_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7001 ) (at_soil_sample waypoint13) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint13)))
)

(:action sample_soil_rover7_rover7store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_soil_sample waypoint24) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint24)))
)

(:action sample_soil_rover7_rover7store_waypoint26
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7003 ) (at_soil_sample waypoint26) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint26)))
)

(:action drop_rover7_rover7store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover7store))
:effect 
(and (not (full rover7store)) (empty rover7store))
)

(:action communicate_soil_data_rover7_general_waypoint34_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7004 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action sample_soil_rover7_rover7store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7006 ) (at_soil_sample waypoint10) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint10)))
)

(:action sample_soil_rover7_rover7store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7007 ) (at_soil_sample waypoint12) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover7_rover7store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7008 ) (at_soil_sample waypoint21) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint21)))
)

(:action sample_soil_rover7_rover7store_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7009 ) (at_soil_sample waypoint27) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint27)))
)

(:action sample_soil_rover7_rover7store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7010 ) (at_soil_sample waypoint1) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint1)))
)

(:action sample_soil_rover7_rover7store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7011 ) (at_soil_sample waypoint7) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint7)))
)

(:action sample_soil_rover7_rover7store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_soil_sample waypoint8) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint8)))
)

(:action sample_soil_rover7_rover7store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7013 ) (at_soil_sample waypoint5) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint5)))
)

(:action sample_soil_rover7_rover7store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7014 ) (at_soil_sample waypoint3) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint3)))
)

(:action sample_soil_rover7_rover7store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7015 ) (at_soil_sample waypoint14) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint14)))
)

(:action communicate_soil_data_rover7_general_waypoint34_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7004 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover7_general_waypoint13_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7016 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover7_general_waypoint24_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7017 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover7_general_waypoint26_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7018 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover7_general_waypoint34_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7004 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover7_general_waypoint13_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7016 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover7_general_waypoint24_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7017 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover7_general_waypoint26_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7018 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover7_general_waypoint34_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7004 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover7_general_waypoint13_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7016 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover7_general_waypoint24_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7017 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover7_general_waypoint26_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7018 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover7_general_waypoint34_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7004 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover7_general_waypoint13_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7016 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover7_general_waypoint24_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7017 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover7_general_waypoint26_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7018 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover7_general_waypoint13_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7016 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover7_general_waypoint24_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7017 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover7_general_waypoint26_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7018 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action sample_soil_rover7_rover7store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7022 ) (at_soil_sample waypoint11) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint11)))
)

(:action sample_soil_rover7_rover7store_waypoint22
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7023 ) (at_soil_sample waypoint22) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint22)))
)

(:action sample_soil_rover7_rover7store_waypoint30
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7024 ) (at_soil_sample waypoint30) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint30)))
)

(:action sample_soil_rover7_rover7store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7025 ) (at_soil_sample waypoint2) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint2)))
)

(:action sample_soil_rover7_rover7store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7026 ) (at_soil_sample waypoint18) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint18)))
)

(:action sample_soil_rover7_rover7store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7027 ) (at_soil_sample waypoint20) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint20)))
)

(:action sample_soil_rover7_rover7store_waypoint39
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_soil_sample waypoint39) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint39)))
)

(:action sample_soil_rover7_rover7store_waypoint36
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7029 ) (at_soil_sample waypoint36) (empty rover7store))
:effect 
(and (not (empty rover7store)) (full rover7store) (not (at_soil_sample waypoint36)))
)

(:action communicate_soil_data_rover7_general_waypoint10_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7030 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover7_general_waypoint12_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7031 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover7_general_waypoint21_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7032 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover7_general_waypoint27_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7033 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover7_general_waypoint1_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7034 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover7_general_waypoint7_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7035 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover7_general_waypoint8_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7036 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover7_general_waypoint5_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7037 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover7_general_waypoint3_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7038 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover7_general_waypoint14_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7039 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover7_general_waypoint10_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7030 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover7_general_waypoint12_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7031 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover7_general_waypoint21_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7032 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover7_general_waypoint27_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7033 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover7_general_waypoint1_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7034 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover7_general_waypoint7_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7035 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover7_general_waypoint8_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7036 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover7_general_waypoint5_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7037 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover7_general_waypoint3_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7038 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover7_general_waypoint14_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7039 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover7_general_waypoint10_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7030 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover7_general_waypoint12_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7031 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover7_general_waypoint21_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7032 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover7_general_waypoint27_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7033 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover7_general_waypoint1_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7034 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover7_general_waypoint7_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7035 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover7_general_waypoint8_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7036 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover7_general_waypoint5_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7037 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover7_general_waypoint3_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7038 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover7_general_waypoint14_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7039 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover7_general_waypoint10_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7030 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover7_general_waypoint12_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7031 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover7_general_waypoint21_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7032 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover7_general_waypoint27_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7033 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover7_general_waypoint1_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7034 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover7_general_waypoint7_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7035 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover7_general_waypoint8_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7036 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover7_general_waypoint5_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7037 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover7_general_waypoint3_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7038 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover7_general_waypoint14_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7039 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover7_general_waypoint10_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7030 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover7_general_waypoint12_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7031 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover7_general_waypoint21_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7032 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover7_general_waypoint27_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7033 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover7_general_waypoint1_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7034 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover7_general_waypoint7_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7035 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover7_general_waypoint8_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7036 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover7_general_waypoint5_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7037 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover7_general_waypoint3_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7038 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover7_general_waypoint14_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7039 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover7_general_waypoint34_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7004 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover7_general_waypoint13_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7016 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint13))
)

(:action communicate_soil_data_rover7_general_waypoint24_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7017 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover7_general_waypoint26_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7018 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover7_general_waypoint10_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7030 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover7_general_waypoint12_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7031 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover7_general_waypoint21_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7032 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover7_general_waypoint27_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7033 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover7_general_waypoint1_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7034 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover7_general_waypoint7_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7035 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover7_general_waypoint8_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7036 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover7_general_waypoint5_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7037 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover7_general_waypoint3_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7038 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover7_general_waypoint14_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7039 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_image_data_rover7_general_objective0_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7040 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover7_general_objective1_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7041 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover7_general_objective2_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7042 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover7_general_objective3_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7043 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover7_general_objective4_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7044 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover7_general_objective5_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7045 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover7_general_objective6_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7046 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover7_general_objective7_colour_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7047 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover7_general_objective0_high_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7048 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover7_general_objective1_high_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7049 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover7_general_objective2_high_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7050 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover7_general_objective3_high_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7051 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover7_general_objective4_high_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7052 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover7_general_objective5_high_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7053 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover7_general_objective6_high_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7054 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover7_general_objective7_high_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7055 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover7_general_objective0_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7056 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover7_general_objective1_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7057 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover7_general_objective2_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7058 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover7_general_objective3_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7059 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover7_general_objective4_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7060 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover7_general_objective5_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7061 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover7_general_objective6_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7062 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover7_general_objective7_low_res_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7063 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover7_general_objective0_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7040 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover7_general_objective1_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7041 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover7_general_objective2_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7042 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover7_general_objective3_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7043 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover7_general_objective4_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7044 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover7_general_objective5_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7045 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover7_general_objective6_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7046 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover7_general_objective7_colour_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7047 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover7_general_objective0_high_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7048 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover7_general_objective1_high_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7049 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover7_general_objective2_high_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7050 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover7_general_objective3_high_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7051 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover7_general_objective4_high_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7052 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover7_general_objective5_high_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7053 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover7_general_objective6_high_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7054 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover7_general_objective7_high_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7055 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover7_general_objective0_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7056 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover7_general_objective1_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7057 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover7_general_objective2_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7058 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover7_general_objective3_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7059 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover7_general_objective4_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7060 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover7_general_objective5_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7061 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover7_general_objective6_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7062 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover7_general_objective7_low_res_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7063 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover7_general_objective0_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7040 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover7_general_objective1_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7041 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover7_general_objective2_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7042 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover7_general_objective3_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7043 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover7_general_objective4_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7044 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover7_general_objective5_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7045 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover7_general_objective6_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7046 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover7_general_objective7_colour_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7047 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover7_general_objective0_high_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7048 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover7_general_objective1_high_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7049 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover7_general_objective2_high_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7050 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover7_general_objective3_high_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7051 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover7_general_objective4_high_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7052 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover7_general_objective5_high_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7053 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover7_general_objective6_high_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7054 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover7_general_objective7_high_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7055 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover7_general_objective0_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7056 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover7_general_objective1_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7057 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover7_general_objective2_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7058 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover7_general_objective3_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7059 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover7_general_objective4_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7060 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover7_general_objective5_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7061 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover7_general_objective6_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7062 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover7_general_objective7_low_res_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7063 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover7_general_objective0_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7040 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover7_general_objective1_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7041 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover7_general_objective2_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7042 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover7_general_objective3_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7043 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover7_general_objective4_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7044 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover7_general_objective5_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7045 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover7_general_objective6_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7046 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover7_general_objective7_colour_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7047 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover7_general_objective0_high_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7048 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover7_general_objective1_high_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7049 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover7_general_objective2_high_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7050 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover7_general_objective3_high_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7051 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover7_general_objective4_high_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7052 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover7_general_objective5_high_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7053 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover7_general_objective6_high_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7054 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover7_general_objective7_high_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7055 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover7_general_objective0_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7056 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover7_general_objective1_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7057 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover7_general_objective2_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7058 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover7_general_objective3_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7059 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover7_general_objective4_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7060 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover7_general_objective5_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7061 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover7_general_objective6_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7062 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover7_general_objective7_low_res_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7063 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover7_general_objective0_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7040 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover7_general_objective1_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7041 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover7_general_objective2_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7042 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover7_general_objective3_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7043 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover7_general_objective4_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7044 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover7_general_objective5_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7045 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover7_general_objective6_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7046 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover7_general_objective7_colour_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7047 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover7_general_objective0_high_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7048 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover7_general_objective1_high_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7049 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover7_general_objective2_high_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7050 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover7_general_objective3_high_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7051 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover7_general_objective4_high_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7052 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover7_general_objective5_high_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7053 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover7_general_objective6_high_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7054 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover7_general_objective7_high_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7055 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover7_general_objective0_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7056 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover7_general_objective1_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7057 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover7_general_objective2_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7058 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover7_general_objective3_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7059 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover7_general_objective4_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7060 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover7_general_objective5_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7061 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover7_general_objective6_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7062 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover7_general_objective7_low_res_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7063 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover7_general_objective0_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7040 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover7_general_objective1_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7041 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover7_general_objective2_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7042 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover7_general_objective3_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7043 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover7_general_objective4_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7044 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover7_general_objective5_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7045 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover7_general_objective6_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7046 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover7_general_objective7_colour_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7047 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover7_general_objective0_high_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7048 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover7_general_objective1_high_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7049 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover7_general_objective2_high_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7050 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover7_general_objective3_high_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7051 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover7_general_objective4_high_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7052 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover7_general_objective5_high_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7053 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover7_general_objective6_high_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7054 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover7_general_objective7_high_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7055 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover7_general_objective0_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7056 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover7_general_objective1_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7057 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover7_general_objective2_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7058 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover7_general_objective3_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7059 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover7_general_objective4_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7060 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover7_general_objective5_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7061 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover7_general_objective6_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7062 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover7_general_objective7_low_res_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7063 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_soil_data_rover7_general_waypoint11_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7064 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover7_general_waypoint22_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7065 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover7_general_waypoint30_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7066 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint30))
)

(:action communicate_soil_data_rover7_general_waypoint2_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7067 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover7_general_waypoint18_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7068 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover7_general_waypoint20_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7069 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover7_general_waypoint39_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7070 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint39))
)

(:action communicate_soil_data_rover7_general_waypoint36_waypoint8_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7012 ) (at_lander general waypoint3) (P_ARTIFICIAL7071 ) (visible waypoint8 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint36))
)

(:action communicate_soil_data_rover7_general_waypoint11_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7064 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover7_general_waypoint22_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7065 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover7_general_waypoint30_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7066 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint30))
)

(:action communicate_soil_data_rover7_general_waypoint2_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7067 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover7_general_waypoint18_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7068 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover7_general_waypoint20_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7069 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover7_general_waypoint39_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7070 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint39))
)

(:action communicate_soil_data_rover7_general_waypoint36_waypoint15_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7019 ) (at_lander general waypoint3) (P_ARTIFICIAL7071 ) (visible waypoint15 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint36))
)

(:action communicate_soil_data_rover7_general_waypoint11_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7064 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover7_general_waypoint22_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7065 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover7_general_waypoint30_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7066 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint30))
)

(:action communicate_soil_data_rover7_general_waypoint2_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7067 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover7_general_waypoint18_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7068 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover7_general_waypoint20_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7069 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover7_general_waypoint39_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7070 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint39))
)

(:action communicate_soil_data_rover7_general_waypoint36_waypoint19_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7020 ) (at_lander general waypoint3) (P_ARTIFICIAL7071 ) (visible waypoint19 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint36))
)

(:action communicate_soil_data_rover7_general_waypoint11_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7064 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover7_general_waypoint22_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7065 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover7_general_waypoint30_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7066 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint30))
)

(:action communicate_soil_data_rover7_general_waypoint2_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7067 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover7_general_waypoint18_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7068 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover7_general_waypoint20_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7069 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover7_general_waypoint39_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7070 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint39))
)

(:action communicate_soil_data_rover7_general_waypoint36_waypoint23_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7021 ) (at_lander general waypoint3) (P_ARTIFICIAL7071 ) (visible waypoint23 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint36))
)

(:action communicate_soil_data_rover7_general_waypoint11_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7064 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover7_general_waypoint22_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7065 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover7_general_waypoint30_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7066 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint30))
)

(:action communicate_soil_data_rover7_general_waypoint2_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7067 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover7_general_waypoint18_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7068 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover7_general_waypoint20_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7069 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover7_general_waypoint39_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7070 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint39))
)

(:action communicate_soil_data_rover7_general_waypoint36_waypoint24_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7002 ) (at_lander general waypoint3) (P_ARTIFICIAL7071 ) (visible waypoint24 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint36))
)

(:action communicate_soil_data_rover7_general_waypoint11_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7064 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint11))
)

(:action communicate_soil_data_rover7_general_waypoint22_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7065 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover7_general_waypoint30_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7066 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint30))
)

(:action communicate_soil_data_rover7_general_waypoint2_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7067 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover7_general_waypoint18_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7068 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover7_general_waypoint20_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7069 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint20))
)

(:action communicate_soil_data_rover7_general_waypoint39_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7070 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint39))
)

(:action communicate_soil_data_rover7_general_waypoint36_waypoint39_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7028 ) (at_lander general waypoint3) (P_ARTIFICIAL7071 ) (visible waypoint39 waypoint3) (P_ARTIFICIAL7005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint36))
)

)
