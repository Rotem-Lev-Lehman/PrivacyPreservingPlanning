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
 rover3store - store
 colour - mode
 waypoint15 - waypoint
 rover4store - store
 high_res - mode
 waypoint27 - waypoint
 low_res - mode
 camera0 - camera
 objective9 - objective
 objective8 - objective
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
 camera2 - camera
 waypoint38 - waypoint
 waypoint39 - waypoint
 camera1 - camera
 camera3 - camera
 waypoint14 - waypoint
 rover0store - store
 general - lander
 waypoint16 - waypoint
 waypoint17 - waypoint
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
 waypoint10 - waypoint
 waypoint11 - waypoint
 waypoint12 - waypoint
 waypoint13 - waypoint
 camera4 - camera
 camera5 - camera
 camera6 - camera
 camera7 - camera
 rover1store - store
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
(P_ARTIFICIAL48)
(P_ARTIFICIAL49)
(P_ARTIFICIAL50)
(P_ARTIFICIAL51)
(P_ARTIFICIAL52)
(P_ARTIFICIAL53)
(P_ARTIFICIAL54)
(P_ARTIFICIAL55)
(P_ARTIFICIAL56)
(P_ARTIFICIAL57)
(P_ARTIFICIAL58)
(P_ARTIFICIAL59)
(P_ARTIFICIAL60)
(P_ARTIFICIAL61)
(P_ARTIFICIAL62)
(P_ARTIFICIAL63)
(P_ARTIFICIAL64)
(P_ARTIFICIAL65)
(P_ARTIFICIAL66)
(P_ARTIFICIAL67)
(P_ARTIFICIAL68)
(P_ARTIFICIAL69)
(P_ARTIFICIAL70)
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
(P_ARTIFICIAL1086)
(P_ARTIFICIAL1087)
(P_ARTIFICIAL1088)
(P_ARTIFICIAL1089)
(P_ARTIFICIAL1090)
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
(P_ARTIFICIAL2049)
(P_ARTIFICIAL2050)
(P_ARTIFICIAL2051)
(P_ARTIFICIAL2052)
(P_ARTIFICIAL2053)
(P_ARTIFICIAL2054)
(P_ARTIFICIAL2055)
(P_ARTIFICIAL2056)
(P_ARTIFICIAL2057)
(P_ARTIFICIAL2058)
(P_ARTIFICIAL2059)
(P_ARTIFICIAL2060)
(P_ARTIFICIAL2061)
(P_ARTIFICIAL2062)
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
(P_ARTIFICIAL3054)
(P_ARTIFICIAL3055)
(P_ARTIFICIAL3056)
(P_ARTIFICIAL3057)
(P_ARTIFICIAL3058)
(P_ARTIFICIAL3059)
(P_ARTIFICIAL3060)
(P_ARTIFICIAL3061)
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
(P_ARTIFICIAL4050)
(P_ARTIFICIAL4051)
(P_ARTIFICIAL4052)
(P_ARTIFICIAL4053)
(P_ARTIFICIAL4054)
(P_ARTIFICIAL4055)
(P_ARTIFICIAL4056)
(P_ARTIFICIAL4057)
(P_ARTIFICIAL4058)
(P_ARTIFICIAL4059)
(P_ARTIFICIAL4060)
(P_ARTIFICIAL4061)
(P_ARTIFICIAL4062)
(P_ARTIFICIAL4063)
(P_ARTIFICIAL4064)
(P_ARTIFICIAL4065)
(P_ARTIFICIAL4066)
(P_ARTIFICIAL4067)
(P_ARTIFICIAL4068)
(P_ARTIFICIAL4069)
(P_ARTIFICIAL4070)
(P_ARTIFICIAL4071)
(P_ARTIFICIAL4072)
(P_ARTIFICIAL4073)
(P_ARTIFICIAL4074)
(P_ARTIFICIAL4075)
(P_ARTIFICIAL4076)
(P_ARTIFICIAL4077)
(P_ARTIFICIAL4078)
(P_ARTIFICIAL4079)
(P_ARTIFICIAL4080)
(P_ARTIFICIAL4081)
(P_ARTIFICIAL4082)
(P_ARTIFICIAL4083)
(P_ARTIFICIAL4084)
(P_ARTIFICIAL4085)
(P_ARTIFICIAL4086)
(P_ARTIFICIAL4087)
(P_ARTIFICIAL4088)
(P_ARTIFICIAL4089)
(P_ARTIFICIAL4090)
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
)

(:action dummy-init-action-rotemagent0
:precondition 
(and (can-use-init-action rotemagent0))
:effect 
(and (not (can-use-init-action rotemagent0)) (used-init-action rotemagent0) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_rock_sample waypoint2) (at_soil_sample waypoint3) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_rock_sample waypoint5) (at_rock_sample waypoint7) (at_soil_sample waypoint9) (at_rock_sample waypoint11) (at_soil_sample waypoint12) (at_soil_sample waypoint14) (at_rock_sample waypoint14) (at_rock_sample waypoint16) (at_soil_sample waypoint17) (at_soil_sample waypoint18) (at_soil_sample waypoint21) (at_rock_sample waypoint21) (at_rock_sample waypoint23) (at_soil_sample waypoint24) (at_rock_sample waypoint24) (at_rock_sample waypoint25) (at_soil_sample waypoint26) (at_soil_sample waypoint27) (at_rock_sample waypoint27) (at_rock_sample waypoint28) (at_soil_sample waypoint31) (at_rock_sample waypoint31) (at_soil_sample waypoint32) (at_soil_sample waypoint37) (at_soil_sample waypoint38) (at_rock_sample waypoint38) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
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

(:action sample_rock_rover0_rover0store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_rock_sample waypoint5) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint5)))
)

(:action drop_rover0_rover0store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover0store))
:effect 
(and (not (full rover0store)) (empty rover0store))
)

(:action sample_soil_rover0_rover0store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_soil_sample waypoint1) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint1)))
)

(:action sample_soil_rover0_rover0store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3 ) (at_soil_sample waypoint12) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover0_rover0store_waypoint32
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_soil_sample waypoint32) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint32)))
)

(:action sample_soil_rover0_rover0store_waypoint37
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_soil_sample waypoint37) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint37)))
)

(:action sample_soil_rover0_rover0store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_soil_sample waypoint9) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint9)))
)

(:action sample_soil_rover0_rover0store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_soil_sample waypoint14) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint14)))
)

(:action sample_soil_rover0_rover0store_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_soil_sample waypoint17) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint17)))
)

(:action sample_soil_rover0_rover0store_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_soil_sample waypoint31) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint31)))
)

(:action sample_soil_rover0_rover0store_waypoint38
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_soil_sample waypoint38) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint38)))
)

(:action sample_rock_rover0_rover0store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL11 ) (at_rock_sample waypoint16) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint16)))
)

(:action sample_rock_rover0_rover0store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_rock_sample waypoint14) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint14)))
)

(:action sample_rock_rover0_rover0store_waypoint23
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL12 ) (at_rock_sample waypoint23) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint23)))
)

(:action sample_rock_rover0_rover0store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_rock_sample waypoint25) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint25)))
)

(:action sample_rock_rover0_rover0store_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_rock_sample waypoint31) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint31)))
)

(:action sample_rock_rover0_rover0store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL14 ) (at_rock_sample waypoint11) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint11)))
)

(:action sample_rock_rover0_rover0store_waypoint38
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_rock_sample waypoint38) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint38)))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL15 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL15 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL15 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL15 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL15 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL19 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint5_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL20 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL19 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint5_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL20 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL19 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint5_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL20 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL19 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint5_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL20 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL19 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint5_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL20 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL21 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL22 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL23 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL24 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover0_general_objective5_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL25 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover0_general_objective6_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL26 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover0_general_objective7_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL27 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover0_general_objective8_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL28 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover0_general_objective9_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL29 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL21 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL22 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL23 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL24 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover0_general_objective5_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL25 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover0_general_objective6_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL26 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover0_general_objective7_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL27 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover0_general_objective8_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL28 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover0_general_objective9_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL29 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL21 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL22 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL23 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL24 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover0_general_objective5_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL25 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover0_general_objective6_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL26 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover0_general_objective7_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL27 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover0_general_objective8_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL28 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover0_general_objective9_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL29 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL21 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL22 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL23 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL24 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover0_general_objective5_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL25 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover0_general_objective6_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL26 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover0_general_objective7_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL27 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover0_general_objective8_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL28 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover0_general_objective9_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL29 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL21 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL22 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL23 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL24 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover0_general_objective5_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL25 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover0_general_objective6_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL26 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover0_general_objective7_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL27 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover0_general_objective8_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL28 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover0_general_objective9_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL29 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action sample_soil_rover0_rover0store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL30 ) (at_soil_sample waypoint0) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint0)))
)

(:action sample_soil_rover0_rover0store_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_soil_sample waypoint27) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint27)))
)

(:action sample_soil_rover0_rover0store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_soil_sample waypoint3) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint3)))
)

(:action sample_soil_rover0_rover0store_waypoint26
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_soil_sample waypoint26) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint26)))
)

(:action sample_soil_rover0_rover0store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_soil_sample waypoint18) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint18)))
)

(:action sample_soil_rover0_rover0store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL35 ) (at_soil_sample waypoint21) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint21)))
)

(:action sample_soil_rover0_rover0store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL36 ) (at_soil_sample waypoint24) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint24)))
)

(:action sample_soil_rover0_rover0store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL37 ) (at_soil_sample waypoint2) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint2)))
)

(:action sample_rock_rover0_rover0store_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL31 ) (at_rock_sample waypoint27) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint27)))
)

(:action sample_rock_rover0_rover0store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_rock_sample waypoint7) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover0_rover0store_waypoint28
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_rock_sample waypoint28) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint28)))
)

(:action sample_rock_rover0_rover0store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL35 ) (at_rock_sample waypoint21) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint21)))
)

(:action sample_rock_rover0_rover0store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL36 ) (at_rock_sample waypoint24) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint24)))
)

(:action sample_rock_rover0_rover0store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL37 ) (at_rock_sample waypoint2) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_rock_sample waypoint2)))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL15 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover0_general_waypoint1_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL40 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover0_general_waypoint12_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL41 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover0_general_waypoint32_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL42 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover0_general_waypoint37_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL43 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL44 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint14_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL45 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover0_general_waypoint17_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL46 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover0_general_waypoint31_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL47 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover0_general_waypoint38_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL48 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover0_general_waypoint1_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL40 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover0_general_waypoint12_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL41 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover0_general_waypoint32_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL42 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover0_general_waypoint37_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL43 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL44 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint14_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL45 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover0_general_waypoint17_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL46 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover0_general_waypoint31_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL47 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover0_general_waypoint38_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL48 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover0_general_waypoint1_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL40 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover0_general_waypoint12_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL41 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover0_general_waypoint32_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL42 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover0_general_waypoint37_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL43 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL44 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint14_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL45 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover0_general_waypoint17_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL46 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover0_general_waypoint31_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL47 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover0_general_waypoint38_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL48 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL15 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover0_general_waypoint1_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL40 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover0_general_waypoint12_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL41 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover0_general_waypoint32_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL42 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover0_general_waypoint37_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL43 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL44 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint14_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL45 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover0_general_waypoint17_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL46 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover0_general_waypoint31_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL47 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover0_general_waypoint38_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL48 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover0_general_waypoint1_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL40 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover0_general_waypoint12_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL41 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover0_general_waypoint32_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL42 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover0_general_waypoint37_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL43 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL44 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint14_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL45 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover0_general_waypoint17_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL46 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover0_general_waypoint31_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL47 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover0_general_waypoint38_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL48 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover0_general_waypoint4_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL15 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover0_general_waypoint1_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL40 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover0_general_waypoint12_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL41 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover0_general_waypoint32_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL42 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover0_general_waypoint37_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL43 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL44 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint14_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL45 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover0_general_waypoint17_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL46 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover0_general_waypoint31_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL47 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover0_general_waypoint38_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL48 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover0_general_waypoint1_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL40 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover0_general_waypoint12_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL41 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover0_general_waypoint32_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL42 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover0_general_waypoint37_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL43 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL44 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint14_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL45 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover0_general_waypoint17_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL46 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover0_general_waypoint31_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL47 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover0_general_waypoint38_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL48 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover0_general_waypoint1_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL40 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover0_general_waypoint12_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL41 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover0_general_waypoint32_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL42 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover0_general_waypoint37_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL43 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover0_general_waypoint9_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL44 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover0_general_waypoint14_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL45 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover0_general_waypoint17_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL46 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover0_general_waypoint31_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL47 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover0_general_waypoint38_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL48 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL19 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint5_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL20 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover0_general_waypoint16_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL49 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover0_general_waypoint14_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL50 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover0_general_waypoint23_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL51 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover0_general_waypoint25_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL52 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover0_general_waypoint31_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL53 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover0_general_waypoint11_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL54 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover0_general_waypoint38_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL55 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover0_general_waypoint16_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL49 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover0_general_waypoint14_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL50 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover0_general_waypoint23_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL51 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover0_general_waypoint25_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL52 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover0_general_waypoint31_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL53 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover0_general_waypoint11_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL54 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover0_general_waypoint38_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL55 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover0_general_waypoint16_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL49 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover0_general_waypoint14_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL50 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover0_general_waypoint23_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL51 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover0_general_waypoint25_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL52 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover0_general_waypoint31_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL53 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover0_general_waypoint11_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL54 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover0_general_waypoint38_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL55 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL19 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint5_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL20 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover0_general_waypoint16_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL49 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover0_general_waypoint14_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL50 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover0_general_waypoint23_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL51 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover0_general_waypoint25_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL52 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover0_general_waypoint31_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL53 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover0_general_waypoint11_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL54 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover0_general_waypoint38_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL55 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover0_general_waypoint16_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL49 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover0_general_waypoint14_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL50 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover0_general_waypoint23_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL51 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover0_general_waypoint25_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL52 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover0_general_waypoint31_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL53 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover0_general_waypoint11_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL54 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover0_general_waypoint38_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL55 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover0_general_waypoint4_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL19 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover0_general_waypoint5_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL20 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover0_general_waypoint16_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL49 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover0_general_waypoint14_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL50 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover0_general_waypoint23_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL51 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover0_general_waypoint25_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL52 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover0_general_waypoint31_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL53 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover0_general_waypoint11_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL54 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover0_general_waypoint38_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL55 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover0_general_waypoint16_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL49 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover0_general_waypoint14_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL50 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover0_general_waypoint23_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL51 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover0_general_waypoint25_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL52 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover0_general_waypoint31_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL53 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover0_general_waypoint11_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL54 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover0_general_waypoint38_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL55 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover0_general_waypoint16_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL49 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover0_general_waypoint14_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL50 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover0_general_waypoint23_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL51 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover0_general_waypoint25_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL52 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover0_general_waypoint31_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL53 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover0_general_waypoint11_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL54 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover0_general_waypoint38_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL55 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL21 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL22 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL23 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL24 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover0_general_objective5_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL25 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover0_general_objective6_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL26 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover0_general_objective7_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL27 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover0_general_objective8_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL28 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover0_general_objective9_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL29 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL21 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL22 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL23 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL24 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover0_general_objective5_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL25 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover0_general_objective6_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL26 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover0_general_objective7_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL27 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover0_general_objective8_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL28 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover0_general_objective9_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL29 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL21 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL22 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL23 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL24 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover0_general_objective5_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL25 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover0_general_objective6_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL26 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover0_general_objective7_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL27 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover0_general_objective8_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL28 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover0_general_objective9_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL29 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL56 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint27_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL57 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover0_general_waypoint3_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL58 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover0_general_waypoint26_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL59 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL60 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint21_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL61 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover0_general_waypoint24_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL62 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover0_general_waypoint2_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL63 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL56 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint27_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL57 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover0_general_waypoint3_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL58 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover0_general_waypoint26_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL59 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL60 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint21_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL61 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover0_general_waypoint24_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL62 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover0_general_waypoint2_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL63 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL56 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint27_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL57 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover0_general_waypoint3_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL58 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover0_general_waypoint26_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL59 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL60 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint21_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL61 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover0_general_waypoint24_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL62 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover0_general_waypoint2_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL63 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL56 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint27_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL57 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover0_general_waypoint3_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL58 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover0_general_waypoint26_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL59 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL60 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint21_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL61 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover0_general_waypoint24_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL62 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover0_general_waypoint2_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL63 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL56 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint27_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL57 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover0_general_waypoint3_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL58 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover0_general_waypoint26_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL59 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL60 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint21_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL61 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover0_general_waypoint24_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL62 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover0_general_waypoint2_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL63 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL56 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint27_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL57 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover0_general_waypoint3_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL58 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover0_general_waypoint26_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL59 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL60 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint21_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL61 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover0_general_waypoint24_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL62 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover0_general_waypoint2_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL63 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL56 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint27_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL57 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover0_general_waypoint3_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL58 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover0_general_waypoint26_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL59 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL60 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint21_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL61 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover0_general_waypoint24_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL62 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover0_general_waypoint2_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL63 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL56 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint27_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL57 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover0_general_waypoint3_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL58 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover0_general_waypoint26_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL59 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL60 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint21_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL61 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover0_general_waypoint24_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL62 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover0_general_waypoint2_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL63 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_rock_data_rover0_general_waypoint27_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL64 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover0_general_waypoint7_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL65 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover0_general_waypoint28_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL66 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover0_general_waypoint21_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL67 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover0_general_waypoint24_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL68 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover0_general_waypoint2_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL69 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover0_general_waypoint27_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL64 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover0_general_waypoint7_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL65 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover0_general_waypoint28_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL66 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover0_general_waypoint21_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL67 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover0_general_waypoint24_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL68 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover0_general_waypoint2_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL69 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover0_general_waypoint27_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL64 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover0_general_waypoint7_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL65 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover0_general_waypoint28_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL66 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover0_general_waypoint21_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL67 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover0_general_waypoint24_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL68 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover0_general_waypoint2_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL69 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover0_general_waypoint27_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL64 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover0_general_waypoint7_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL65 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover0_general_waypoint28_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL66 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover0_general_waypoint21_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL67 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover0_general_waypoint24_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL68 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover0_general_waypoint2_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL69 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover0_general_waypoint27_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL64 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover0_general_waypoint7_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL65 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover0_general_waypoint28_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL66 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover0_general_waypoint21_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL67 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover0_general_waypoint24_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL68 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover0_general_waypoint2_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL69 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover0_general_waypoint27_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL64 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover0_general_waypoint7_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL65 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover0_general_waypoint28_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL66 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover0_general_waypoint21_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL67 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover0_general_waypoint24_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL68 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover0_general_waypoint2_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL69 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover0_general_waypoint27_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL64 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover0_general_waypoint7_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL65 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover0_general_waypoint28_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL66 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover0_general_waypoint21_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL67 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover0_general_waypoint24_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL68 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover0_general_waypoint2_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL69 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover0_general_waypoint27_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL64 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover0_general_waypoint7_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL65 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover0_general_waypoint28_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL66 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover0_general_waypoint21_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL67 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover0_general_waypoint24_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL68 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover0_general_waypoint2_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL69 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_lander general waypoint2) (P_ARTIFICIAL70 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL7 ) (at_lander general waypoint2) (P_ARTIFICIAL70 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL8 ) (at_lander general waypoint2) (P_ARTIFICIAL70 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_lander general waypoint2) (P_ARTIFICIAL70 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL13 ) (at_lander general waypoint2) (P_ARTIFICIAL70 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_lander general waypoint2) (P_ARTIFICIAL70 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL17 ) (at_lander general waypoint2) (P_ARTIFICIAL70 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL18 ) (at_lander general waypoint2) (P_ARTIFICIAL70 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL16 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action dummy-init-action-rotemagent1
:precondition 
(and (can-use-init-action rotemagent1))
:effect 
(and (not (can-use-init-action rotemagent1)) (used-init-action rotemagent1) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_rock_sample waypoint2) (at_soil_sample waypoint3) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_rock_sample waypoint5) (at_rock_sample waypoint7) (at_soil_sample waypoint9) (at_rock_sample waypoint11) (at_soil_sample waypoint12) (at_soil_sample waypoint14) (at_rock_sample waypoint14) (at_rock_sample waypoint16) (at_soil_sample waypoint17) (at_soil_sample waypoint18) (at_soil_sample waypoint21) (at_rock_sample waypoint21) (at_rock_sample waypoint23) (at_soil_sample waypoint24) (at_rock_sample waypoint24) (at_rock_sample waypoint25) (at_soil_sample waypoint26) (at_soil_sample waypoint27) (at_rock_sample waypoint27) (at_rock_sample waypoint28) (at_soil_sample waypoint31) (at_rock_sample waypoint31) (at_soil_sample waypoint32) (at_soil_sample waypoint37) (at_soil_sample waypoint38) (at_rock_sample waypoint38) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover1_rover1store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_rock_sample waypoint16) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint16)))
)

(:action sample_soil_rover1_rover1store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1001 ) (at_soil_sample waypoint0) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint0)))
)

(:action sample_soil_rover1_rover1store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_soil_sample waypoint18) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint18)))
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

(:action communicate_rock_data_rover1_general_waypoint16_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1004 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover1_general_waypoint16_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1004 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action sample_soil_rover1_rover1store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_soil_sample waypoint14) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint14)))
)

(:action sample_soil_rover1_rover1store_waypoint37
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_soil_sample waypoint37) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint37)))
)

(:action sample_soil_rover1_rover1store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_soil_sample waypoint3) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint3)))
)

(:action sample_soil_rover1_rover1store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1010 ) (at_soil_sample waypoint9) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint9)))
)

(:action sample_soil_rover1_rover1store_waypoint32
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1011 ) (at_soil_sample waypoint32) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint32)))
)

(:action sample_soil_rover1_rover1store_waypoint38
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1012 ) (at_soil_sample waypoint38) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint38)))
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

(:action sample_soil_rover1_rover1store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_soil_sample waypoint4) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint4)))
)

(:action sample_soil_rover1_rover1store_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1016 ) (at_soil_sample waypoint31) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint31)))
)

(:action sample_soil_rover1_rover1store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_soil_sample waypoint21) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint21)))
)

(:action sample_soil_rover1_rover1store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_soil_sample waypoint2) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint2)))
)

(:action sample_rock_rover1_rover1store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_rock_sample waypoint14) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint14)))
)

(:action sample_rock_rover1_rover1store_waypoint38
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1012 ) (at_rock_sample waypoint38) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint38)))
)

(:action sample_rock_rover1_rover1store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_rock_sample waypoint7) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover1_rover1store_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_rock_sample waypoint27) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint27)))
)

(:action sample_rock_rover1_rover1store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_rock_sample waypoint4) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover1_rover1store_waypoint23
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1020 ) (at_rock_sample waypoint23) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint23)))
)

(:action sample_rock_rover1_rover1store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_rock_sample waypoint25) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint25)))
)

(:action sample_rock_rover1_rover1store_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1016 ) (at_rock_sample waypoint31) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint31)))
)

(:action sample_rock_rover1_rover1store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1017 ) (at_rock_sample waypoint21) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint21)))
)

(:action sample_rock_rover1_rover1store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1018 ) (at_rock_sample waypoint2) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint2)))
)

(:action communicate_soil_data_rover1_general_waypoint0_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1022 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1023 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover1_general_waypoint0_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1022 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1023 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover1_general_waypoint0_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1022 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1023 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover1_general_waypoint0_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1022 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1023 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover1_general_waypoint0_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1022 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1023 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover1_general_waypoint0_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1022 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1023 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_rock_data_rover1_general_waypoint16_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1004 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover1_general_waypoint5_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1025 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover1_general_waypoint16_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1004 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover1_general_waypoint5_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1025 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover1_general_waypoint5_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1025 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover1_general_waypoint16_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1004 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover1_general_waypoint5_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1025 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover1_general_waypoint16_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1004 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover1_general_waypoint5_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1025 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover1_general_waypoint5_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1025 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1026 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1027 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1028 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1029 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1030 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1031 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1032 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1033 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective8_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1034 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover1_general_objective9_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1035 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1036 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1037 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1038 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1039 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1040 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1041 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1042 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1043 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective8_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1044 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover1_general_objective9_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1045 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1046 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1047 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1048 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1049 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1050 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1051 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective6_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1052 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover1_general_objective7_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1053 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover1_general_objective8_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1054 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover1_general_objective9_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1055 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1026 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1027 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1028 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1029 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1030 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1031 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1032 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1033 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective8_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1034 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover1_general_objective9_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1035 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1036 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1037 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1038 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1039 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1040 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1041 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1042 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1043 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective8_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1044 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover1_general_objective9_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1045 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1046 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1047 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1048 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1049 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1050 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1051 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective6_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1052 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover1_general_objective7_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1053 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover1_general_objective8_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1054 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover1_general_objective9_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1055 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1026 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1027 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1028 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1029 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1030 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1031 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1032 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1033 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective8_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1034 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover1_general_objective9_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1035 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1036 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1037 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1038 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1039 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1040 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1041 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1042 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1043 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective8_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1044 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover1_general_objective9_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1045 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1046 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1047 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1048 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1049 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1050 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1051 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective6_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1052 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover1_general_objective7_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1053 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover1_general_objective8_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1054 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover1_general_objective9_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1055 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1026 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1027 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1028 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1029 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1030 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1031 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1032 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1033 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective8_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1034 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover1_general_objective9_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1035 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1036 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1037 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1038 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1039 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1040 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1041 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1042 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1043 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective8_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1044 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover1_general_objective9_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1045 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1046 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1047 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1048 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1049 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1050 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1051 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective6_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1052 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover1_general_objective7_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1053 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover1_general_objective8_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1054 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover1_general_objective9_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1055 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1026 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1027 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1028 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1029 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1030 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1031 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1032 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1033 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective8_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1034 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover1_general_objective9_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1035 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1036 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1037 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1038 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1039 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1040 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1041 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1042 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1043 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective8_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1044 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover1_general_objective9_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1045 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1046 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1047 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1048 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1049 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1050 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1051 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective6_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1052 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover1_general_objective7_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1053 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover1_general_objective8_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1054 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover1_general_objective9_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1055 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1026 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1027 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1028 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1029 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1030 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1031 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1032 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1033 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective8_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1034 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover1_general_objective9_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1035 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1036 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1037 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1038 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1039 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1040 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1041 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1042 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1043 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective8_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1044 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover1_general_objective9_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1045 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1046 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1047 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1048 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1049 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1050 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1051 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective6_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1052 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover1_general_objective7_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1053 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover1_general_objective8_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1054 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover1_general_objective9_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1055 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action sample_soil_rover1_rover1store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1056 ) (at_soil_sample waypoint24) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint24)))
)

(:action sample_soil_rover1_rover1store_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_soil_sample waypoint17) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint17)))
)

(:action sample_soil_rover1_rover1store_waypoint26
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1058 ) (at_soil_sample waypoint26) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint26)))
)

(:action sample_soil_rover1_rover1store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1059 ) (at_soil_sample waypoint1) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint1)))
)

(:action sample_rock_rover1_rover1store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1056 ) (at_rock_sample waypoint24) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint24)))
)

(:action sample_rock_rover1_rover1store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1060 ) (at_rock_sample waypoint11) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint11)))
)

(:action sample_rock_rover1_rover1store_waypoint28
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_rock_sample waypoint28) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_rock_sample waypoint28)))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1062 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover1_general_waypoint37_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1063 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover1_general_waypoint3_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1064 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover1_general_waypoint9_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1065 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover1_general_waypoint32_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1066 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover1_general_waypoint38_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1067 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1068 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1069 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint4_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1070 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover1_general_waypoint31_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1071 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover1_general_waypoint21_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1072 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover1_general_waypoint2_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1073 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1062 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover1_general_waypoint37_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1063 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover1_general_waypoint3_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1064 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover1_general_waypoint9_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1065 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover1_general_waypoint32_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1066 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover1_general_waypoint38_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1067 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1068 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1069 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint4_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1070 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover1_general_waypoint31_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1071 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover1_general_waypoint21_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1072 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover1_general_waypoint2_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1073 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover1_general_waypoint0_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1022 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1023 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1062 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover1_general_waypoint37_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1063 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover1_general_waypoint3_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1064 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover1_general_waypoint9_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1065 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover1_general_waypoint32_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1066 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover1_general_waypoint38_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1067 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1068 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1069 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint4_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1070 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover1_general_waypoint31_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1071 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover1_general_waypoint21_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1072 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover1_general_waypoint2_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1073 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1062 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover1_general_waypoint37_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1063 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover1_general_waypoint3_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1064 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover1_general_waypoint9_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1065 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover1_general_waypoint32_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1066 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover1_general_waypoint38_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1067 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1068 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1069 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint4_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1070 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover1_general_waypoint31_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1071 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover1_general_waypoint21_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1072 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover1_general_waypoint2_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1073 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1062 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover1_general_waypoint37_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1063 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover1_general_waypoint3_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1064 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover1_general_waypoint9_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1065 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover1_general_waypoint32_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1066 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover1_general_waypoint38_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1067 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1068 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1069 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint4_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1070 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover1_general_waypoint31_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1071 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover1_general_waypoint21_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1072 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover1_general_waypoint2_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1073 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover1_general_waypoint0_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1022 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1023 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1062 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover1_general_waypoint37_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1063 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover1_general_waypoint3_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1064 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover1_general_waypoint9_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1065 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover1_general_waypoint32_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1066 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover1_general_waypoint38_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1067 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1068 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1069 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint4_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1070 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover1_general_waypoint31_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1071 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover1_general_waypoint21_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1072 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover1_general_waypoint2_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1073 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1062 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover1_general_waypoint37_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1063 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover1_general_waypoint3_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1064 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover1_general_waypoint9_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1065 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover1_general_waypoint32_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1066 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover1_general_waypoint38_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1067 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1068 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1069 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint4_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1070 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover1_general_waypoint31_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1071 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover1_general_waypoint21_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1072 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover1_general_waypoint2_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1073 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1062 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover1_general_waypoint37_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1063 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover1_general_waypoint3_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1064 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover1_general_waypoint9_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1065 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover1_general_waypoint32_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1066 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover1_general_waypoint38_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1067 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1068 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1069 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint4_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1070 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover1_general_waypoint31_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1071 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover1_general_waypoint21_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1072 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover1_general_waypoint2_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1073 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_rock_data_rover1_general_waypoint14_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1074 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover1_general_waypoint38_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1075 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover1_general_waypoint7_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1076 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover1_general_waypoint27_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1077 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover1_general_waypoint4_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1078 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover1_general_waypoint23_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1079 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover1_general_waypoint25_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1080 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover1_general_waypoint31_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1081 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover1_general_waypoint21_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1082 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover1_general_waypoint2_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1083 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover1_general_waypoint14_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1074 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover1_general_waypoint38_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1075 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover1_general_waypoint7_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1076 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover1_general_waypoint27_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1077 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover1_general_waypoint4_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1078 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover1_general_waypoint23_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1079 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover1_general_waypoint25_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1080 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover1_general_waypoint31_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1081 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover1_general_waypoint21_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1082 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover1_general_waypoint2_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1083 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover1_general_waypoint16_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1004 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover1_general_waypoint5_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1025 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover1_general_waypoint14_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1074 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover1_general_waypoint38_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1075 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover1_general_waypoint7_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1076 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover1_general_waypoint27_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1077 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover1_general_waypoint4_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1078 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover1_general_waypoint23_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1079 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover1_general_waypoint25_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1080 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover1_general_waypoint31_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1081 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover1_general_waypoint21_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1082 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover1_general_waypoint2_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1083 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover1_general_waypoint14_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1074 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover1_general_waypoint38_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1075 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover1_general_waypoint7_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1076 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover1_general_waypoint27_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1077 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover1_general_waypoint4_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1078 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover1_general_waypoint23_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1079 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover1_general_waypoint25_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1080 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover1_general_waypoint31_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1081 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover1_general_waypoint21_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1082 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover1_general_waypoint2_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1083 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover1_general_waypoint14_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1074 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover1_general_waypoint38_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1075 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover1_general_waypoint7_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1076 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover1_general_waypoint27_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1077 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover1_general_waypoint4_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1078 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover1_general_waypoint23_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1079 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover1_general_waypoint25_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1080 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover1_general_waypoint31_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1081 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover1_general_waypoint21_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1082 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover1_general_waypoint2_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1083 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover1_general_waypoint16_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1004 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover1_general_waypoint5_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1025 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover1_general_waypoint14_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1074 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover1_general_waypoint38_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1075 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover1_general_waypoint7_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1076 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover1_general_waypoint27_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1077 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover1_general_waypoint4_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1078 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover1_general_waypoint23_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1079 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover1_general_waypoint25_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1080 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover1_general_waypoint31_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1081 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover1_general_waypoint21_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1082 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover1_general_waypoint2_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1083 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover1_general_waypoint14_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1074 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover1_general_waypoint38_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1075 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover1_general_waypoint7_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1076 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover1_general_waypoint27_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1077 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover1_general_waypoint4_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1078 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover1_general_waypoint23_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1079 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover1_general_waypoint25_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1080 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover1_general_waypoint31_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1081 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover1_general_waypoint21_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1082 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover1_general_waypoint2_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1083 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover1_general_waypoint14_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1074 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover1_general_waypoint38_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1075 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover1_general_waypoint7_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1076 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover1_general_waypoint27_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1077 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover1_general_waypoint4_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1078 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover1_general_waypoint23_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1079 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover1_general_waypoint25_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1080 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover1_general_waypoint31_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1081 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover1_general_waypoint21_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1082 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover1_general_waypoint2_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1083 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1026 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1027 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1028 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1029 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1030 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1031 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1032 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1033 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective8_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1034 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover1_general_objective9_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1035 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1036 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1037 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1038 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1039 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1040 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1041 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1042 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1043 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective8_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1044 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover1_general_objective9_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1045 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1046 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1047 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1048 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1049 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1050 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1051 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective6_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1052 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover1_general_objective7_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1053 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover1_general_objective8_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1054 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover1_general_objective9_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1055 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover1_general_objective0_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1026 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover1_general_objective1_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1027 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover1_general_objective2_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1028 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover1_general_objective3_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1029 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover1_general_objective4_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1030 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover1_general_objective5_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1031 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover1_general_objective6_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1032 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover1_general_objective7_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1033 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover1_general_objective8_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1034 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover1_general_objective9_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1035 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1036 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1037 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1038 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1039 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1040 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1041 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1042 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1043 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective8_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1044 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover1_general_objective9_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1045 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover1_general_objective0_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1046 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover1_general_objective1_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1047 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover1_general_objective2_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1048 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover1_general_objective3_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1049 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover1_general_objective4_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1050 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover1_general_objective5_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1051 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover1_general_objective6_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1052 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover1_general_objective7_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1053 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover1_general_objective8_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1054 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover1_general_objective9_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1055 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_soil_data_rover1_general_waypoint24_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1084 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover1_general_waypoint17_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1085 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1086 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint1_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1087 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover1_general_waypoint24_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1084 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover1_general_waypoint17_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1085 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1086 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint1_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1087 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover1_general_waypoint24_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1084 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover1_general_waypoint17_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1085 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1086 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint1_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1087 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover1_general_waypoint24_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1084 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover1_general_waypoint17_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1085 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1086 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint1_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1087 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover1_general_waypoint24_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1084 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover1_general_waypoint17_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1085 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1086 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint1_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1087 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover1_general_waypoint24_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1084 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover1_general_waypoint17_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1085 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1086 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint1_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1087 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover1_general_waypoint24_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1084 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover1_general_waypoint17_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1085 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1086 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint1_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1087 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover1_general_waypoint24_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1084 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover1_general_waypoint17_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1085 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1086 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint1_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1087 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_rock_data_rover1_general_waypoint24_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1088 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover1_general_waypoint11_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1089 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover1_general_waypoint28_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1019 ) (at_lander general waypoint2) (P_ARTIFICIAL1090 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover1_general_waypoint24_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1088 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover1_general_waypoint11_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1089 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover1_general_waypoint28_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint2) (P_ARTIFICIAL1090 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover1_general_waypoint24_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1088 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover1_general_waypoint11_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1089 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover1_general_waypoint28_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1057 ) (at_lander general waypoint2) (P_ARTIFICIAL1090 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover1_general_waypoint24_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1088 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover1_general_waypoint11_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1089 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover1_general_waypoint28_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_lander general waypoint2) (P_ARTIFICIAL1090 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover1_general_waypoint24_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1088 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover1_general_waypoint11_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1089 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover1_general_waypoint28_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1021 ) (at_lander general waypoint2) (P_ARTIFICIAL1090 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover1_general_waypoint24_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1088 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover1_general_waypoint11_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1089 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover1_general_waypoint28_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1061 ) (at_lander general waypoint2) (P_ARTIFICIAL1090 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover1_general_waypoint24_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1088 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover1_general_waypoint11_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1089 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover1_general_waypoint28_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint2) (P_ARTIFICIAL1090 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover1_general_waypoint24_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1088 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover1_general_waypoint11_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1089 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover1_general_waypoint28_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_lander general waypoint2) (P_ARTIFICIAL1090 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL1005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action dummy-init-action-rotemagent2
:precondition 
(and (can-use-init-action rotemagent2))
:effect 
(and (not (can-use-init-action rotemagent2)) (used-init-action rotemagent2) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_rock_sample waypoint2) (at_soil_sample waypoint3) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_rock_sample waypoint5) (at_rock_sample waypoint7) (at_soil_sample waypoint9) (at_rock_sample waypoint11) (at_soil_sample waypoint12) (at_soil_sample waypoint14) (at_rock_sample waypoint14) (at_rock_sample waypoint16) (at_soil_sample waypoint17) (at_soil_sample waypoint18) (at_soil_sample waypoint21) (at_rock_sample waypoint21) (at_rock_sample waypoint23) (at_soil_sample waypoint24) (at_rock_sample waypoint24) (at_rock_sample waypoint25) (at_soil_sample waypoint26) (at_soil_sample waypoint27) (at_rock_sample waypoint27) (at_rock_sample waypoint28) (at_soil_sample waypoint31) (at_rock_sample waypoint31) (at_soil_sample waypoint32) (at_soil_sample waypoint37) (at_soil_sample waypoint38) (at_rock_sample waypoint38) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover2_rover2store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_rock_sample waypoint5) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint5)))
)

(:action sample_rock_rover2_rover2store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_rock_sample waypoint7) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover2_rover2store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_rock_sample waypoint11) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint11)))
)

(:action sample_rock_rover2_rover2store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_rock_sample waypoint14) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint14)))
)

(:action sample_rock_rover2_rover2store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_rock_sample waypoint16) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint16)))
)

(:action sample_rock_rover2_rover2store_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_rock_sample waypoint27) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint27)))
)

(:action sample_rock_rover2_rover2store_waypoint38
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_rock_sample waypoint38) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint38)))
)

(:action sample_rock_rover2_rover2store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_rock_sample waypoint2) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint2)))
)

(:action sample_rock_rover2_rover2store_waypoint23
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_rock_sample waypoint23) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint23)))
)

(:action sample_rock_rover2_rover2store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_rock_sample waypoint4) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover2_rover2store_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_rock_sample waypoint31) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint31)))
)

(:action sample_rock_rover2_rover2store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_rock_sample waypoint24) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint24)))
)

(:action drop_rover2_rover2store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover2store))
:effect 
(and (not (full rover2store)) (empty rover2store))
)

(:action communicate_rock_data_rover2_general_waypoint5_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2012 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2014 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2015 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2016 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover2_general_waypoint5_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2012 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2014 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2015 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2016 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover2_general_waypoint5_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2012 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2014 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2015 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2016 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover2_general_waypoint5_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2012 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2014 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2015 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2016 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover2_general_waypoint5_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2012 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2014 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2015 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2016 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover2_general_waypoint5_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2012 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2014 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2015 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2016 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2021 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2022 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2023 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2024 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2025 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2026 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2027 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2028 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective8_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2029 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover2_general_objective9_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2030 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2031 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2032 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2033 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2034 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2035 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2036 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2037 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2038 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective8_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2039 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover2_general_objective9_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2040 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2041 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2042 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2043 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2044 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2045 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2046 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2047 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2048 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective8_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2049 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover2_general_objective9_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2050 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2021 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2022 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2023 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2024 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2025 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2026 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2027 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2028 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective8_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2029 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover2_general_objective9_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2030 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2031 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2032 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2033 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2034 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2035 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2036 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2037 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2038 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective8_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2039 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover2_general_objective9_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2040 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2041 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2042 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2043 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2044 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2045 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2046 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2047 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2048 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective8_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2049 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover2_general_objective9_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2050 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2021 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2022 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2023 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2024 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2025 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2026 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2027 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2028 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective8_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2029 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover2_general_objective9_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2030 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2031 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2032 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2033 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2034 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2035 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2036 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2037 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2038 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective8_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2039 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover2_general_objective9_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2040 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2041 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2042 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2043 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2044 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2045 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2046 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2047 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2048 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective8_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2049 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover2_general_objective9_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2050 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2021 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2022 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2023 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2024 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2025 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2026 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2027 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2028 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective8_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2029 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover2_general_objective9_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2030 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2031 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2032 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2033 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2034 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2035 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2036 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2037 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2038 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective8_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2039 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover2_general_objective9_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2040 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2041 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2042 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2043 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2044 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2045 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2046 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2047 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2048 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective8_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2049 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover2_general_objective9_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2050 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2021 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2022 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2023 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2024 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2025 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2026 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2027 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2028 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective8_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2029 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover2_general_objective9_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2030 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2031 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2032 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2033 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2034 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2035 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2036 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2037 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2038 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective8_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2039 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover2_general_objective9_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2040 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2041 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2042 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2043 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2044 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2045 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2046 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2047 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2048 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective8_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2049 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover2_general_objective9_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2050 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2021 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2022 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2023 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2024 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2025 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2026 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2027 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2028 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective8_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2029 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover2_general_objective9_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2030 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2031 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2032 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2033 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2034 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2035 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2036 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2037 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2038 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective8_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2039 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover2_general_objective9_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2040 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2041 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2042 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2043 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2044 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2045 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2046 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2047 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2048 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective8_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2049 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover2_general_objective9_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2050 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action sample_rock_rover2_rover2store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_rock_sample waypoint25) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint25)))
)

(:action sample_rock_rover2_rover2store_waypoint28
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_rock_sample waypoint28) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint28)))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2053 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint27_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2054 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover2_general_waypoint38_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2055 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover2_general_waypoint2_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2056 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover2_general_waypoint23_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2057 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2058 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint31_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2059 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2060 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2053 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint27_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2054 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover2_general_waypoint38_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2055 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover2_general_waypoint2_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2056 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover2_general_waypoint23_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2057 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2058 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint31_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2059 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2060 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2053 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint27_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2054 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover2_general_waypoint38_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2055 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover2_general_waypoint2_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2056 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover2_general_waypoint23_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2057 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2058 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint31_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2059 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2060 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2053 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint27_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2054 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover2_general_waypoint38_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2055 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover2_general_waypoint2_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2056 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover2_general_waypoint23_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2057 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2058 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint31_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2059 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2060 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint5_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2012 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2014 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2015 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2016 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2053 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint27_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2054 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover2_general_waypoint38_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2055 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover2_general_waypoint2_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2056 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover2_general_waypoint23_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2057 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2058 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint31_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2059 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2060 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint5_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2012 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2014 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2015 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint14_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2016 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2053 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint27_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2054 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover2_general_waypoint38_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2055 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover2_general_waypoint2_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2056 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover2_general_waypoint23_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2057 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2058 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint31_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2059 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2060 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2053 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint27_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2054 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover2_general_waypoint38_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2055 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover2_general_waypoint2_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2056 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover2_general_waypoint23_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2057 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2058 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint31_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2059 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2060 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2053 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint27_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2054 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover2_general_waypoint38_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2055 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover2_general_waypoint2_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2056 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover2_general_waypoint23_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2057 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover2_general_waypoint4_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2058 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover2_general_waypoint31_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2059 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2060 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2021 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2022 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2023 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2024 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2025 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2026 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2027 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2028 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective8_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2029 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover2_general_objective9_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2030 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2031 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2032 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2033 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2034 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2035 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2036 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2037 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2038 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective8_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2039 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover2_general_objective9_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2040 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2041 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2042 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2043 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2044 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2045 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2046 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2047 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2048 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective8_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2049 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover2_general_objective9_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2050 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2021 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2022 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2023 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2024 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2025 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2026 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2027 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2028 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective8_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2029 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover2_general_objective9_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2030 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2031 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2032 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2033 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2034 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2035 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2036 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2037 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2038 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective8_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2039 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover2_general_objective9_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2040 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2041 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2042 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2043 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2044 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2045 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2046 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2047 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2048 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective8_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2049 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover2_general_objective9_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2050 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_rock_data_rover2_general_waypoint25_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2061 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint2) (P_ARTIFICIAL2062 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint25_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2061 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint2) (P_ARTIFICIAL2062 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint25_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2061 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_lander general waypoint2) (P_ARTIFICIAL2062 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint25_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2061 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_lander general waypoint2) (P_ARTIFICIAL2062 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint25_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2061 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_lander general waypoint2) (P_ARTIFICIAL2062 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint25_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2061 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint2) (P_ARTIFICIAL2062 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint25_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2061 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2019 ) (at_lander general waypoint2) (P_ARTIFICIAL2062 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint25_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2061 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2020 ) (at_lander general waypoint2) (P_ARTIFICIAL2062 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL2013 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action dummy-init-action-rotemagent3
:precondition 
(and (can-use-init-action rotemagent3))
:effect 
(and (not (can-use-init-action rotemagent3)) (used-init-action rotemagent3) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_rock_sample waypoint2) (at_soil_sample waypoint3) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_rock_sample waypoint5) (at_rock_sample waypoint7) (at_soil_sample waypoint9) (at_rock_sample waypoint11) (at_soil_sample waypoint12) (at_soil_sample waypoint14) (at_rock_sample waypoint14) (at_rock_sample waypoint16) (at_soil_sample waypoint17) (at_soil_sample waypoint18) (at_soil_sample waypoint21) (at_rock_sample waypoint21) (at_rock_sample waypoint23) (at_soil_sample waypoint24) (at_rock_sample waypoint24) (at_rock_sample waypoint25) (at_soil_sample waypoint26) (at_soil_sample waypoint27) (at_rock_sample waypoint27) (at_rock_sample waypoint28) (at_soil_sample waypoint31) (at_rock_sample waypoint31) (at_soil_sample waypoint32) (at_soil_sample waypoint37) (at_soil_sample waypoint38) (at_rock_sample waypoint38) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover3_rover3store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_soil_sample waypoint4) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint4)))
)

(:action sample_soil_rover3_rover3store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_soil_sample waypoint12) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint12)))
)

(:action drop_rover3_rover3store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover3store))
:effect 
(and (not (full rover3store)) (empty rover3store))
)

(:action sample_soil_rover3_rover3store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_soil_sample waypoint3) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint3)))
)

(:action sample_soil_rover3_rover3store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_soil_sample waypoint9) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint9)))
)

(:action sample_soil_rover3_rover3store_waypoint32
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_soil_sample waypoint32) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint32)))
)

(:action sample_soil_rover3_rover3store_waypoint38
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_soil_sample waypoint38) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint38)))
)

(:action sample_soil_rover3_rover3store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_soil_sample waypoint1) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint1)))
)

(:action sample_soil_rover3_rover3store_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_soil_sample waypoint17) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint17)))
)

(:action sample_soil_rover3_rover3store_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3008 ) (at_soil_sample waypoint27) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint27)))
)

(:action sample_soil_rover3_rover3store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_soil_sample waypoint14) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint14)))
)

(:action sample_soil_rover3_rover3store_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_soil_sample waypoint31) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint31)))
)

(:action sample_soil_rover3_rover3store_waypoint37
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_soil_sample waypoint37) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint37)))
)

(:action sample_soil_rover3_rover3store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_soil_sample waypoint24) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint24)))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3013 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3015 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3013 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3015 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3013 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3015 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3013 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3015 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3013 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3015 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3019 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3020 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3021 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3022 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3023 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3024 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective7_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3025 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover3_general_objective8_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3026 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover3_general_objective9_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3027 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3028 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3029 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3030 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3031 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3032 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3033 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3034 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective8_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3035 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover3_general_objective9_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3036 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3019 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3020 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3021 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3022 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3023 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3024 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective7_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3025 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover3_general_objective8_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3026 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover3_general_objective9_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3027 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3028 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3029 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3030 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3031 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3032 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3033 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3034 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective8_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3035 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover3_general_objective9_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3036 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3019 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3020 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3021 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3022 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3023 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3024 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective7_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3025 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover3_general_objective8_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3026 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover3_general_objective9_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3027 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3028 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3029 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3030 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3031 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3032 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3033 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3034 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective8_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3035 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover3_general_objective9_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3036 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3019 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3020 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3021 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3022 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3023 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3024 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective7_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3025 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover3_general_objective8_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3026 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover3_general_objective9_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3027 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3028 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3029 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3030 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3031 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3032 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3033 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3034 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective8_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3035 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover3_general_objective9_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3036 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3019 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3020 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3021 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3022 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3023 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3024 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective7_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3025 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover3_general_objective8_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3026 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover3_general_objective9_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3027 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3028 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3029 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3030 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3031 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3032 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3033 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3034 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective8_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3035 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover3_general_objective9_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3036 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action sample_soil_rover3_rover3store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_soil_sample waypoint0) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint0)))
)

(:action sample_soil_rover3_rover3store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_soil_sample waypoint18) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint18)))
)

(:action sample_soil_rover3_rover3store_waypoint26
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3039 ) (at_soil_sample waypoint26) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint26)))
)

(:action sample_soil_rover3_rover3store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3040 ) (at_soil_sample waypoint21) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint21)))
)

(:action sample_soil_rover3_rover3store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3041 ) (at_soil_sample waypoint2) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint2)))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3013 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3015 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3043 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint9_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3044 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover3_general_waypoint32_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3045 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover3_general_waypoint38_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3046 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3047 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3048 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover3_general_waypoint27_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3049 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover3_general_waypoint14_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3050 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover3_general_waypoint31_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3051 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover3_general_waypoint37_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3052 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3053 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3043 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint9_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3044 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover3_general_waypoint32_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3045 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover3_general_waypoint38_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3046 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3047 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3048 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover3_general_waypoint27_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3049 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover3_general_waypoint14_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3050 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover3_general_waypoint31_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3051 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover3_general_waypoint37_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3052 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3053 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3043 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint9_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3044 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover3_general_waypoint32_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3045 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover3_general_waypoint38_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3046 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3047 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3048 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover3_general_waypoint27_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3049 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover3_general_waypoint14_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3050 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover3_general_waypoint31_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3051 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover3_general_waypoint37_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3052 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3053 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3013 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3015 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3043 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint9_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3044 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover3_general_waypoint32_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3045 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover3_general_waypoint38_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3046 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3047 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3048 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover3_general_waypoint27_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3049 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover3_general_waypoint14_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3050 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover3_general_waypoint31_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3051 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover3_general_waypoint37_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3052 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3053 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3043 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint9_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3044 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover3_general_waypoint32_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3045 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover3_general_waypoint38_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3046 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3047 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3048 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover3_general_waypoint27_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3049 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover3_general_waypoint14_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3050 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover3_general_waypoint31_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3051 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover3_general_waypoint37_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3052 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3053 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint4_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3013 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3015 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3043 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint9_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3044 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover3_general_waypoint32_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3045 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover3_general_waypoint38_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3046 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3047 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3048 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover3_general_waypoint27_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3049 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover3_general_waypoint14_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3050 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover3_general_waypoint31_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3051 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover3_general_waypoint37_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3052 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3053 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3043 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint9_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3044 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover3_general_waypoint32_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3045 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover3_general_waypoint38_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3046 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3047 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3048 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover3_general_waypoint27_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3049 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover3_general_waypoint14_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3050 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover3_general_waypoint31_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3051 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover3_general_waypoint37_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3052 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3053 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover3_general_waypoint3_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3043 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover3_general_waypoint9_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3044 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover3_general_waypoint32_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3045 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover3_general_waypoint38_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3046 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover3_general_waypoint1_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3047 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover3_general_waypoint17_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3048 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover3_general_waypoint27_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3049 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover3_general_waypoint14_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3050 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover3_general_waypoint31_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3051 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover3_general_waypoint37_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3052 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover3_general_waypoint24_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3053 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3019 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3020 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3021 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3022 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3023 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3024 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective7_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3025 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover3_general_objective8_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3026 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover3_general_objective9_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3027 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3028 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3029 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3030 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3031 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3032 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3033 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3034 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective8_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3035 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover3_general_objective9_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3036 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3019 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3020 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3021 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3022 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3023 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3024 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective7_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3025 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover3_general_objective8_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3026 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover3_general_objective9_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3027 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3028 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3029 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3030 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3031 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3032 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3033 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3034 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective8_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3035 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover3_general_objective9_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3036 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover3_general_objective1_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3019 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover3_general_objective2_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3020 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover3_general_objective3_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3021 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover3_general_objective4_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3022 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover3_general_objective5_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3023 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover3_general_objective6_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3024 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover3_general_objective7_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3025 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover3_general_objective8_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3026 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover3_general_objective9_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3027 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3028 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3029 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3030 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3031 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3032 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3033 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3034 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective8_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3035 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover3_general_objective9_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3036 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3055 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3056 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint26_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3057 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover3_general_waypoint21_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3058 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3059 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3055 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3056 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint26_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3057 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover3_general_waypoint21_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3058 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3059 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3055 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3056 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint26_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3057 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover3_general_waypoint21_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3058 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3059 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3055 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3056 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint26_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3057 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover3_general_waypoint21_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3058 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3059 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3055 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3056 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint26_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3057 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover3_general_waypoint21_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3058 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3059 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3055 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3056 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint26_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3057 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover3_general_waypoint21_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3058 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3059 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3055 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3056 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint26_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3057 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover3_general_waypoint21_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3058 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3059 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3055 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3056 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint26_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3057 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover3_general_waypoint21_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3058 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover3_general_waypoint2_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3059 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3060 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3042 ) (at_lander general waypoint2) (P_ARTIFICIAL3061 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3060 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_lander general waypoint2) (P_ARTIFICIAL3061 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3060 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3007 ) (at_lander general waypoint2) (P_ARTIFICIAL3061 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3060 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3038 ) (at_lander general waypoint2) (P_ARTIFICIAL3061 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3060 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_lander general waypoint2) (P_ARTIFICIAL3061 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3060 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3054 ) (at_lander general waypoint2) (P_ARTIFICIAL3061 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3060 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_lander general waypoint2) (P_ARTIFICIAL3061 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective0_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3060 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_lander general waypoint2) (P_ARTIFICIAL3061 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL3014 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action dummy-init-action-rotemagent4
:precondition 
(and (can-use-init-action rotemagent4))
:effect 
(and (not (can-use-init-action rotemagent4)) (used-init-action rotemagent4) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_rock_sample waypoint2) (at_soil_sample waypoint3) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_rock_sample waypoint5) (at_rock_sample waypoint7) (at_soil_sample waypoint9) (at_rock_sample waypoint11) (at_soil_sample waypoint12) (at_soil_sample waypoint14) (at_rock_sample waypoint14) (at_rock_sample waypoint16) (at_soil_sample waypoint17) (at_soil_sample waypoint18) (at_soil_sample waypoint21) (at_rock_sample waypoint21) (at_rock_sample waypoint23) (at_soil_sample waypoint24) (at_rock_sample waypoint24) (at_rock_sample waypoint25) (at_soil_sample waypoint26) (at_soil_sample waypoint27) (at_rock_sample waypoint27) (at_rock_sample waypoint28) (at_soil_sample waypoint31) (at_rock_sample waypoint31) (at_soil_sample waypoint32) (at_soil_sample waypoint37) (at_soil_sample waypoint38) (at_rock_sample waypoint38) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover4_rover4store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_soil_sample waypoint0) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint0)))
)

(:action sample_soil_rover4_rover4store_waypoint3
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4001 ) (at_soil_sample waypoint3) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint3)))
)

(:action sample_soil_rover4_rover4store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_soil_sample waypoint14) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint14)))
)

(:action sample_rock_rover4_rover4store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_rock_sample waypoint14) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint14)))
)

(:action sample_rock_rover4_rover4store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_rock_sample waypoint16) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint16)))
)

(:action drop_rover4_rover4store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover4store))
:effect 
(and (not (full rover4store)) (empty rover4store))
)

(:action communicate_soil_data_rover4_general_waypoint0_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4004 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action sample_soil_rover4_rover4store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4006 ) (at_soil_sample waypoint12) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover4_rover4store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_soil_sample waypoint18) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint18)))
)

(:action sample_soil_rover4_rover4store_waypoint1
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_soil_sample waypoint1) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint1)))
)

(:action sample_soil_rover4_rover4store_waypoint17
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_soil_sample waypoint17) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint17)))
)

(:action sample_soil_rover4_rover4store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_soil_sample waypoint24) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint24)))
)

(:action sample_soil_rover4_rover4store_waypoint26
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_soil_sample waypoint26) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint26)))
)

(:action sample_soil_rover4_rover4store_waypoint32
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_soil_sample waypoint32) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint32)))
)

(:action sample_soil_rover4_rover4store_waypoint38
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_soil_sample waypoint38) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint38)))
)

(:action sample_rock_rover4_rover4store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_rock_sample waypoint5) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint5)))
)

(:action sample_rock_rover4_rover4store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_rock_sample waypoint7) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover4_rover4store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_rock_sample waypoint24) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint24)))
)

(:action sample_rock_rover4_rover4store_waypoint38
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_rock_sample waypoint38) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint38)))
)

(:action communicate_soil_data_rover4_general_waypoint0_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4004 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover4_general_waypoint3_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4016 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover4_general_waypoint14_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4017 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover4_general_waypoint3_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4016 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover4_general_waypoint14_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4017 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover4_general_waypoint0_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4004 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover4_general_waypoint3_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4016 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover4_general_waypoint14_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4017 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover4_general_waypoint0_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4004 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover4_general_waypoint3_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4016 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover4_general_waypoint14_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4017 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover4_general_waypoint0_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4004 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover4_general_waypoint3_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4016 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover4_general_waypoint14_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4017 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4019 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4020 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4019 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4020 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4019 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4020 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4019 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4020 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4019 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4020 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4021 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4022 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4023 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4024 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4025 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4026 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4027 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4028 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective8_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4029 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover4_general_objective9_colour_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4030 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4031 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4032 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4033 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4034 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4035 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4036 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4037 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4038 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective8_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4039 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover4_general_objective9_high_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4040 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4041 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4042 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4043 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4044 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4045 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4046 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4047 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4048 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective8_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4049 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover4_general_objective9_low_res_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4050 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4021 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4022 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4023 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4024 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4025 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4026 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4027 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4028 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective8_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4029 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover4_general_objective9_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4030 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4031 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4032 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4033 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4034 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4035 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4036 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4037 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4038 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective8_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4039 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover4_general_objective9_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4040 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4041 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4042 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4043 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4044 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4045 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4046 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4047 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4048 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective8_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4049 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover4_general_objective9_low_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4050 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4021 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4022 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4023 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4024 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4025 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4026 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4027 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4028 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective8_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4029 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover4_general_objective9_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4030 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4031 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4032 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4033 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4034 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4035 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4036 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4037 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4038 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective8_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4039 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover4_general_objective9_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4040 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4041 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4042 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4043 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4044 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4045 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4046 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4047 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4048 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective8_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4049 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover4_general_objective9_low_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4050 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4021 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4022 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4023 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4024 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4025 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4026 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4027 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4028 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective8_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4029 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover4_general_objective9_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4030 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4031 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4032 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4033 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4034 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4035 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4036 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4037 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4038 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective8_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4039 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover4_general_objective9_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4040 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4041 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4042 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4043 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4044 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4045 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4046 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4047 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4048 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective8_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4049 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover4_general_objective9_low_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4050 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4021 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4022 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4023 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4024 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4025 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4026 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4027 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4028 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective8_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4029 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover4_general_objective9_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4030 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4031 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4032 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4033 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4034 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4035 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4036 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4037 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4038 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective8_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4039 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover4_general_objective9_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4040 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4041 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4042 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4043 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4044 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4045 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4046 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4047 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4048 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective8_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4049 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover4_general_objective9_low_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4050 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action sample_soil_rover4_rover4store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4051 ) (at_soil_sample waypoint4) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint4)))
)

(:action sample_soil_rover4_rover4store_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4052 ) (at_soil_sample waypoint27) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint27)))
)

(:action sample_soil_rover4_rover4store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4053 ) (at_soil_sample waypoint2) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint2)))
)

(:action sample_soil_rover4_rover4store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4054 ) (at_soil_sample waypoint9) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint9)))
)

(:action sample_soil_rover4_rover4store_waypoint37
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4055 ) (at_soil_sample waypoint37) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint37)))
)

(:action sample_soil_rover4_rover4store_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4056 ) (at_soil_sample waypoint31) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint31)))
)

(:action sample_soil_rover4_rover4store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4057 ) (at_soil_sample waypoint21) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_soil_sample waypoint21)))
)

(:action sample_rock_rover4_rover4store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4051 ) (at_rock_sample waypoint4) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover4_rover4store_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4052 ) (at_rock_sample waypoint27) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint27)))
)

(:action sample_rock_rover4_rover4store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4053 ) (at_rock_sample waypoint2) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint2)))
)

(:action sample_rock_rover4_rover4store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_rock_sample waypoint25) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint25)))
)

(:action sample_rock_rover4_rover4store_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4056 ) (at_rock_sample waypoint31) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint31)))
)

(:action sample_rock_rover4_rover4store_waypoint28
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_rock_sample waypoint28) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint28)))
)

(:action sample_rock_rover4_rover4store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4057 ) (at_rock_sample waypoint21) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint21)))
)

(:action sample_rock_rover4_rover4store_waypoint23
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4060 ) (at_rock_sample waypoint23) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint23)))
)

(:action communicate_soil_data_rover4_general_waypoint12_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4061 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover4_general_waypoint18_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4062 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover4_general_waypoint1_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4063 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover4_general_waypoint17_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4064 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover4_general_waypoint24_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4065 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover4_general_waypoint26_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4066 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover4_general_waypoint32_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4067 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover4_general_waypoint38_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4068 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover4_general_waypoint12_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4061 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover4_general_waypoint18_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4062 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover4_general_waypoint1_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4063 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover4_general_waypoint17_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4064 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover4_general_waypoint24_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4065 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover4_general_waypoint26_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4066 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover4_general_waypoint32_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4067 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover4_general_waypoint38_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4068 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover4_general_waypoint12_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4061 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover4_general_waypoint18_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4062 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover4_general_waypoint1_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4063 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover4_general_waypoint17_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4064 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover4_general_waypoint24_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4065 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover4_general_waypoint26_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4066 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover4_general_waypoint32_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4067 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover4_general_waypoint38_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4068 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover4_general_waypoint12_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4061 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover4_general_waypoint18_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4062 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover4_general_waypoint1_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4063 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover4_general_waypoint17_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4064 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover4_general_waypoint24_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4065 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover4_general_waypoint26_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4066 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover4_general_waypoint32_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4067 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover4_general_waypoint38_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4068 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover4_general_waypoint0_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4004 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover4_general_waypoint3_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4016 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover4_general_waypoint14_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4017 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover4_general_waypoint12_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4061 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover4_general_waypoint18_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4062 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover4_general_waypoint1_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4063 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover4_general_waypoint17_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4064 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover4_general_waypoint24_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4065 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover4_general_waypoint26_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4066 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover4_general_waypoint32_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4067 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover4_general_waypoint38_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4068 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover4_general_waypoint0_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4004 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover4_general_waypoint3_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4016 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover4_general_waypoint14_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4017 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover4_general_waypoint12_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4061 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover4_general_waypoint18_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4062 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover4_general_waypoint1_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4063 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover4_general_waypoint17_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4064 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover4_general_waypoint24_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4065 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover4_general_waypoint26_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4066 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover4_general_waypoint32_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4067 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover4_general_waypoint38_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4068 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover4_general_waypoint0_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4004 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover4_general_waypoint3_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4016 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint3))
)

(:action communicate_soil_data_rover4_general_waypoint14_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4017 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover4_general_waypoint12_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4061 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover4_general_waypoint18_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4062 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover4_general_waypoint1_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4063 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover4_general_waypoint17_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4064 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover4_general_waypoint24_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4065 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover4_general_waypoint26_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4066 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover4_general_waypoint32_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4067 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover4_general_waypoint38_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4068 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_soil_data_rover4_general_waypoint12_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4061 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover4_general_waypoint18_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4062 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover4_general_waypoint1_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4063 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint1))
)

(:action communicate_soil_data_rover4_general_waypoint17_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4064 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint17))
)

(:action communicate_soil_data_rover4_general_waypoint24_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4065 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint24))
)

(:action communicate_soil_data_rover4_general_waypoint26_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4066 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover4_general_waypoint32_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4067 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint32))
)

(:action communicate_soil_data_rover4_general_waypoint38_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4068 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint38))
)

(:action communicate_rock_data_rover4_general_waypoint5_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4070 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4071 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4072 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint38_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4073 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover4_general_waypoint5_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4070 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4071 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4072 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint38_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4073 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover4_general_waypoint5_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4070 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4071 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4072 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint38_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4073 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover4_general_waypoint5_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4070 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4071 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4072 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint38_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4073 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4019 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4020 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint5_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4070 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4071 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4072 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint38_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4073 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4019 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4020 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint5_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4070 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4071 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4072 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint38_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4073 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover4_general_waypoint14_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4019 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4020 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint5_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4070 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4071 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4072 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint38_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4073 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover4_general_waypoint5_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4070 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4071 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4072 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint38_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4073 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4021 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4022 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4023 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4024 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4025 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4026 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4027 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4028 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective8_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4029 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover4_general_objective9_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4030 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4031 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4032 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4033 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4034 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4035 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4036 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4037 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4038 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective8_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4039 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover4_general_objective9_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4040 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4041 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4042 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4043 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4044 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4045 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4046 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4047 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4048 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective8_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4049 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover4_general_objective9_low_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4050 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4021 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4022 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4023 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4024 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4025 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4026 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4027 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4028 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective8_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4029 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover4_general_objective9_colour_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4030 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4031 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4032 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4033 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4034 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4035 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4036 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4037 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4038 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective8_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4039 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover4_general_objective9_high_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4040 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4041 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4042 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4043 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4044 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4045 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4046 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4047 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4048 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective8_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4049 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover4_general_objective9_low_res_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4050 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4021 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4022 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4023 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4024 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4025 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4026 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4027 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4028 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective8_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4029 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover4_general_objective9_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4030 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4031 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4032 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4033 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4034 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4035 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4036 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4037 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4038 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective8_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4039 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover4_general_objective9_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4040 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4041 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4042 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4043 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4044 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4045 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4046 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4047 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4048 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective8_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4049 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 low_res))
)

(:action communicate_image_data_rover4_general_objective9_low_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4050 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 low_res))
)

(:action sample_rock_rover4_rover4store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4074 ) (at_rock_sample waypoint11) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint11)))
)

(:action communicate_soil_data_rover4_general_waypoint4_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4075 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover4_general_waypoint27_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4076 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover4_general_waypoint2_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4077 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover4_general_waypoint9_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4078 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover4_general_waypoint37_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4079 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover4_general_waypoint31_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4080 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover4_general_waypoint21_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4081 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover4_general_waypoint4_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4075 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover4_general_waypoint27_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4076 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover4_general_waypoint2_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4077 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover4_general_waypoint9_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4078 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover4_general_waypoint37_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4079 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover4_general_waypoint31_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4080 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover4_general_waypoint21_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4081 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover4_general_waypoint4_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4075 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover4_general_waypoint27_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4076 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover4_general_waypoint2_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4077 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover4_general_waypoint9_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4078 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover4_general_waypoint37_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4079 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover4_general_waypoint31_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4080 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover4_general_waypoint21_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4081 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover4_general_waypoint4_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4075 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover4_general_waypoint27_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4076 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover4_general_waypoint2_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4077 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover4_general_waypoint9_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4078 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover4_general_waypoint37_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4079 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover4_general_waypoint31_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4080 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover4_general_waypoint21_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4081 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover4_general_waypoint4_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4075 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover4_general_waypoint27_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4076 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover4_general_waypoint2_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4077 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover4_general_waypoint9_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4078 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover4_general_waypoint37_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4079 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover4_general_waypoint31_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4080 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover4_general_waypoint21_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4081 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover4_general_waypoint4_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4075 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover4_general_waypoint27_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4076 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover4_general_waypoint2_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4077 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover4_general_waypoint9_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4078 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover4_general_waypoint37_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4079 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover4_general_waypoint31_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4080 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover4_general_waypoint21_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4081 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover4_general_waypoint4_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4075 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover4_general_waypoint27_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4076 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover4_general_waypoint2_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4077 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover4_general_waypoint9_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4078 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover4_general_waypoint37_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4079 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover4_general_waypoint31_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4080 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover4_general_waypoint21_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4081 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_soil_data_rover4_general_waypoint4_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4075 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint4))
)

(:action communicate_soil_data_rover4_general_waypoint27_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4076 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover4_general_waypoint2_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4077 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint2))
)

(:action communicate_soil_data_rover4_general_waypoint9_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4078 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint9))
)

(:action communicate_soil_data_rover4_general_waypoint37_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4079 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint37))
)

(:action communicate_soil_data_rover4_general_waypoint31_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4080 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint31))
)

(:action communicate_soil_data_rover4_general_waypoint21_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4081 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4082 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint27_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4083 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover4_general_waypoint2_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4084 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover4_general_waypoint25_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4085 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover4_general_waypoint31_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4086 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4087 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4088 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint23_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4089 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4082 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint27_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4083 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover4_general_waypoint2_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4084 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover4_general_waypoint25_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4085 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover4_general_waypoint31_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4086 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4087 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4088 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint23_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4089 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4082 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint27_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4083 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover4_general_waypoint2_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4084 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover4_general_waypoint25_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4085 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover4_general_waypoint31_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4086 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4087 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4088 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint23_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4089 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4082 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint27_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4083 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover4_general_waypoint2_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4084 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover4_general_waypoint25_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4085 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover4_general_waypoint31_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4086 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4087 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4088 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint23_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4089 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4082 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint27_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4083 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover4_general_waypoint2_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4084 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover4_general_waypoint25_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4085 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover4_general_waypoint31_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4086 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4087 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4088 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint23_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4089 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4082 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint27_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4083 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover4_general_waypoint2_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4084 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover4_general_waypoint25_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4085 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover4_general_waypoint31_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4086 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4087 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4088 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint23_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4089 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4082 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint27_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4083 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover4_general_waypoint2_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4084 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover4_general_waypoint25_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4085 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover4_general_waypoint31_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4086 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4087 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4088 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint23_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4089 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover4_general_waypoint4_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4082 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover4_general_waypoint27_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4083 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover4_general_waypoint2_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4084 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover4_general_waypoint25_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4085 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover4_general_waypoint31_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4086 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4087 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint21_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4088 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover4_general_waypoint23_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4089 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint7_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint2) (P_ARTIFICIAL4090 ) (visible waypoint7 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_lander general waypoint2) (P_ARTIFICIAL4090 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_lander general waypoint2) (P_ARTIFICIAL4090 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint2) (P_ARTIFICIAL4090 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4058 ) (at_lander general waypoint2) (P_ARTIFICIAL4090 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint28_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4059 ) (at_lander general waypoint2) (P_ARTIFICIAL4090 ) (visible waypoint28 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4069 ) (at_lander general waypoint2) (P_ARTIFICIAL4090 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4018 ) (at_lander general waypoint2) (P_ARTIFICIAL4090 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action dummy-init-action-rotemagent5
:precondition 
(and (can-use-init-action rotemagent5))
:effect 
(and (not (can-use-init-action rotemagent5)) (used-init-action rotemagent5) (at_soil_sample waypoint0) (at_soil_sample waypoint1) (at_soil_sample waypoint2) (at_rock_sample waypoint2) (at_soil_sample waypoint3) (at_soil_sample waypoint4) (at_rock_sample waypoint4) (at_rock_sample waypoint5) (at_rock_sample waypoint7) (at_soil_sample waypoint9) (at_rock_sample waypoint11) (at_soil_sample waypoint12) (at_soil_sample waypoint14) (at_rock_sample waypoint14) (at_rock_sample waypoint16) (at_soil_sample waypoint17) (at_soil_sample waypoint18) (at_soil_sample waypoint21) (at_rock_sample waypoint21) (at_rock_sample waypoint23) (at_soil_sample waypoint24) (at_rock_sample waypoint24) (at_rock_sample waypoint25) (at_soil_sample waypoint26) (at_soil_sample waypoint27) (at_rock_sample waypoint27) (at_rock_sample waypoint28) (at_soil_sample waypoint31) (at_rock_sample waypoint31) (at_soil_sample waypoint32) (at_soil_sample waypoint37) (at_soil_sample waypoint38) (at_rock_sample waypoint38) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover5_rover5store_waypoint4
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_rock_sample waypoint4) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint4)))
)

(:action sample_rock_rover5_rover5store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_rock_sample waypoint14) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint14)))
)

(:action sample_rock_rover5_rover5store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_rock_sample waypoint16) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint16)))
)

(:action drop_rover5_rover5store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover5store))
:effect 
(and (not (full rover5store)) (empty rover5store))
)

(:action communicate_rock_data_rover5_general_waypoint4_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5003 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5005 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5006 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5007 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5008 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5009 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5010 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5011 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5012 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective8_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5013 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover5_general_objective9_colour_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5014 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5015 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5016 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5017 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5018 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5019 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5020 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5021 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5022 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective8_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5023 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover5_general_objective9_high_res_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5024 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action sample_rock_rover5_rover5store_waypoint21
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_rock_sample waypoint21) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint21)))
)

(:action sample_rock_rover5_rover5store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5026 ) (at_rock_sample waypoint24) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint24)))
)

(:action sample_rock_rover5_rover5store_waypoint38
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5027 ) (at_rock_sample waypoint38) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint38)))
)

(:action sample_rock_rover5_rover5store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5028 ) (at_rock_sample waypoint5) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint5)))
)

(:action sample_rock_rover5_rover5store_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5029 ) (at_rock_sample waypoint2) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint2)))
)

(:action sample_rock_rover5_rover5store_waypoint23
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5030 ) (at_rock_sample waypoint23) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint23)))
)

(:action sample_rock_rover5_rover5store_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5031 ) (at_rock_sample waypoint27) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint27)))
)

(:action sample_rock_rover5_rover5store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_rock_sample waypoint25) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint25)))
)

(:action sample_rock_rover5_rover5store_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5033 ) (at_rock_sample waypoint31) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint31)))
)

(:action sample_rock_rover5_rover5store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5034 ) (at_rock_sample waypoint11) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint11)))
)

(:action communicate_rock_data_rover5_general_waypoint14_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5035 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover5_general_waypoint16_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5036 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover5_general_waypoint4_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5003 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover5_general_waypoint14_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5035 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover5_general_waypoint16_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5036 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover5_general_waypoint4_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5003 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover5_general_waypoint14_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5035 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover5_general_waypoint16_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5036 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover5_general_waypoint4_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5003 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover5_general_waypoint14_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5035 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover5_general_waypoint16_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5036 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover5_general_waypoint4_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5003 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover5_general_waypoint14_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5035 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover5_general_waypoint16_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5036 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover5_general_waypoint4_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5003 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint4))
)

(:action communicate_rock_data_rover5_general_waypoint14_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5035 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint14))
)

(:action communicate_rock_data_rover5_general_waypoint16_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5036 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5005 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5006 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5007 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5008 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5009 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5010 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5011 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5012 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective8_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5013 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover5_general_objective9_colour_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5014 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5015 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5016 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5017 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5018 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5019 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5020 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5021 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5022 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective8_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5023 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover5_general_objective9_high_res_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5024 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5005 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5006 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5007 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5008 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5009 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5010 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5011 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5012 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective8_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5013 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover5_general_objective9_colour_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5014 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5015 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5016 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5017 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5018 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5019 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5020 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5021 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5022 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective8_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5023 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover5_general_objective9_high_res_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5024 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5005 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5006 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5007 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5008 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5009 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5010 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5011 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5012 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective8_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5013 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover5_general_objective9_colour_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5014 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5015 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5016 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5017 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5018 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5019 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5020 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5021 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5022 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective8_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5023 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover5_general_objective9_high_res_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5024 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5005 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5006 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5007 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5008 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5009 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5010 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5011 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5012 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective8_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5013 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover5_general_objective9_colour_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5014 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5015 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5016 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5017 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5018 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5019 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5020 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5021 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5022 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective8_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5023 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover5_general_objective9_high_res_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5024 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5005 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5006 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5007 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5008 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5009 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5010 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5011 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5012 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective8_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5013 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 colour))
)

(:action communicate_image_data_rover5_general_objective9_colour_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5014 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5015 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5016 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5017 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5018 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5019 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5020 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5021 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5022 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective8_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5023 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective8 high_res))
)

(:action communicate_image_data_rover5_general_objective9_high_res_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5024 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective9 high_res))
)

(:action communicate_rock_data_rover5_general_waypoint21_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5041 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover5_general_waypoint24_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5042 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover5_general_waypoint38_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5043 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover5_general_waypoint5_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5044 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover5_general_waypoint2_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5045 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover5_general_waypoint23_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5046 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover5_general_waypoint27_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5047 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover5_general_waypoint25_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5048 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover5_general_waypoint31_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5049 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover5_general_waypoint11_waypoint14_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint2) (P_ARTIFICIAL5050 ) (visible waypoint14 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover5_general_waypoint21_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5041 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover5_general_waypoint24_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5042 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover5_general_waypoint38_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5043 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover5_general_waypoint5_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5044 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover5_general_waypoint2_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5045 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover5_general_waypoint23_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5046 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover5_general_waypoint27_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5047 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover5_general_waypoint25_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5048 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover5_general_waypoint31_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5049 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover5_general_waypoint11_waypoint17_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5037 ) (at_lander general waypoint2) (P_ARTIFICIAL5050 ) (visible waypoint17 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover5_general_waypoint21_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5041 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover5_general_waypoint24_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5042 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover5_general_waypoint38_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5043 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover5_general_waypoint5_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5044 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover5_general_waypoint2_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5045 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover5_general_waypoint23_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5046 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover5_general_waypoint27_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5047 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover5_general_waypoint25_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5048 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover5_general_waypoint31_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5049 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover5_general_waypoint11_waypoint18_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5038 ) (at_lander general waypoint2) (P_ARTIFICIAL5050 ) (visible waypoint18 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover5_general_waypoint21_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5041 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover5_general_waypoint24_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5042 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover5_general_waypoint38_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5043 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover5_general_waypoint5_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5044 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover5_general_waypoint2_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5045 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover5_general_waypoint23_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5046 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover5_general_waypoint27_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5047 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover5_general_waypoint25_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5048 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover5_general_waypoint31_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5049 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover5_general_waypoint11_waypoint25_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5032 ) (at_lander general waypoint2) (P_ARTIFICIAL5050 ) (visible waypoint25 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover5_general_waypoint21_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5041 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover5_general_waypoint24_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5042 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover5_general_waypoint38_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5043 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover5_general_waypoint5_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5044 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover5_general_waypoint2_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5045 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover5_general_waypoint23_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5046 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover5_general_waypoint27_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5047 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover5_general_waypoint25_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5048 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover5_general_waypoint31_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5049 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover5_general_waypoint11_waypoint34_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5039 ) (at_lander general waypoint2) (P_ARTIFICIAL5050 ) (visible waypoint34 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover5_general_waypoint21_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5041 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint21))
)

(:action communicate_rock_data_rover5_general_waypoint24_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5042 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover5_general_waypoint38_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5043 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint38))
)

(:action communicate_rock_data_rover5_general_waypoint5_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5044 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint5))
)

(:action communicate_rock_data_rover5_general_waypoint2_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5045 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint2))
)

(:action communicate_rock_data_rover5_general_waypoint23_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5046 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint23))
)

(:action communicate_rock_data_rover5_general_waypoint27_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5047 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover5_general_waypoint25_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5048 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint25))
)

(:action communicate_rock_data_rover5_general_waypoint31_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5049 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint31))
)

(:action communicate_rock_data_rover5_general_waypoint11_waypoint39_waypoint2
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5040 ) (at_lander general waypoint2) (P_ARTIFICIAL5050 ) (visible waypoint39 waypoint2) (P_ARTIFICIAL5004 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

)
