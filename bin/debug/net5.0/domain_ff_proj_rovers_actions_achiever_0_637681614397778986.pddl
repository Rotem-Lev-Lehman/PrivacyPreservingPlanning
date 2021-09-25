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
 waypoint15 - waypoint
 rover4store - store
 high_res - mode
 waypoint27 - waypoint
 waypoint18 - waypoint
 low_res - mode
 colour - mode
 rover5store - store
 objective1 - objective
 objective0 - objective
 objective3 - objective
 objective2 - objective
 objective5 - objective
 objective4 - objective
 objective7 - objective
 objective6 - objective
 waypoint34 - waypoint
 waypoint32 - waypoint
 waypoint33 - waypoint
 waypoint30 - waypoint
 waypoint31 - waypoint
 waypoint12 - waypoint
 waypoint13 - waypoint
 waypoint14 - waypoint
 rover0store - store
 general - lander
 waypoint11 - waypoint
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
 camera8 - camera
 waypoint19 - waypoint
 waypoint10 - waypoint
 camera1 - camera
 camera2 - camera
 camera3 - camera
 camera4 - camera
 camera5 - camera
 waypoint16 - waypoint
 waypoint17 - waypoint
 rover1store - store
 camera0 - camera
 camera6 - camera
 camera7 - camera
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
(P_ARTIFICIAL2063)
(P_ARTIFICIAL2064)
(P_ARTIFICIAL2065)
(P_ARTIFICIAL2066)
(P_ARTIFICIAL2067)
(P_ARTIFICIAL2068)
(P_ARTIFICIAL2069)
(P_ARTIFICIAL2070)
(P_ARTIFICIAL2071)
(P_ARTIFICIAL2072)
(P_ARTIFICIAL2073)
(P_ARTIFICIAL2074)
(P_ARTIFICIAL2075)
(P_ARTIFICIAL2076)
(P_ARTIFICIAL2077)
(P_ARTIFICIAL2078)
(P_ARTIFICIAL2079)
(P_ARTIFICIAL2080)
(P_ARTIFICIAL2081)
(P_ARTIFICIAL2082)
(P_ARTIFICIAL2083)
(P_ARTIFICIAL2084)
(P_ARTIFICIAL2085)
(P_ARTIFICIAL2086)
(P_ARTIFICIAL2087)
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
(P_ARTIFICIAL3062)
(P_ARTIFICIAL3063)
(P_ARTIFICIAL3064)
(P_ARTIFICIAL3065)
(P_ARTIFICIAL3066)
(P_ARTIFICIAL3067)
(P_ARTIFICIAL3068)
(P_ARTIFICIAL3069)
(P_ARTIFICIAL3070)
(P_ARTIFICIAL3071)
(P_ARTIFICIAL3072)
(P_ARTIFICIAL3073)
(P_ARTIFICIAL3074)
(P_ARTIFICIAL3075)
(P_ARTIFICIAL3076)
(P_ARTIFICIAL3077)
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
(P_ARTIFICIAL5058)
(P_ARTIFICIAL5059)
(P_ARTIFICIAL5060)
(P_ARTIFICIAL5061)
(P_ARTIFICIAL5062)
(P_ARTIFICIAL5063)
(P_ARTIFICIAL5064)
(P_ARTIFICIAL5065)
(P_ARTIFICIAL5066)
(P_ARTIFICIAL5067)
(P_ARTIFICIAL5068)
(P_ARTIFICIAL5069)
(P_ARTIFICIAL5070)
(P_ARTIFICIAL5071)
(P_ARTIFICIAL5072)
(P_ARTIFICIAL5073)
(P_ARTIFICIAL5074)
(P_ARTIFICIAL5075)
(P_ARTIFICIAL5076)
(P_ARTIFICIAL5077)
(P_ARTIFICIAL5078)
(P_ARTIFICIAL5079)
)

(:action dummy-init-action-rotemagent0
:precondition 
(and (can-use-init-action rotemagent0))
:effect 
(and (not (can-use-init-action rotemagent0)) (used-init-action rotemagent0) (at_soil_sample waypoint0) (at_rock_sample waypoint0) (at_soil_sample waypoint5) (at_soil_sample waypoint6) (at_rock_sample waypoint6) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_rock_sample waypoint8) (at_rock_sample waypoint9) (at_soil_sample waypoint10) (at_rock_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint13) (at_soil_sample waypoint14) (at_soil_sample waypoint15) (at_rock_sample waypoint15) (at_soil_sample waypoint16) (at_rock_sample waypoint16) (at_soil_sample waypoint18) (at_soil_sample waypoint19) (at_rock_sample waypoint20) (at_soil_sample waypoint22) (at_soil_sample waypoint23) (at_rock_sample waypoint24) (at_soil_sample waypoint25) (at_soil_sample waypoint26) (at_soil_sample waypoint27) (at_rock_sample waypoint27) (at_rock_sample waypoint28) (at_soil_sample waypoint29) (at_rock_sample waypoint30) (at_rock_sample waypoint33) (at_soil_sample waypoint34) (at_rock_sample waypoint34) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover0_rover0store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL0 ) (at_soil_sample waypoint25) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint25)))
)

(:action sample_soil_rover0_rover0store_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_soil_sample waypoint27) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint27)))
)

(:action sample_soil_rover0_rover0store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_soil_sample waypoint0) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint0)))
)

(:action sample_soil_rover0_rover0store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3 ) (at_soil_sample waypoint6) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint6)))
)

(:action sample_soil_rover0_rover0store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4 ) (at_soil_sample waypoint10) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint10)))
)

(:action sample_soil_rover0_rover0store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_soil_sample waypoint14) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint14)))
)

(:action sample_soil_rover0_rover0store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL6 ) (at_soil_sample waypoint16) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint16)))
)

(:action drop_rover0_rover0store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover0store))
:effect 
(and (not (full rover0store)) (empty rover0store))
)

(:action communicate_soil_data_rover0_general_waypoint25_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL7 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover0_general_waypoint25_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL7 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover0_general_waypoint25_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL7 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover0_general_waypoint25_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL7 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover0_general_waypoint25_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL7 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL11 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL12 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL13 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL14 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL15 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL16 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL17 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL18 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL19 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL20 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL21 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL22 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL23 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL24 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL25 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL26 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL27 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL28 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL29 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover0_general_objective6_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL30 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover0_general_objective7_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL31 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL11 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL12 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL13 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL14 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL15 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL16 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL17 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL18 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL19 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL20 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL21 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL22 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL23 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL24 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL25 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL26 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL27 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL28 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL29 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover0_general_objective6_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL30 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover0_general_objective7_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL31 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL11 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL12 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL13 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL14 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL15 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL16 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL17 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL18 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL19 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL20 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL21 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL22 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL23 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL24 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL25 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL26 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL27 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL28 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL29 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover0_general_objective6_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL30 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover0_general_objective7_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL31 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL11 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL12 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL13 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL14 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL15 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL16 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL17 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL18 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL19 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL20 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL21 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL22 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL23 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL24 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL25 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL26 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL27 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL28 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL29 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover0_general_objective6_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL30 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover0_general_objective7_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL31 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL11 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL12 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL13 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL14 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL15 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL16 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL17 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL18 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL19 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL20 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL21 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL22 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL23 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL24 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL25 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL26 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL27 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL28 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL29 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover0_general_objective6_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL30 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover0_general_objective7_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL31 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action sample_soil_rover0_rover0store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_soil_sample waypoint5) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint5)))
)

(:action sample_soil_rover0_rover0store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_soil_sample waypoint8) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint8)))
)

(:action sample_soil_rover0_rover0store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL34 ) (at_soil_sample waypoint15) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint15)))
)

(:action sample_soil_rover0_rover0store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL35 ) (at_soil_sample waypoint18) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint18)))
)

(:action sample_soil_rover0_rover0store_waypoint23
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL36 ) (at_soil_sample waypoint23) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint23)))
)

(:action sample_soil_rover0_rover0store_waypoint34
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL37 ) (at_soil_sample waypoint34) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint34)))
)

(:action sample_soil_rover0_rover0store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL38 ) (at_soil_sample waypoint7) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint7)))
)

(:action sample_soil_rover0_rover0store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL39 ) (at_soil_sample waypoint12) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover0_rover0store_waypoint19
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL40 ) (at_soil_sample waypoint19) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint19)))
)

(:action sample_soil_rover0_rover0store_waypoint22
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL41 ) (at_soil_sample waypoint22) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint22)))
)

(:action sample_soil_rover0_rover0store_waypoint29
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL42 ) (at_soil_sample waypoint29) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint29)))
)

(:action communicate_soil_data_rover0_general_waypoint27_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL43 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL44 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint6_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL45 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover0_general_waypoint10_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL46 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover0_general_waypoint14_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL47 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover0_general_waypoint16_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL48 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover0_general_waypoint25_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL7 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover0_general_waypoint27_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL43 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL44 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint6_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL45 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover0_general_waypoint10_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL46 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover0_general_waypoint14_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL47 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover0_general_waypoint16_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL48 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover0_general_waypoint25_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL7 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover0_general_waypoint27_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL43 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL44 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint6_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL45 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover0_general_waypoint10_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL46 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover0_general_waypoint14_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL47 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover0_general_waypoint16_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL48 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover0_general_waypoint27_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL43 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL44 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint6_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL45 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover0_general_waypoint10_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL46 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover0_general_waypoint14_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL47 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover0_general_waypoint16_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL48 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover0_general_waypoint25_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL7 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover0_general_waypoint27_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL43 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL44 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint6_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL45 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover0_general_waypoint10_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL46 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover0_general_waypoint14_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL47 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover0_general_waypoint16_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL48 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover0_general_waypoint25_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL7 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover0_general_waypoint27_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL43 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL44 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint6_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL45 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover0_general_waypoint10_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL46 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover0_general_waypoint14_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL47 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover0_general_waypoint16_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL48 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover0_general_waypoint27_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL43 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL44 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint6_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL45 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover0_general_waypoint10_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL46 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover0_general_waypoint14_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL47 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover0_general_waypoint16_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL48 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover0_general_waypoint27_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL43 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL44 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint6_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL45 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover0_general_waypoint10_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL46 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover0_general_waypoint14_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL47 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover0_general_waypoint16_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL48 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover0_general_waypoint27_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL43 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover0_general_waypoint0_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL44 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover0_general_waypoint6_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL45 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover0_general_waypoint10_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL46 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover0_general_waypoint14_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL47 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover0_general_waypoint16_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL48 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL51 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL52 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective5_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL53 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL11 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL12 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL13 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL14 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL15 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL16 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL17 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL18 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL19 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL20 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL21 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL22 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL23 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL24 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL25 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL26 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL27 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL28 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL29 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover0_general_objective6_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL30 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover0_general_objective7_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL31 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL51 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL52 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective5_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL53 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL11 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL12 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL13 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL14 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL15 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL16 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL17 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL18 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL19 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL20 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL21 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL22 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL23 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL24 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL25 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL26 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL27 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL28 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL29 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover0_general_objective6_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL30 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover0_general_objective7_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL31 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL51 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL52 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective5_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL53 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL51 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL52 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective5_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL53 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL11 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL12 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL13 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL14 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL15 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL16 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL17 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL18 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL19 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL20 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL21 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL22 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL23 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL24 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL25 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL26 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL27 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL28 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL29 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover0_general_objective6_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL30 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover0_general_objective7_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL31 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL51 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL52 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective5_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL53 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover0_general_objective0_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL11 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover0_general_objective1_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL12 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover0_general_objective2_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL13 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover0_general_objective3_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL14 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover0_general_objective4_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL15 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover0_general_objective6_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL16 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover0_general_objective7_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL17 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover0_general_objective0_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL18 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover0_general_objective1_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL19 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover0_general_objective2_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL20 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover0_general_objective3_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL21 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover0_general_objective4_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL22 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover0_general_objective6_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL23 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover0_general_objective7_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL24 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover0_general_objective0_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL25 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover0_general_objective1_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL26 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover0_general_objective2_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL27 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover0_general_objective3_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL28 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover0_general_objective4_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL29 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover0_general_objective6_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL30 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover0_general_objective7_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL31 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL51 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL52 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective5_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL53 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL51 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL52 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective5_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL53 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL51 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL52 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective5_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL53 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover0_general_objective5_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL51 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover0_general_objective5_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL52 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover0_general_objective5_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL53 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action sample_soil_rover0_rover0store_waypoint26
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL54 ) (at_soil_sample waypoint26) (empty rover0store))
:effect 
(and (not (empty rover0store)) (full rover0store) (not (at_soil_sample waypoint26)))
)

(:action communicate_soil_data_rover0_general_waypoint5_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL55 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL56 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint15_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL57 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL58 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint23_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL59 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover0_general_waypoint34_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL60 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL61 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover0_general_waypoint12_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL62 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover0_general_waypoint19_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL63 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover0_general_waypoint22_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL64 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover0_general_waypoint29_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL65 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover0_general_waypoint5_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL55 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL56 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint15_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL57 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL58 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint23_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL59 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover0_general_waypoint34_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL60 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL61 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover0_general_waypoint12_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL62 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover0_general_waypoint19_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL63 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover0_general_waypoint22_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL64 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover0_general_waypoint29_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL65 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover0_general_waypoint5_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL55 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL56 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint15_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL57 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL58 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint23_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL59 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover0_general_waypoint34_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL60 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL61 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover0_general_waypoint12_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL62 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover0_general_waypoint19_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL63 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover0_general_waypoint22_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL64 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover0_general_waypoint29_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL65 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover0_general_waypoint5_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL55 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL56 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint15_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL57 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL58 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint23_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL59 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover0_general_waypoint34_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL60 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL61 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover0_general_waypoint12_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL62 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover0_general_waypoint19_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL63 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover0_general_waypoint22_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL64 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover0_general_waypoint29_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL65 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover0_general_waypoint5_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL55 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL56 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint15_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL57 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL58 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint23_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL59 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover0_general_waypoint34_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL60 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL61 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover0_general_waypoint12_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL62 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover0_general_waypoint19_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL63 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover0_general_waypoint22_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL64 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover0_general_waypoint29_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL65 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover0_general_waypoint5_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL55 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL56 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint15_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL57 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL58 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint23_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL59 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover0_general_waypoint34_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL60 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL61 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover0_general_waypoint12_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL62 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover0_general_waypoint19_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL63 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover0_general_waypoint22_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL64 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover0_general_waypoint29_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL65 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover0_general_waypoint5_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL55 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL56 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint15_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL57 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL58 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint23_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL59 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover0_general_waypoint34_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL60 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL61 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover0_general_waypoint12_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL62 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover0_general_waypoint19_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL63 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover0_general_waypoint22_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL64 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover0_general_waypoint29_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL65 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover0_general_waypoint5_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL55 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL56 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint15_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL57 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL58 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint23_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL59 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover0_general_waypoint34_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL60 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL61 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover0_general_waypoint12_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL62 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover0_general_waypoint19_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL63 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover0_general_waypoint22_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL64 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover0_general_waypoint29_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL65 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover0_general_waypoint5_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL55 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover0_general_waypoint8_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL56 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover0_general_waypoint15_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL57 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover0_general_waypoint18_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL58 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover0_general_waypoint23_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL59 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover0_general_waypoint34_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL60 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover0_general_waypoint7_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL61 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover0_general_waypoint12_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL62 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover0_general_waypoint19_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL63 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover0_general_waypoint22_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL64 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover0_general_waypoint29_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL65 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover0_general_waypoint26_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2 ) (at_lander general waypoint31) (P_ARTIFICIAL66 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover0_general_waypoint26_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL32 ) (at_lander general waypoint31) (P_ARTIFICIAL66 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover0_general_waypoint26_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL33 ) (at_lander general waypoint31) (P_ARTIFICIAL66 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover0_general_waypoint26_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL9 ) (at_lander general waypoint31) (P_ARTIFICIAL66 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover0_general_waypoint26_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL49 ) (at_lander general waypoint31) (P_ARTIFICIAL66 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover0_general_waypoint26_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL50 ) (at_lander general waypoint31) (P_ARTIFICIAL66 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover0_general_waypoint26_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL10 ) (at_lander general waypoint31) (P_ARTIFICIAL66 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover0_general_waypoint26_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5 ) (at_lander general waypoint31) (P_ARTIFICIAL66 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover0_general_waypoint26_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1 ) (at_lander general waypoint31) (P_ARTIFICIAL66 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL8 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action dummy-init-action-rotemagent1
:precondition 
(and (can-use-init-action rotemagent1))
:effect 
(and (not (can-use-init-action rotemagent1)) (used-init-action rotemagent1) (at_soil_sample waypoint0) (at_rock_sample waypoint0) (at_soil_sample waypoint5) (at_soil_sample waypoint6) (at_rock_sample waypoint6) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_rock_sample waypoint8) (at_rock_sample waypoint9) (at_soil_sample waypoint10) (at_rock_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint13) (at_soil_sample waypoint14) (at_soil_sample waypoint15) (at_rock_sample waypoint15) (at_soil_sample waypoint16) (at_rock_sample waypoint16) (at_soil_sample waypoint18) (at_soil_sample waypoint19) (at_rock_sample waypoint20) (at_soil_sample waypoint22) (at_soil_sample waypoint23) (at_rock_sample waypoint24) (at_soil_sample waypoint25) (at_soil_sample waypoint26) (at_soil_sample waypoint27) (at_rock_sample waypoint27) (at_rock_sample waypoint28) (at_soil_sample waypoint29) (at_rock_sample waypoint30) (at_rock_sample waypoint33) (at_soil_sample waypoint34) (at_rock_sample waypoint34) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover1_rover1store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1000 ) (at_soil_sample waypoint10) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint10)))
)

(:action sample_soil_rover1_rover1store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1001 ) (at_soil_sample waypoint12) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover1_rover1store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1002 ) (at_soil_sample waypoint18) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint18)))
)

(:action sample_soil_rover1_rover1store_waypoint26
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1003 ) (at_soil_sample waypoint26) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint26)))
)

(:action sample_soil_rover1_rover1store_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_soil_sample waypoint27) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint27)))
)

(:action sample_soil_rover1_rover1store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_soil_sample waypoint0) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint0)))
)

(:action sample_soil_rover1_rover1store_waypoint22
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1006 ) (at_soil_sample waypoint22) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint22)))
)

(:action sample_soil_rover1_rover1store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_soil_sample waypoint5) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint5)))
)

(:action sample_soil_rover1_rover1store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_soil_sample waypoint8) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint8)))
)

(:action sample_soil_rover1_rover1store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1009 ) (at_soil_sample waypoint15) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint15)))
)

(:action sample_soil_rover1_rover1store_waypoint19
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1010 ) (at_soil_sample waypoint19) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint19)))
)

(:action sample_soil_rover1_rover1store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1011 ) (at_soil_sample waypoint25) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint25)))
)

(:action sample_soil_rover1_rover1store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1012 ) (at_soil_sample waypoint16) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint16)))
)

(:action sample_soil_rover1_rover1store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1013 ) (at_soil_sample waypoint7) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint7)))
)

(:action sample_soil_rover1_rover1store_waypoint34
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1014 ) (at_soil_sample waypoint34) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint34)))
)

(:action sample_soil_rover1_rover1store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_soil_sample waypoint14) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint14)))
)

(:action drop_rover1_rover1store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover1store))
:effect 
(and (not (full rover1store)) (empty rover1store))
)

(:action communicate_soil_data_rover1_general_waypoint10_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1016 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1018 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1019 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1020 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1021 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint10_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1016 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1018 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1019 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1020 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1021 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint10_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1016 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1018 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1019 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1020 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1021 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint10_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1016 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1018 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1019 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1020 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1021 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint10_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1016 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1018 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1019 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1020 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1021 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint10_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1016 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1018 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1019 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1020 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1021 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint10_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1016 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1018 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1019 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1020 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1021 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint10_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1016 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1018 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1019 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1020 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1021 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover1_general_waypoint10_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1016 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover1_general_waypoint12_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1018 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover1_general_waypoint18_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1019 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover1_general_waypoint26_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1020 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover1_general_waypoint27_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1021 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1026 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1027 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1028 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1029 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1030 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1031 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1032 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1026 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1027 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1028 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1029 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1030 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1031 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1032 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1026 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1027 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1028 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1029 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1030 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1031 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1032 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1026 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1027 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1028 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1029 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1030 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1031 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1032 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1026 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1027 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1028 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1029 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1030 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1031 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1032 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1026 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1027 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1028 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1029 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1030 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1031 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1032 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1026 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1027 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1028 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1029 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1030 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1031 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1032 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1026 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1027 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1028 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1029 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1030 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1031 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1032 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover1_general_objective0_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1026 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover1_general_objective1_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1027 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover1_general_objective2_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1028 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover1_general_objective3_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1029 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover1_general_objective4_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1030 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover1_general_objective6_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1031 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover1_general_objective7_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1032 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action sample_soil_rover1_rover1store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1033 ) (at_soil_sample waypoint6) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint6)))
)

(:action sample_soil_rover1_rover1store_waypoint23
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1034 ) (at_soil_sample waypoint23) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint23)))
)

(:action sample_soil_rover1_rover1store_waypoint29
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1035 ) (at_soil_sample waypoint29) (empty rover1store))
:effect 
(and (not (empty rover1store)) (full rover1store) (not (at_soil_sample waypoint29)))
)

(:action communicate_soil_data_rover1_general_waypoint0_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1036 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover1_general_waypoint22_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1037 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover1_general_waypoint5_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1038 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover1_general_waypoint8_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1039 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover1_general_waypoint15_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1040 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover1_general_waypoint19_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1041 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover1_general_waypoint25_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1042 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover1_general_waypoint16_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1043 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover1_general_waypoint7_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1044 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover1_general_waypoint34_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1045 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1046 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover1_general_waypoint0_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1036 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover1_general_waypoint22_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1037 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover1_general_waypoint5_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1038 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover1_general_waypoint8_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1039 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover1_general_waypoint15_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1040 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover1_general_waypoint19_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1041 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover1_general_waypoint25_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1042 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover1_general_waypoint16_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1043 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover1_general_waypoint7_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1044 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover1_general_waypoint34_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1045 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1046 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover1_general_waypoint0_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1036 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover1_general_waypoint22_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1037 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover1_general_waypoint5_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1038 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover1_general_waypoint8_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1039 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover1_general_waypoint15_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1040 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover1_general_waypoint19_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1041 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover1_general_waypoint25_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1042 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover1_general_waypoint16_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1043 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover1_general_waypoint7_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1044 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover1_general_waypoint34_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1045 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1046 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover1_general_waypoint0_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1036 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover1_general_waypoint22_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1037 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover1_general_waypoint5_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1038 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover1_general_waypoint8_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1039 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover1_general_waypoint15_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1040 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover1_general_waypoint19_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1041 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover1_general_waypoint25_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1042 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover1_general_waypoint16_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1043 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover1_general_waypoint7_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1044 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover1_general_waypoint34_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1045 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1046 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover1_general_waypoint0_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1036 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover1_general_waypoint22_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1037 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover1_general_waypoint5_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1038 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover1_general_waypoint8_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1039 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover1_general_waypoint15_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1040 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover1_general_waypoint19_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1041 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover1_general_waypoint25_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1042 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover1_general_waypoint16_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1043 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover1_general_waypoint7_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1044 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover1_general_waypoint34_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1045 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1046 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover1_general_waypoint0_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1036 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover1_general_waypoint22_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1037 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover1_general_waypoint5_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1038 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover1_general_waypoint8_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1039 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover1_general_waypoint15_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1040 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover1_general_waypoint19_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1041 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover1_general_waypoint25_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1042 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover1_general_waypoint16_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1043 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover1_general_waypoint7_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1044 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover1_general_waypoint34_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1045 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1046 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover1_general_waypoint0_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1036 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover1_general_waypoint22_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1037 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover1_general_waypoint5_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1038 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover1_general_waypoint8_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1039 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover1_general_waypoint15_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1040 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover1_general_waypoint19_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1041 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover1_general_waypoint25_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1042 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover1_general_waypoint16_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1043 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover1_general_waypoint7_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1044 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover1_general_waypoint34_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1045 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1046 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover1_general_waypoint0_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1036 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover1_general_waypoint22_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1037 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover1_general_waypoint5_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1038 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover1_general_waypoint8_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1039 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover1_general_waypoint15_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1040 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover1_general_waypoint19_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1041 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover1_general_waypoint25_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1042 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover1_general_waypoint16_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1043 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover1_general_waypoint7_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1044 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover1_general_waypoint34_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1045 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1046 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover1_general_waypoint0_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1036 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover1_general_waypoint22_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1037 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover1_general_waypoint5_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1038 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover1_general_waypoint8_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1039 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover1_general_waypoint15_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1040 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover1_general_waypoint19_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1041 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover1_general_waypoint25_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1042 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover1_general_waypoint16_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1043 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover1_general_waypoint7_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1044 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover1_general_waypoint34_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1045 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover1_general_waypoint14_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1046 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1047 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1047 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1047 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1047 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1047 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1047 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1047 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1047 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover1_general_objective5_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1047 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_soil_data_rover1_general_waypoint6_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1048 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover1_general_waypoint23_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1049 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover1_general_waypoint29_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1005 ) (at_lander general waypoint31) (P_ARTIFICIAL1050 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover1_general_waypoint6_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1048 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover1_general_waypoint23_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1049 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover1_general_waypoint29_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1007 ) (at_lander general waypoint31) (P_ARTIFICIAL1050 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover1_general_waypoint6_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1048 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover1_general_waypoint23_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1049 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover1_general_waypoint29_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1008 ) (at_lander general waypoint31) (P_ARTIFICIAL1050 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover1_general_waypoint6_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1048 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover1_general_waypoint23_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1049 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover1_general_waypoint29_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1022 ) (at_lander general waypoint31) (P_ARTIFICIAL1050 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover1_general_waypoint6_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1048 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover1_general_waypoint23_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1049 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover1_general_waypoint29_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1023 ) (at_lander general waypoint31) (P_ARTIFICIAL1050 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover1_general_waypoint6_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1048 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover1_general_waypoint23_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1049 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover1_general_waypoint29_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1024 ) (at_lander general waypoint31) (P_ARTIFICIAL1050 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover1_general_waypoint6_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1048 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover1_general_waypoint23_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1049 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover1_general_waypoint29_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1025 ) (at_lander general waypoint31) (P_ARTIFICIAL1050 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover1_general_waypoint6_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1048 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover1_general_waypoint23_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1049 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover1_general_waypoint29_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1015 ) (at_lander general waypoint31) (P_ARTIFICIAL1050 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover1_general_waypoint6_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1048 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover1_general_waypoint23_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1049 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover1_general_waypoint29_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL1004 ) (at_lander general waypoint31) (P_ARTIFICIAL1050 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL1017 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action dummy-init-action-rotemagent2
:precondition 
(and (can-use-init-action rotemagent2))
:effect 
(and (not (can-use-init-action rotemagent2)) (used-init-action rotemagent2) (at_soil_sample waypoint0) (at_rock_sample waypoint0) (at_soil_sample waypoint5) (at_soil_sample waypoint6) (at_rock_sample waypoint6) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_rock_sample waypoint8) (at_rock_sample waypoint9) (at_soil_sample waypoint10) (at_rock_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint13) (at_soil_sample waypoint14) (at_soil_sample waypoint15) (at_rock_sample waypoint15) (at_soil_sample waypoint16) (at_rock_sample waypoint16) (at_soil_sample waypoint18) (at_soil_sample waypoint19) (at_rock_sample waypoint20) (at_soil_sample waypoint22) (at_soil_sample waypoint23) (at_rock_sample waypoint24) (at_soil_sample waypoint25) (at_soil_sample waypoint26) (at_soil_sample waypoint27) (at_rock_sample waypoint27) (at_rock_sample waypoint28) (at_soil_sample waypoint29) (at_rock_sample waypoint30) (at_rock_sample waypoint33) (at_soil_sample waypoint34) (at_rock_sample waypoint34) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
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

(:action sample_soil_rover2_rover2store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_soil_sample waypoint5) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint5)))
)

(:action sample_soil_rover2_rover2store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_soil_sample waypoint8) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint8)))
)

(:action sample_soil_rover2_rover2store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_soil_sample waypoint14) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint14)))
)

(:action sample_soil_rover2_rover2store_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_soil_sample waypoint27) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint27)))
)

(:action sample_rock_rover2_rover2store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_rock_sample waypoint0) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint0)))
)

(:action sample_rock_rover2_rover2store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_rock_sample waypoint8) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint8)))
)

(:action sample_rock_rover2_rover2store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_rock_sample waypoint9) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint9)))
)

(:action sample_rock_rover2_rover2store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_rock_sample waypoint20) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint20)))
)

(:action sample_rock_rover2_rover2store_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_rock_sample waypoint27) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint27)))
)

(:action sample_soil_rover2_rover2store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_soil_sample waypoint6) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint6)))
)

(:action sample_soil_rover2_rover2store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2008 ) (at_soil_sample waypoint10) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint10)))
)

(:action sample_soil_rover2_rover2store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_soil_sample waypoint16) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint16)))
)

(:action sample_soil_rover2_rover2store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2010 ) (at_soil_sample waypoint25) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint25)))
)

(:action sample_soil_rover2_rover2store_waypoint29
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2011 ) (at_soil_sample waypoint29) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint29)))
)

(:action sample_soil_rover2_rover2store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_soil_sample waypoint7) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint7)))
)

(:action sample_soil_rover2_rover2store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2013 ) (at_soil_sample waypoint12) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover2_rover2store_waypoint23
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2014 ) (at_soil_sample waypoint23) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint23)))
)

(:action sample_soil_rover2_rover2store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2015 ) (at_soil_sample waypoint18) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint18)))
)

(:action sample_soil_rover2_rover2store_waypoint26
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2016 ) (at_soil_sample waypoint26) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint26)))
)

(:action sample_rock_rover2_rover2store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2007 ) (at_rock_sample waypoint6) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint6)))
)

(:action sample_rock_rover2_rover2store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2009 ) (at_rock_sample waypoint16) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint16)))
)

(:action sample_rock_rover2_rover2store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2012 ) (at_rock_sample waypoint7) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover2_rover2store_waypoint30
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2017 ) (at_rock_sample waypoint30) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint30)))
)

(:action sample_rock_rover2_rover2store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2018 ) (at_rock_sample waypoint11) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint11)))
)

(:action drop_rover2_rover2store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover2store))
:effect 
(and (not (full rover2store)) (empty rover2store))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2019 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2021 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover2_general_waypoint8_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2022 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover2_general_waypoint14_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2023 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover2_general_waypoint27_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2024 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2019 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2021 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover2_general_waypoint8_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2022 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover2_general_waypoint14_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2023 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover2_general_waypoint27_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2024 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2019 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2021 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover2_general_waypoint8_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2022 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover2_general_waypoint14_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2023 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover2_general_waypoint27_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2024 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2019 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2021 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover2_general_waypoint8_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2022 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover2_general_waypoint14_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2023 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover2_general_waypoint27_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2024 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2019 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2021 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover2_general_waypoint8_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2022 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover2_general_waypoint14_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2023 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover2_general_waypoint27_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2024 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2019 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2021 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover2_general_waypoint8_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2022 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover2_general_waypoint14_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2023 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover2_general_waypoint27_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2024 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2019 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2021 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover2_general_waypoint8_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2022 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover2_general_waypoint14_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2023 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover2_general_waypoint27_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2024 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2019 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2021 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover2_general_waypoint8_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2022 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover2_general_waypoint14_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2023 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover2_general_waypoint27_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2024 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2026 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2027 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2028 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint20_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2029 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover2_general_waypoint27_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2030 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2026 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2027 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2028 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint20_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2029 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover2_general_waypoint27_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2030 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2026 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2027 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2028 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint20_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2029 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover2_general_waypoint27_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2030 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2026 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2027 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2028 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint20_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2029 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover2_general_waypoint27_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2030 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2026 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2027 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2028 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint20_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2029 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover2_general_waypoint27_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2030 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2026 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2027 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2028 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint20_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2029 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover2_general_waypoint27_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2030 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2026 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2027 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2028 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint20_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2029 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover2_general_waypoint27_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2030 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2026 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2027 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2028 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint20_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2029 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover2_general_waypoint27_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2030 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2031 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2032 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2033 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2034 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2035 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2036 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2037 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2038 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2039 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2040 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2041 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2042 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2043 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2044 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2045 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2046 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2031 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2032 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2033 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2034 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2035 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2036 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2037 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2038 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2039 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2040 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2041 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2042 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2043 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2044 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2045 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2046 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2031 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2032 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2033 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2034 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2035 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2036 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2037 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2038 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2039 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2040 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2041 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2042 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2043 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2044 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2045 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2046 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2031 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2032 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2033 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2034 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2035 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2036 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2037 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2038 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2039 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2040 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2041 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2042 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2043 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2044 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2045 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2046 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2031 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2032 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2033 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2034 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2035 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2036 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2037 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2038 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2039 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2040 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2041 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2042 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2043 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2044 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2045 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2046 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2031 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2032 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2033 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2034 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2035 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2036 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2037 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2038 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2039 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2040 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2041 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2042 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2043 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2044 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2045 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2046 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2031 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2032 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2033 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2034 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2035 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2036 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2037 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2038 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2039 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2040 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2041 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2042 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2043 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2044 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2045 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2046 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2031 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2032 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2033 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2034 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2035 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2036 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2037 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2038 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2039 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2040 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2041 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2042 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2043 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2044 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2045 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2046 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action sample_soil_rover2_rover2store_waypoint19
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2047 ) (at_soil_sample waypoint19) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint19)))
)

(:action sample_soil_rover2_rover2store_waypoint22
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2048 ) (at_soil_sample waypoint22) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint22)))
)

(:action sample_soil_rover2_rover2store_waypoint34
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2049 ) (at_soil_sample waypoint34) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint34)))
)

(:action sample_soil_rover2_rover2store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2050 ) (at_soil_sample waypoint15) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_soil_sample waypoint15)))
)

(:action sample_rock_rover2_rover2store_waypoint28
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2051 ) (at_rock_sample waypoint28) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint28)))
)

(:action sample_rock_rover2_rover2store_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_rock_sample waypoint13) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint13)))
)

(:action sample_rock_rover2_rover2store_waypoint34
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2049 ) (at_rock_sample waypoint34) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint34)))
)

(:action sample_rock_rover2_rover2store_waypoint33
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2053 ) (at_rock_sample waypoint33) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint33)))
)

(:action sample_rock_rover2_rover2store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2054 ) (at_rock_sample waypoint24) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint24)))
)

(:action sample_rock_rover2_rover2store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2050 ) (at_rock_sample waypoint15) (empty rover2store))
:effect 
(and (not (empty rover2store)) (full rover2store) (not (at_rock_sample waypoint15)))
)

(:action communicate_soil_data_rover2_general_waypoint6_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2055 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover2_general_waypoint10_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2056 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover2_general_waypoint16_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2057 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover2_general_waypoint25_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2058 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover2_general_waypoint29_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2059 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover2_general_waypoint7_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2060 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2061 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint23_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2062 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover2_general_waypoint18_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2063 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover2_general_waypoint26_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2064 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover2_general_waypoint6_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2055 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover2_general_waypoint10_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2056 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover2_general_waypoint16_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2057 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover2_general_waypoint25_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2058 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover2_general_waypoint29_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2059 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover2_general_waypoint7_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2060 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2061 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint23_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2062 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover2_general_waypoint18_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2063 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover2_general_waypoint26_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2064 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover2_general_waypoint6_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2055 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover2_general_waypoint10_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2056 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover2_general_waypoint16_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2057 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover2_general_waypoint25_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2058 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover2_general_waypoint29_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2059 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover2_general_waypoint7_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2060 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2061 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint23_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2062 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover2_general_waypoint18_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2063 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover2_general_waypoint26_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2064 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover2_general_waypoint6_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2055 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover2_general_waypoint10_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2056 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover2_general_waypoint16_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2057 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover2_general_waypoint25_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2058 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover2_general_waypoint29_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2059 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover2_general_waypoint7_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2060 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2061 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint23_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2062 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover2_general_waypoint18_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2063 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover2_general_waypoint26_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2064 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover2_general_waypoint6_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2055 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover2_general_waypoint10_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2056 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover2_general_waypoint16_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2057 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover2_general_waypoint25_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2058 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover2_general_waypoint29_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2059 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover2_general_waypoint7_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2060 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2061 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint23_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2062 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover2_general_waypoint18_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2063 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover2_general_waypoint26_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2064 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover2_general_waypoint6_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2055 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover2_general_waypoint10_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2056 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover2_general_waypoint16_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2057 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover2_general_waypoint25_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2058 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover2_general_waypoint29_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2059 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover2_general_waypoint7_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2060 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2061 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint23_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2062 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover2_general_waypoint18_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2063 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover2_general_waypoint26_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2064 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover2_general_waypoint0_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2019 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover2_general_waypoint5_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2021 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover2_general_waypoint8_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2022 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover2_general_waypoint14_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2023 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover2_general_waypoint27_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2024 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover2_general_waypoint6_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2055 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover2_general_waypoint10_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2056 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover2_general_waypoint16_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2057 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover2_general_waypoint25_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2058 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover2_general_waypoint29_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2059 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover2_general_waypoint7_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2060 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2061 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint23_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2062 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover2_general_waypoint18_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2063 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover2_general_waypoint26_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2064 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover2_general_waypoint6_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2055 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover2_general_waypoint10_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2056 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover2_general_waypoint16_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2057 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover2_general_waypoint25_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2058 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover2_general_waypoint29_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2059 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover2_general_waypoint7_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2060 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2061 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint23_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2062 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover2_general_waypoint18_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2063 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover2_general_waypoint26_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2064 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover2_general_waypoint6_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2055 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover2_general_waypoint10_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2056 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover2_general_waypoint16_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2057 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover2_general_waypoint25_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2058 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover2_general_waypoint29_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2059 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover2_general_waypoint7_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2060 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover2_general_waypoint12_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2061 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover2_general_waypoint23_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2062 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover2_general_waypoint18_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2063 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover2_general_waypoint26_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2064 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2065 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2066 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2067 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint30_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2068 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2069 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2065 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2066 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2067 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint30_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2068 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2069 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2065 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2066 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2067 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint30_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2068 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2069 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2065 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2066 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2067 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint30_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2068 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2069 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2065 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2066 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2067 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint30_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2068 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2069 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2065 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2066 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2067 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint30_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2068 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2069 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint0_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2026 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover2_general_waypoint8_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2027 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover2_general_waypoint9_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2028 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover2_general_waypoint20_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2029 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover2_general_waypoint27_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2030 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2065 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2066 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2067 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint30_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2068 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2069 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2065 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2066 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2067 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint30_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2068 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2069 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover2_general_waypoint6_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2065 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover2_general_waypoint16_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2066 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover2_general_waypoint7_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2067 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover2_general_waypoint30_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2068 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover2_general_waypoint11_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2069 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2070 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2071 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2072 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2073 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2074 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2075 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2076 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2077 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2070 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2071 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2072 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2073 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2074 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2075 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2076 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2077 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2070 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2071 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2072 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2073 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2074 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2075 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2076 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2077 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2070 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2071 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2072 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2073 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2074 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2075 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2076 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2077 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2070 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2071 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2072 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2073 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2074 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2075 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2076 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2077 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2070 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2071 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2072 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2073 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2074 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2075 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2076 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2077 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective0_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2031 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover2_general_objective1_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2032 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover2_general_objective2_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2033 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover2_general_objective3_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2034 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover2_general_objective4_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2035 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover2_general_objective5_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2036 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover2_general_objective6_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2037 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover2_general_objective7_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2038 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover2_general_objective0_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2039 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover2_general_objective1_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2040 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover2_general_objective2_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2041 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover2_general_objective3_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2042 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover2_general_objective4_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2043 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover2_general_objective5_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2044 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover2_general_objective6_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2045 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover2_general_objective7_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2046 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2070 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2071 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2072 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2073 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2074 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2075 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2076 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2077 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2070 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2071 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2072 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2073 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2074 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2075 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2076 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2077 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover2_general_objective0_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2070 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover2_general_objective1_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2071 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover2_general_objective2_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2072 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover2_general_objective3_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2073 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover2_general_objective4_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2074 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover2_general_objective5_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2075 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover2_general_objective6_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2076 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover2_general_objective7_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2077 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_soil_data_rover2_general_waypoint19_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2078 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover2_general_waypoint22_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2079 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover2_general_waypoint34_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2080 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover2_general_waypoint15_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2081 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover2_general_waypoint19_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2078 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover2_general_waypoint22_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2079 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover2_general_waypoint34_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2080 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover2_general_waypoint15_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2081 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover2_general_waypoint19_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2078 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover2_general_waypoint22_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2079 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover2_general_waypoint34_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2080 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover2_general_waypoint15_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2081 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover2_general_waypoint19_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2078 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover2_general_waypoint22_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2079 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover2_general_waypoint34_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2080 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover2_general_waypoint15_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2081 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover2_general_waypoint19_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2078 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover2_general_waypoint22_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2079 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover2_general_waypoint34_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2080 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover2_general_waypoint15_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2081 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover2_general_waypoint19_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2078 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover2_general_waypoint22_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2079 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover2_general_waypoint34_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2080 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover2_general_waypoint15_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2081 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover2_general_waypoint19_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2078 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover2_general_waypoint22_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2079 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover2_general_waypoint34_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2080 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover2_general_waypoint15_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2081 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover2_general_waypoint19_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2078 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover2_general_waypoint22_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2079 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover2_general_waypoint34_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2080 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover2_general_waypoint15_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2081 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover2_general_waypoint19_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2078 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover2_general_waypoint22_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2079 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover2_general_waypoint34_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2080 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover2_general_waypoint15_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2081 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2082 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint13_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2083 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover2_general_waypoint34_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2084 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover2_general_waypoint33_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2085 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2086 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint15_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2000 ) (at_lander general waypoint31) (P_ARTIFICIAL2087 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2082 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint13_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2083 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover2_general_waypoint34_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2084 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover2_general_waypoint33_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2085 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2086 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint15_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2001 ) (at_lander general waypoint31) (P_ARTIFICIAL2087 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2082 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint13_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2083 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover2_general_waypoint34_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2084 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover2_general_waypoint33_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2085 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2086 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint15_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2002 ) (at_lander general waypoint31) (P_ARTIFICIAL2087 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2082 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint13_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2083 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover2_general_waypoint34_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2084 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover2_general_waypoint33_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2085 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2086 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint15_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2005 ) (at_lander general waypoint31) (P_ARTIFICIAL2087 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2082 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint13_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2083 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover2_general_waypoint34_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2084 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover2_general_waypoint33_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2085 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2086 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint15_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2006 ) (at_lander general waypoint31) (P_ARTIFICIAL2087 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2082 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint13_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2083 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover2_general_waypoint34_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2084 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover2_general_waypoint33_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2085 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2086 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint15_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2025 ) (at_lander general waypoint31) (P_ARTIFICIAL2087 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2082 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint13_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2083 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover2_general_waypoint34_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2084 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover2_general_waypoint33_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2085 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2086 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint15_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2052 ) (at_lander general waypoint31) (P_ARTIFICIAL2087 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2082 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint13_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2083 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover2_general_waypoint34_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2084 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover2_general_waypoint33_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2085 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2086 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint15_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2003 ) (at_lander general waypoint31) (P_ARTIFICIAL2087 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover2_general_waypoint28_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2082 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover2_general_waypoint13_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2083 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover2_general_waypoint34_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2084 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover2_general_waypoint33_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2085 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover2_general_waypoint24_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2086 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover2_general_waypoint15_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL2004 ) (at_lander general waypoint31) (P_ARTIFICIAL2087 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL2020 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action dummy-init-action-rotemagent3
:precondition 
(and (can-use-init-action rotemagent3))
:effect 
(and (not (can-use-init-action rotemagent3)) (used-init-action rotemagent3) (at_soil_sample waypoint0) (at_rock_sample waypoint0) (at_soil_sample waypoint5) (at_soil_sample waypoint6) (at_rock_sample waypoint6) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_rock_sample waypoint8) (at_rock_sample waypoint9) (at_soil_sample waypoint10) (at_rock_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint13) (at_soil_sample waypoint14) (at_soil_sample waypoint15) (at_rock_sample waypoint15) (at_soil_sample waypoint16) (at_rock_sample waypoint16) (at_soil_sample waypoint18) (at_soil_sample waypoint19) (at_rock_sample waypoint20) (at_soil_sample waypoint22) (at_soil_sample waypoint23) (at_rock_sample waypoint24) (at_soil_sample waypoint25) (at_soil_sample waypoint26) (at_soil_sample waypoint27) (at_rock_sample waypoint27) (at_rock_sample waypoint28) (at_soil_sample waypoint29) (at_rock_sample waypoint30) (at_rock_sample waypoint33) (at_soil_sample waypoint34) (at_rock_sample waypoint34) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover3_rover3store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3000 ) (at_soil_sample waypoint25) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint25)))
)

(:action sample_soil_rover3_rover3store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_soil_sample waypoint0) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint0)))
)

(:action sample_soil_rover3_rover3store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_soil_sample waypoint7) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint7)))
)

(:action sample_soil_rover3_rover3store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3003 ) (at_soil_sample waypoint10) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint10)))
)

(:action sample_soil_rover3_rover3store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_soil_sample waypoint16) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint16)))
)

(:action sample_rock_rover3_rover3store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_rock_sample waypoint0) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint0)))
)

(:action sample_rock_rover3_rover3store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3002 ) (at_rock_sample waypoint7) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover3_rover3store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3005 ) (at_rock_sample waypoint11) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint11)))
)

(:action sample_rock_rover3_rover3store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3004 ) (at_rock_sample waypoint16) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint16)))
)

(:action sample_rock_rover3_rover3store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3006 ) (at_rock_sample waypoint24) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint24)))
)

(:action drop_rover3_rover3store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover3store))
:effect 
(and (not (full rover3store)) (empty rover3store))
)

(:action communicate_soil_data_rover3_general_waypoint25_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3007 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action sample_soil_rover3_rover3store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_soil_sample waypoint6) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint6)))
)

(:action sample_soil_rover3_rover3store_waypoint23
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3010 ) (at_soil_sample waypoint23) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint23)))
)

(:action sample_soil_rover3_rover3store_waypoint29
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3011 ) (at_soil_sample waypoint29) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint29)))
)

(:action sample_soil_rover3_rover3store_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_soil_sample waypoint27) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint27)))
)

(:action sample_soil_rover3_rover3store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3013 ) (at_soil_sample waypoint18) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint18)))
)

(:action sample_soil_rover3_rover3store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_soil_sample waypoint5) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint5)))
)

(:action sample_soil_rover3_rover3store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_soil_sample waypoint8) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint8)))
)

(:action sample_soil_rover3_rover3store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3016 ) (at_soil_sample waypoint12) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover3_rover3store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_soil_sample waypoint15) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint15)))
)

(:action sample_soil_rover3_rover3store_waypoint34
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_soil_sample waypoint34) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint34)))
)

(:action sample_soil_rover3_rover3store_waypoint22
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3019 ) (at_soil_sample waypoint22) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint22)))
)

(:action sample_rock_rover3_rover3store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3009 ) (at_rock_sample waypoint6) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint6)))
)

(:action sample_rock_rover3_rover3store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_rock_sample waypoint9) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint9)))
)

(:action sample_rock_rover3_rover3store_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_rock_sample waypoint27) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint27)))
)

(:action sample_rock_rover3_rover3store_waypoint30
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3021 ) (at_rock_sample waypoint30) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint30)))
)

(:action sample_rock_rover3_rover3store_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_rock_sample waypoint13) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint13)))
)

(:action sample_rock_rover3_rover3store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_rock_sample waypoint8) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint8)))
)

(:action sample_rock_rover3_rover3store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3017 ) (at_rock_sample waypoint15) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint15)))
)

(:action sample_rock_rover3_rover3store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_rock_sample waypoint20) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint20)))
)

(:action sample_rock_rover3_rover3store_waypoint34
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3018 ) (at_rock_sample waypoint34) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint34)))
)

(:action sample_rock_rover3_rover3store_waypoint33
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3024 ) (at_rock_sample waypoint33) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint33)))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3025 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3026 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover3_general_waypoint10_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3027 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover3_general_waypoint16_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3028 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover3_general_waypoint25_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3007 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3025 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3026 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover3_general_waypoint10_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3027 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover3_general_waypoint16_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3028 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover3_general_waypoint25_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3007 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3025 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3026 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover3_general_waypoint10_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3027 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover3_general_waypoint16_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3028 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover3_general_waypoint25_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3007 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3025 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3026 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover3_general_waypoint10_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3027 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover3_general_waypoint16_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3028 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover3_general_waypoint25_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3007 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3025 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3026 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover3_general_waypoint10_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3027 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover3_general_waypoint16_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3028 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover3_general_waypoint25_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3007 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3025 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3026 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover3_general_waypoint10_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3027 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover3_general_waypoint16_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3028 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover3_general_waypoint25_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3007 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3025 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3026 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover3_general_waypoint10_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3027 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover3_general_waypoint16_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3028 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover3_general_waypoint25_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3007 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover3_general_waypoint0_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3025 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover3_general_waypoint7_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3026 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover3_general_waypoint10_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3027 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover3_general_waypoint16_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3028 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3030 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3031 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint11_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3032 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover3_general_waypoint16_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3033 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover3_general_waypoint24_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3034 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3030 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3031 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint11_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3032 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover3_general_waypoint16_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3033 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover3_general_waypoint24_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3034 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3030 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3031 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint11_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3032 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover3_general_waypoint16_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3033 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover3_general_waypoint24_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3034 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3030 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3031 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint11_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3032 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover3_general_waypoint16_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3033 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover3_general_waypoint24_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3034 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3030 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3031 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint11_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3032 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover3_general_waypoint16_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3033 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover3_general_waypoint24_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3034 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3030 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3031 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint11_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3032 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover3_general_waypoint16_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3033 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover3_general_waypoint24_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3034 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3030 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3031 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint11_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3032 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover3_general_waypoint16_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3033 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover3_general_waypoint24_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3034 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover3_general_waypoint0_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3030 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover3_general_waypoint7_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3031 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover3_general_waypoint11_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3032 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover3_general_waypoint16_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3033 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover3_general_waypoint24_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3034 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action sample_soil_rover3_rover3store_waypoint26
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3035 ) (at_soil_sample waypoint26) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint26)))
)

(:action sample_soil_rover3_rover3store_waypoint19
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3036 ) (at_soil_sample waypoint19) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_soil_sample waypoint19)))
)

(:action sample_rock_rover3_rover3store_waypoint28
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3037 ) (at_rock_sample waypoint28) (empty rover3store))
:effect 
(and (not (empty rover3store)) (full rover3store) (not (at_rock_sample waypoint28)))
)

(:action communicate_soil_data_rover3_general_waypoint6_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3038 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3039 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint29_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3040 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover3_general_waypoint27_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3041 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3042 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3043 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3044 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3045 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3046 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint34_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3047 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover3_general_waypoint22_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3048 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover3_general_waypoint6_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3038 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3039 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint29_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3040 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover3_general_waypoint27_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3041 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3042 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3043 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3044 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3045 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3046 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint34_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3047 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover3_general_waypoint22_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3048 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover3_general_waypoint6_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3038 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3039 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint29_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3040 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover3_general_waypoint27_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3041 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3042 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3043 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3044 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3045 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3046 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint34_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3047 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover3_general_waypoint22_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3048 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover3_general_waypoint6_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3038 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3039 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint29_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3040 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover3_general_waypoint27_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3041 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3042 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3043 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3044 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3045 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3046 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint34_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3047 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover3_general_waypoint22_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3048 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover3_general_waypoint6_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3038 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3039 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint29_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3040 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover3_general_waypoint27_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3041 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3042 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3043 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3044 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3045 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3046 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint34_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3047 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover3_general_waypoint22_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3048 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover3_general_waypoint6_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3038 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3039 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint29_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3040 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover3_general_waypoint27_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3041 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3042 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3043 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3044 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3045 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3046 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint34_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3047 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover3_general_waypoint22_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3048 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover3_general_waypoint6_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3038 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3039 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint29_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3040 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover3_general_waypoint27_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3041 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3042 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3043 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3044 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3045 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3046 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint34_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3047 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover3_general_waypoint22_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3048 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover3_general_waypoint6_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3038 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover3_general_waypoint23_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3039 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover3_general_waypoint29_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3040 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover3_general_waypoint27_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3041 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover3_general_waypoint18_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3042 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover3_general_waypoint5_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3043 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover3_general_waypoint8_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3044 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover3_general_waypoint12_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3045 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover3_general_waypoint15_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3046 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover3_general_waypoint34_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3047 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover3_general_waypoint22_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3048 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3049 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3050 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint27_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3051 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover3_general_waypoint30_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3052 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover3_general_waypoint13_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3053 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3054 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3055 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3056 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint34_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3057 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover3_general_waypoint33_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3058 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3049 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3050 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint27_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3051 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover3_general_waypoint30_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3052 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover3_general_waypoint13_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3053 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3054 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3055 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3056 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint34_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3057 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover3_general_waypoint33_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3058 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3049 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3050 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint27_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3051 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover3_general_waypoint30_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3052 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover3_general_waypoint13_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3053 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3054 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3055 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3056 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint34_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3057 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover3_general_waypoint33_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3058 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3049 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3050 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint27_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3051 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover3_general_waypoint30_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3052 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover3_general_waypoint13_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3053 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3054 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3055 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3056 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint34_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3057 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover3_general_waypoint33_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3058 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3049 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3050 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint27_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3051 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover3_general_waypoint30_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3052 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover3_general_waypoint13_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3053 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3054 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3055 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3056 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint34_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3057 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover3_general_waypoint33_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3058 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3049 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3050 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint27_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3051 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover3_general_waypoint30_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3052 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover3_general_waypoint13_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3053 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3054 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3055 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3056 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint34_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3057 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover3_general_waypoint33_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3058 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3049 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3050 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint27_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3051 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover3_general_waypoint30_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3052 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover3_general_waypoint13_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3053 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3054 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3055 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3056 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint34_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3057 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover3_general_waypoint33_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3058 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover3_general_waypoint6_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3049 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover3_general_waypoint9_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3050 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover3_general_waypoint27_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3051 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover3_general_waypoint30_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3052 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover3_general_waypoint13_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3053 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover3_general_waypoint8_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3054 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover3_general_waypoint15_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3055 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover3_general_waypoint20_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3056 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover3_general_waypoint34_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3057 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover3_general_waypoint33_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3058 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3059 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3060 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3061 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3062 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective4_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3063 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover3_general_objective5_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3064 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover3_general_objective6_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3065 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover3_general_objective7_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3066 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3067 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3068 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3069 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3070 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3071 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3072 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3073 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3074 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3059 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3060 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3061 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3062 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective4_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3063 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover3_general_objective5_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3064 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover3_general_objective6_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3065 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover3_general_objective7_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3066 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3067 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3068 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3069 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3070 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3071 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3072 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3073 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3074 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3059 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3060 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3061 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3062 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective4_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3063 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover3_general_objective5_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3064 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover3_general_objective6_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3065 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover3_general_objective7_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3066 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3067 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3068 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3069 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3070 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3071 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3072 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3073 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3074 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3059 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3060 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3061 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3062 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective4_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3063 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover3_general_objective5_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3064 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover3_general_objective6_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3065 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover3_general_objective7_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3066 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3067 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3068 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3069 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3070 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3071 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3072 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3073 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3074 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3059 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3060 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3061 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3062 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective4_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3063 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover3_general_objective5_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3064 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover3_general_objective6_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3065 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover3_general_objective7_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3066 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3067 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3068 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3069 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3070 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3071 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3072 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3073 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3074 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3059 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3060 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3061 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3062 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective4_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3063 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover3_general_objective5_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3064 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover3_general_objective6_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3065 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover3_general_objective7_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3066 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3067 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3068 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3069 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3070 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3071 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3072 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3073 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3074 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3059 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3060 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3061 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3062 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective4_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3063 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover3_general_objective5_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3064 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover3_general_objective6_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3065 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover3_general_objective7_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3066 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3067 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3068 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3069 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3070 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3071 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3072 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3073 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3074 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover3_general_objective0_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3059 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover3_general_objective1_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3060 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover3_general_objective2_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3061 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover3_general_objective3_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3062 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover3_general_objective4_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3063 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover3_general_objective5_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3064 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover3_general_objective6_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3065 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover3_general_objective7_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3066 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover3_general_objective0_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3067 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover3_general_objective1_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3068 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover3_general_objective2_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3069 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover3_general_objective3_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3070 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover3_general_objective4_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3071 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover3_general_objective5_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3072 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover3_general_objective6_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3073 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover3_general_objective7_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3074 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_soil_data_rover3_general_waypoint26_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3075 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover3_general_waypoint19_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3076 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover3_general_waypoint26_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3075 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover3_general_waypoint19_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3076 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover3_general_waypoint26_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3075 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover3_general_waypoint19_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3076 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover3_general_waypoint26_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3075 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover3_general_waypoint19_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3076 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover3_general_waypoint26_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3075 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover3_general_waypoint19_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3076 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover3_general_waypoint26_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3075 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover3_general_waypoint19_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3076 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover3_general_waypoint26_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3075 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover3_general_waypoint19_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3076 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover3_general_waypoint26_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3075 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover3_general_waypoint19_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3076 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_rock_data_rover3_general_waypoint28_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3001 ) (at_lander general waypoint31) (P_ARTIFICIAL3077 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover3_general_waypoint28_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3014 ) (at_lander general waypoint31) (P_ARTIFICIAL3077 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover3_general_waypoint28_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3015 ) (at_lander general waypoint31) (P_ARTIFICIAL3077 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover3_general_waypoint28_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3020 ) (at_lander general waypoint31) (P_ARTIFICIAL3077 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover3_general_waypoint28_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3023 ) (at_lander general waypoint31) (P_ARTIFICIAL3077 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover3_general_waypoint28_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3029 ) (at_lander general waypoint31) (P_ARTIFICIAL3077 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover3_general_waypoint28_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3022 ) (at_lander general waypoint31) (P_ARTIFICIAL3077 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover3_general_waypoint28_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL3012 ) (at_lander general waypoint31) (P_ARTIFICIAL3077 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL3008 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action dummy-init-action-rotemagent4
:precondition 
(and (can-use-init-action rotemagent4))
:effect 
(and (not (can-use-init-action rotemagent4)) (used-init-action rotemagent4) (at_soil_sample waypoint0) (at_rock_sample waypoint0) (at_soil_sample waypoint5) (at_soil_sample waypoint6) (at_rock_sample waypoint6) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_rock_sample waypoint8) (at_rock_sample waypoint9) (at_soil_sample waypoint10) (at_rock_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint13) (at_soil_sample waypoint14) (at_soil_sample waypoint15) (at_rock_sample waypoint15) (at_soil_sample waypoint16) (at_rock_sample waypoint16) (at_soil_sample waypoint18) (at_soil_sample waypoint19) (at_rock_sample waypoint20) (at_soil_sample waypoint22) (at_soil_sample waypoint23) (at_rock_sample waypoint24) (at_soil_sample waypoint25) (at_soil_sample waypoint26) (at_soil_sample waypoint27) (at_rock_sample waypoint27) (at_rock_sample waypoint28) (at_soil_sample waypoint29) (at_rock_sample waypoint30) (at_rock_sample waypoint33) (at_soil_sample waypoint34) (at_rock_sample waypoint34) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_rock_rover4_rover4store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_rock_sample waypoint8) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint8)))
)

(:action sample_rock_rover4_rover4store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4001 ) (at_rock_sample waypoint6) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint6)))
)

(:action sample_rock_rover4_rover4store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4002 ) (at_rock_sample waypoint7) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover4_rover4store_waypoint30
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4003 ) (at_rock_sample waypoint30) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint30)))
)

(:action drop_rover4_rover4store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover4store))
:effect 
(and (not (full rover4store)) (empty rover4store))
)

(:action communicate_rock_data_rover4_general_waypoint8_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4004 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action sample_rock_rover4_rover4store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4006 ) (at_rock_sample waypoint15) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint15)))
)

(:action sample_rock_rover4_rover4store_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_rock_sample waypoint27) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint27)))
)

(:action sample_rock_rover4_rover4store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4008 ) (at_rock_sample waypoint16) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint16)))
)

(:action sample_rock_rover4_rover4store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4009 ) (at_rock_sample waypoint24) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint24)))
)

(:action sample_rock_rover4_rover4store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_rock_sample waypoint0) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint0)))
)

(:action sample_rock_rover4_rover4store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_rock_sample waypoint20) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint20)))
)

(:action sample_rock_rover4_rover4store_waypoint34
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4012 ) (at_rock_sample waypoint34) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint34)))
)

(:action sample_rock_rover4_rover4store_waypoint33
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4013 ) (at_rock_sample waypoint33) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint33)))
)

(:action sample_rock_rover4_rover4store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_rock_sample waypoint9) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint9)))
)

(:action sample_rock_rover4_rover4store_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_rock_sample waypoint13) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint13)))
)

(:action communicate_rock_data_rover4_general_waypoint8_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4004 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4016 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4017 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint30_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4018 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover4_general_waypoint8_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4004 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4016 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4017 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint30_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4018 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4016 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4017 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint30_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4018 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover4_general_waypoint8_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4004 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4016 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4017 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint30_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4018 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover4_general_waypoint8_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4004 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4016 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4017 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint30_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4018 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover4_general_waypoint8_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4004 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4016 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4017 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint30_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4018 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover4_general_waypoint8_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4004 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4016 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4017 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint30_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4018 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover4_general_waypoint8_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4004 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4016 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4017 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint30_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4018 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover4_general_waypoint8_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4004 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover4_general_waypoint6_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4016 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover4_general_waypoint7_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4017 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover4_general_waypoint30_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4018 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action sample_rock_rover4_rover4store_waypoint28
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4022 ) (at_rock_sample waypoint28) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint28)))
)

(:action sample_rock_rover4_rover4store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4023 ) (at_rock_sample waypoint11) (empty rover4store))
:effect 
(and (not (empty rover4store)) (full rover4store) (not (at_rock_sample waypoint11)))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4024 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint27_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4025 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4026 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4027 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint0_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4028 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4029 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint34_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4030 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover4_general_waypoint33_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4031 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4032 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint13_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4033 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4024 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint27_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4025 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4026 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4027 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint0_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4028 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4029 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint34_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4030 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover4_general_waypoint33_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4031 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4032 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint13_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4033 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4024 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint27_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4025 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4026 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4027 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint0_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4028 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4029 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint34_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4030 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover4_general_waypoint33_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4031 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4032 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint13_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4033 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4024 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint27_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4025 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4026 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4027 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint0_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4028 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4029 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint34_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4030 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover4_general_waypoint33_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4031 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4032 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint13_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4033 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4024 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint27_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4025 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4026 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4027 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint0_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4028 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4029 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint34_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4030 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover4_general_waypoint33_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4031 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4032 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint13_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4033 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4024 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint27_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4025 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4026 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4027 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint0_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4028 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4029 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint34_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4030 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover4_general_waypoint33_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4031 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4032 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint13_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4033 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4024 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint27_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4025 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4026 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4027 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint0_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4028 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4029 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint34_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4030 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover4_general_waypoint33_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4031 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4032 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint13_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4033 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4024 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint27_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4025 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4026 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4027 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint0_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4028 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4029 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint34_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4030 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover4_general_waypoint33_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4031 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4032 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint13_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4033 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover4_general_waypoint15_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4024 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover4_general_waypoint27_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4025 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover4_general_waypoint16_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4026 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover4_general_waypoint24_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4027 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover4_general_waypoint0_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4028 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover4_general_waypoint20_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4029 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover4_general_waypoint34_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4030 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover4_general_waypoint33_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4031 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover4_general_waypoint9_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4032 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover4_general_waypoint13_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4033 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4034 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4035 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4034 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4035 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4034 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4035 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4034 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4035 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4034 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4035 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4034 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4035 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4034 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4035 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4034 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4035 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover4_general_waypoint28_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4034 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover4_general_waypoint11_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4035 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4036 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4037 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4038 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4039 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4040 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4041 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4042 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4043 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4044 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4045 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4046 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4047 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4048 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4049 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4050 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4051 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4052 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4053 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4054 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4055 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4056 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4057 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4058 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4010 ) (at_lander general waypoint31) (P_ARTIFICIAL4059 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4036 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4037 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4038 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4039 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4040 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4041 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4042 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4043 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4044 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4045 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4046 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4047 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4048 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4049 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4050 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4051 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4052 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4053 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4054 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4055 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4056 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4057 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4058 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4019 ) (at_lander general waypoint31) (P_ARTIFICIAL4059 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4036 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4037 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4038 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4039 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4040 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4041 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4042 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4043 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4044 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4045 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4046 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4047 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4048 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4049 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4050 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4051 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4052 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4053 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4054 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4055 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4056 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4057 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4058 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4000 ) (at_lander general waypoint31) (P_ARTIFICIAL4059 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4036 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4037 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4038 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4039 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4040 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4041 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4042 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4043 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4044 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4045 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4046 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4047 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4048 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4049 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4050 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4051 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4052 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4053 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4054 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4055 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4056 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4057 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4058 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4014 ) (at_lander general waypoint31) (P_ARTIFICIAL4059 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4036 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4037 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4038 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4039 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4040 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4041 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4042 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4043 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4044 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4045 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4046 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4047 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4048 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4049 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4050 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4051 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4052 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4053 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4054 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4055 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4056 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4057 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4058 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4011 ) (at_lander general waypoint31) (P_ARTIFICIAL4059 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4036 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4037 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4038 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4039 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4040 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4041 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4042 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4043 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4044 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4045 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4046 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4047 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4048 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4049 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4050 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4051 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4052 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4053 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4054 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4055 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4056 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4057 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4058 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4020 ) (at_lander general waypoint31) (P_ARTIFICIAL4059 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4036 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4037 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4038 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4039 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4040 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4041 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4042 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4043 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4044 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4045 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4046 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4047 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4048 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4049 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4050 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4051 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4052 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4053 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4054 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4055 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4056 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4057 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4058 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4015 ) (at_lander general waypoint31) (P_ARTIFICIAL4059 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4036 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4037 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4038 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4039 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4040 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4041 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4042 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4043 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4044 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4045 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4046 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4047 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4048 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4049 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4050 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4051 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4052 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4053 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4054 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4055 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4056 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4057 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4058 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4021 ) (at_lander general waypoint31) (P_ARTIFICIAL4059 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action communicate_image_data_rover4_general_objective0_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4036 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover4_general_objective1_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4037 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover4_general_objective2_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4038 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover4_general_objective3_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4039 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover4_general_objective4_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4040 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover4_general_objective5_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4041 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover4_general_objective6_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4042 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover4_general_objective7_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4043 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover4_general_objective0_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4044 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover4_general_objective1_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4045 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover4_general_objective2_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4046 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover4_general_objective3_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4047 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover4_general_objective4_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4048 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover4_general_objective5_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4049 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover4_general_objective6_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4050 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover4_general_objective7_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4051 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover4_general_objective0_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4052 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 low_res))
)

(:action communicate_image_data_rover4_general_objective1_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4053 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 low_res))
)

(:action communicate_image_data_rover4_general_objective2_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4054 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 low_res))
)

(:action communicate_image_data_rover4_general_objective3_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4055 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 low_res))
)

(:action communicate_image_data_rover4_general_objective4_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4056 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 low_res))
)

(:action communicate_image_data_rover4_general_objective5_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4057 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 low_res))
)

(:action communicate_image_data_rover4_general_objective6_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4058 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 low_res))
)

(:action communicate_image_data_rover4_general_objective7_low_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL4007 ) (at_lander general waypoint31) (P_ARTIFICIAL4059 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL4005 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 low_res))
)

(:action dummy-init-action-rotemagent5
:precondition 
(and (can-use-init-action rotemagent5))
:effect 
(and (not (can-use-init-action rotemagent5)) (used-init-action rotemagent5) (at_soil_sample waypoint0) (at_rock_sample waypoint0) (at_soil_sample waypoint5) (at_soil_sample waypoint6) (at_rock_sample waypoint6) (at_soil_sample waypoint7) (at_rock_sample waypoint7) (at_soil_sample waypoint8) (at_rock_sample waypoint8) (at_rock_sample waypoint9) (at_soil_sample waypoint10) (at_rock_sample waypoint11) (at_soil_sample waypoint12) (at_rock_sample waypoint13) (at_soil_sample waypoint14) (at_soil_sample waypoint15) (at_rock_sample waypoint15) (at_soil_sample waypoint16) (at_rock_sample waypoint16) (at_soil_sample waypoint18) (at_soil_sample waypoint19) (at_rock_sample waypoint20) (at_soil_sample waypoint22) (at_soil_sample waypoint23) (at_rock_sample waypoint24) (at_soil_sample waypoint25) (at_soil_sample waypoint26) (at_soil_sample waypoint27) (at_rock_sample waypoint27) (at_rock_sample waypoint28) (at_soil_sample waypoint29) (at_rock_sample waypoint30) (at_rock_sample waypoint33) (at_soil_sample waypoint34) (at_rock_sample waypoint34) (channel_free general) (empty rover0store) (empty rover1store) (empty rover2store) (empty rover3store) (empty rover4store) (empty rover5store))
)

(:action turn-to-regular-actions-stage
:precondition 
(and (used-init-action rotemagent0) (used-init-action rotemagent1) (used-init-action rotemagent2) (used-init-action rotemagent3) (used-init-action rotemagent4) (used-init-action rotemagent5))
:effect 
(and (not (used-init-action rotemagent0)) (not (used-init-action rotemagent1)) (not (used-init-action rotemagent2)) (not (used-init-action rotemagent3)) (not (used-init-action rotemagent4)) (not (used-init-action rotemagent5)) (regular-actions-stage rotemplaceholder))
)

(:action sample_soil_rover5_rover5store_waypoint10
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5000 ) (at_soil_sample waypoint10) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint10)))
)

(:action sample_soil_rover5_rover5store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_soil_sample waypoint0) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint0)))
)

(:action sample_soil_rover5_rover5store_waypoint5
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_soil_sample waypoint5) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint5)))
)

(:action sample_soil_rover5_rover5store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_soil_sample waypoint8) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint8)))
)

(:action sample_soil_rover5_rover5store_waypoint12
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5004 ) (at_soil_sample waypoint12) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint12)))
)

(:action sample_soil_rover5_rover5store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5005 ) (at_soil_sample waypoint15) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint15)))
)

(:action sample_soil_rover5_rover5store_waypoint23
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5006 ) (at_soil_sample waypoint23) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint23)))
)

(:action sample_soil_rover5_rover5store_waypoint25
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5007 ) (at_soil_sample waypoint25) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint25)))
)

(:action sample_soil_rover5_rover5store_waypoint34
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5008 ) (at_soil_sample waypoint34) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint34)))
)

(:action sample_rock_rover5_rover5store_waypoint0
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_rock_sample waypoint0) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint0)))
)

(:action sample_rock_rover5_rover5store_waypoint8
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_rock_sample waypoint8) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint8)))
)

(:action sample_rock_rover5_rover5store_waypoint15
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5005 ) (at_rock_sample waypoint15) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint15)))
)

(:action sample_rock_rover5_rover5store_waypoint20
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_rock_sample waypoint20) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint20)))
)

(:action sample_rock_rover5_rover5store_waypoint34
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5008 ) (at_rock_sample waypoint34) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint34)))
)

(:action drop_rover5_rover5store
:precondition 
(and (regular-actions-stage rotemplaceholder) (full rover5store))
:effect 
(and (not (full rover5store)) (empty rover5store))
)

(:action communicate_soil_data_rover5_general_waypoint10_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5010 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover5_general_waypoint10_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5010 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover5_general_waypoint10_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5010 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover5_general_waypoint10_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5010 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action sample_soil_rover5_rover5store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5012 ) (at_soil_sample waypoint16) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint16)))
)

(:action sample_soil_rover5_rover5store_waypoint29
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5013 ) (at_soil_sample waypoint29) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint29)))
)

(:action sample_soil_rover5_rover5store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5014 ) (at_soil_sample waypoint7) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint7)))
)

(:action sample_soil_rover5_rover5store_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_soil_sample waypoint27) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint27)))
)

(:action sample_soil_rover5_rover5store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_soil_sample waypoint6) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint6)))
)

(:action sample_soil_rover5_rover5store_waypoint19
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5017 ) (at_soil_sample waypoint19) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint19)))
)

(:action sample_soil_rover5_rover5store_waypoint18
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5018 ) (at_soil_sample waypoint18) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint18)))
)

(:action sample_soil_rover5_rover5store_waypoint26
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5019 ) (at_soil_sample waypoint26) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint26)))
)

(:action sample_soil_rover5_rover5store_waypoint14
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_soil_sample waypoint14) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint14)))
)

(:action sample_soil_rover5_rover5store_waypoint22
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5021 ) (at_soil_sample waypoint22) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_soil_sample waypoint22)))
)

(:action sample_rock_rover5_rover5store_waypoint16
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5012 ) (at_rock_sample waypoint16) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint16)))
)

(:action sample_rock_rover5_rover5store_waypoint7
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5014 ) (at_rock_sample waypoint7) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint7)))
)

(:action sample_rock_rover5_rover5store_waypoint24
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5022 ) (at_rock_sample waypoint24) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint24)))
)

(:action sample_rock_rover5_rover5store_waypoint27
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_rock_sample waypoint27) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint27)))
)

(:action sample_rock_rover5_rover5store_waypoint30
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5023 ) (at_rock_sample waypoint30) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint30)))
)

(:action sample_rock_rover5_rover5store_waypoint9
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_rock_sample waypoint9) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint9)))
)

(:action sample_rock_rover5_rover5store_waypoint6
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5016 ) (at_rock_sample waypoint6) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint6)))
)

(:action sample_rock_rover5_rover5store_waypoint13
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_rock_sample waypoint13) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint13)))
)

(:action sample_rock_rover5_rover5store_waypoint33
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5026 ) (at_rock_sample waypoint33) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint33)))
)

(:action communicate_soil_data_rover5_general_waypoint0_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5027 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5028 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5029 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5030 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover5_general_waypoint15_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5031 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover5_general_waypoint23_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5032 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover5_general_waypoint25_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5033 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover5_general_waypoint34_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5034 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover5_general_waypoint0_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5027 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5028 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5029 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5030 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover5_general_waypoint15_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5031 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover5_general_waypoint23_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5032 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover5_general_waypoint25_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5033 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover5_general_waypoint34_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5034 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover5_general_waypoint0_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5027 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5028 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5029 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5030 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover5_general_waypoint15_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5031 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover5_general_waypoint23_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5032 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover5_general_waypoint25_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5033 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover5_general_waypoint34_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5034 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover5_general_waypoint10_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5010 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover5_general_waypoint0_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5027 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5028 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5029 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5030 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover5_general_waypoint15_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5031 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover5_general_waypoint23_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5032 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover5_general_waypoint25_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5033 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover5_general_waypoint34_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5034 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover5_general_waypoint0_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5027 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5028 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5029 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5030 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover5_general_waypoint15_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5031 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover5_general_waypoint23_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5032 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover5_general_waypoint25_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5033 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover5_general_waypoint34_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5034 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover5_general_waypoint10_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5010 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover5_general_waypoint0_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5027 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5028 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5029 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5030 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover5_general_waypoint15_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5031 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover5_general_waypoint23_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5032 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover5_general_waypoint25_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5033 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover5_general_waypoint34_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5034 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover5_general_waypoint10_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5010 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover5_general_waypoint0_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5027 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5028 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5029 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5030 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover5_general_waypoint15_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5031 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover5_general_waypoint23_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5032 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover5_general_waypoint25_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5033 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover5_general_waypoint34_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5034 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover5_general_waypoint10_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5010 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover5_general_waypoint0_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5027 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5028 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5029 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5030 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover5_general_waypoint15_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5031 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover5_general_waypoint23_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5032 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover5_general_waypoint25_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5033 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover5_general_waypoint34_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5034 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_soil_data_rover5_general_waypoint10_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5010 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint10))
)

(:action communicate_soil_data_rover5_general_waypoint0_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5027 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint0))
)

(:action communicate_soil_data_rover5_general_waypoint5_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5028 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint5))
)

(:action communicate_soil_data_rover5_general_waypoint8_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5029 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint8))
)

(:action communicate_soil_data_rover5_general_waypoint12_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5030 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint12))
)

(:action communicate_soil_data_rover5_general_waypoint15_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5031 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint15))
)

(:action communicate_soil_data_rover5_general_waypoint23_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5032 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint23))
)

(:action communicate_soil_data_rover5_general_waypoint25_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5033 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint25))
)

(:action communicate_soil_data_rover5_general_waypoint34_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5034 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint34))
)

(:action communicate_rock_data_rover5_general_waypoint0_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5036 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover5_general_waypoint8_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5037 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover5_general_waypoint15_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5038 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover5_general_waypoint20_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5039 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover5_general_waypoint34_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5040 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover5_general_waypoint0_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5036 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover5_general_waypoint8_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5037 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover5_general_waypoint15_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5038 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover5_general_waypoint20_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5039 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover5_general_waypoint34_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5040 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover5_general_waypoint0_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5036 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover5_general_waypoint8_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5037 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover5_general_waypoint15_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5038 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover5_general_waypoint20_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5039 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover5_general_waypoint34_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5040 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover5_general_waypoint0_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5036 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover5_general_waypoint8_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5037 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover5_general_waypoint15_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5038 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover5_general_waypoint20_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5039 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover5_general_waypoint34_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5040 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover5_general_waypoint0_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5036 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover5_general_waypoint8_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5037 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover5_general_waypoint15_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5038 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover5_general_waypoint20_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5039 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover5_general_waypoint34_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5040 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover5_general_waypoint0_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5036 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover5_general_waypoint8_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5037 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover5_general_waypoint15_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5038 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover5_general_waypoint20_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5039 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover5_general_waypoint34_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5040 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover5_general_waypoint0_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5036 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover5_general_waypoint8_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5037 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover5_general_waypoint15_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5038 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover5_general_waypoint20_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5039 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover5_general_waypoint34_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5040 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover5_general_waypoint0_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5036 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover5_general_waypoint8_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5037 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover5_general_waypoint15_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5038 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover5_general_waypoint20_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5039 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover5_general_waypoint34_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5040 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_rock_data_rover5_general_waypoint0_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5036 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint0))
)

(:action communicate_rock_data_rover5_general_waypoint8_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5037 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint8))
)

(:action communicate_rock_data_rover5_general_waypoint15_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5038 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint15))
)

(:action communicate_rock_data_rover5_general_waypoint20_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5039 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint20))
)

(:action communicate_rock_data_rover5_general_waypoint34_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5040 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint34))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5041 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5042 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5043 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5044 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5045 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5046 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5047 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5048 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5049 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5050 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5051 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5052 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5053 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5054 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5055 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5056 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5041 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5042 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5043 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5044 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5045 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5046 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5047 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5048 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5049 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5050 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5051 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5052 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5053 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5054 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5055 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5056 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5041 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5042 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5043 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5044 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5045 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5046 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5047 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5048 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5049 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5050 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5051 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5052 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5053 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5054 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5055 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5056 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5041 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5042 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5043 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5044 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5045 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5046 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5047 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5048 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5049 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5050 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5051 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5052 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5053 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5054 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5055 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5056 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5041 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5042 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5043 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5044 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5045 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5046 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5047 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5048 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5049 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5050 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5051 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5052 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5053 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5054 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5055 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5056 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5041 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5042 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5043 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5044 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5045 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5046 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5047 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5048 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5049 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5050 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5051 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5052 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5053 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5054 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5055 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5056 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5041 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5042 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5043 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5044 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5045 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5046 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5047 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5048 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5049 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5050 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5051 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5052 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5053 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5054 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5055 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5056 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5041 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5042 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5043 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5044 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5045 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5046 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5047 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5048 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5049 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5050 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5051 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5052 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5053 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5054 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5055 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5056 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action communicate_image_data_rover5_general_objective0_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5041 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 colour))
)

(:action communicate_image_data_rover5_general_objective1_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5042 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 colour))
)

(:action communicate_image_data_rover5_general_objective2_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5043 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 colour))
)

(:action communicate_image_data_rover5_general_objective3_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5044 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 colour))
)

(:action communicate_image_data_rover5_general_objective4_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5045 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 colour))
)

(:action communicate_image_data_rover5_general_objective5_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5046 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 colour))
)

(:action communicate_image_data_rover5_general_objective6_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5047 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 colour))
)

(:action communicate_image_data_rover5_general_objective7_colour_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5048 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 colour))
)

(:action communicate_image_data_rover5_general_objective0_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5049 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective0 high_res))
)

(:action communicate_image_data_rover5_general_objective1_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5050 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective1 high_res))
)

(:action communicate_image_data_rover5_general_objective2_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5051 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective2 high_res))
)

(:action communicate_image_data_rover5_general_objective3_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5052 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective3 high_res))
)

(:action communicate_image_data_rover5_general_objective4_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5053 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective4 high_res))
)

(:action communicate_image_data_rover5_general_objective5_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5054 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective5 high_res))
)

(:action communicate_image_data_rover5_general_objective6_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5055 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective6 high_res))
)

(:action communicate_image_data_rover5_general_objective7_high_res_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5056 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_image_data objective7 high_res))
)

(:action sample_rock_rover5_rover5store_waypoint28
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5057 ) (at_rock_sample waypoint28) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint28)))
)

(:action sample_rock_rover5_rover5store_waypoint11
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5058 ) (at_rock_sample waypoint11) (empty rover5store))
:effect 
(and (not (empty rover5store)) (full rover5store) (not (at_rock_sample waypoint11)))
)

(:action communicate_soil_data_rover5_general_waypoint16_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5059 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover5_general_waypoint29_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5060 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover5_general_waypoint7_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5061 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover5_general_waypoint27_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5062 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover5_general_waypoint6_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5063 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover5_general_waypoint19_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5064 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5065 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover5_general_waypoint26_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5066 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5067 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint22_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5068 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover5_general_waypoint16_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5059 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover5_general_waypoint29_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5060 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover5_general_waypoint7_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5061 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover5_general_waypoint27_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5062 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover5_general_waypoint6_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5063 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover5_general_waypoint19_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5064 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5065 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover5_general_waypoint26_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5066 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5067 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint22_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5068 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover5_general_waypoint16_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5059 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover5_general_waypoint29_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5060 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover5_general_waypoint7_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5061 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover5_general_waypoint27_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5062 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover5_general_waypoint6_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5063 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover5_general_waypoint19_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5064 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5065 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover5_general_waypoint26_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5066 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5067 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint22_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5068 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover5_general_waypoint16_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5059 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover5_general_waypoint29_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5060 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover5_general_waypoint7_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5061 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover5_general_waypoint27_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5062 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover5_general_waypoint6_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5063 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover5_general_waypoint19_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5064 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5065 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover5_general_waypoint26_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5066 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5067 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint22_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5068 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover5_general_waypoint16_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5059 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover5_general_waypoint29_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5060 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover5_general_waypoint7_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5061 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover5_general_waypoint27_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5062 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover5_general_waypoint6_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5063 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover5_general_waypoint19_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5064 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5065 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover5_general_waypoint26_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5066 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5067 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint22_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5068 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover5_general_waypoint16_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5059 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover5_general_waypoint29_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5060 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover5_general_waypoint7_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5061 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover5_general_waypoint27_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5062 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover5_general_waypoint6_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5063 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover5_general_waypoint19_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5064 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5065 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover5_general_waypoint26_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5066 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5067 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint22_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5068 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover5_general_waypoint16_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5059 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover5_general_waypoint29_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5060 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover5_general_waypoint7_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5061 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover5_general_waypoint27_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5062 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover5_general_waypoint6_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5063 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover5_general_waypoint19_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5064 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5065 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover5_general_waypoint26_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5066 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5067 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint22_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5068 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover5_general_waypoint16_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5059 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover5_general_waypoint29_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5060 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover5_general_waypoint7_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5061 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover5_general_waypoint27_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5062 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover5_general_waypoint6_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5063 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover5_general_waypoint19_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5064 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5065 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover5_general_waypoint26_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5066 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5067 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint22_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5068 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_soil_data_rover5_general_waypoint16_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5059 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint16))
)

(:action communicate_soil_data_rover5_general_waypoint29_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5060 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint29))
)

(:action communicate_soil_data_rover5_general_waypoint7_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5061 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint7))
)

(:action communicate_soil_data_rover5_general_waypoint27_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5062 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint27))
)

(:action communicate_soil_data_rover5_general_waypoint6_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5063 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint6))
)

(:action communicate_soil_data_rover5_general_waypoint19_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5064 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint19))
)

(:action communicate_soil_data_rover5_general_waypoint18_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5065 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint18))
)

(:action communicate_soil_data_rover5_general_waypoint26_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5066 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint26))
)

(:action communicate_soil_data_rover5_general_waypoint14_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5067 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint14))
)

(:action communicate_soil_data_rover5_general_waypoint22_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5068 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_soil_data waypoint22))
)

(:action communicate_rock_data_rover5_general_waypoint16_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5069 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover5_general_waypoint7_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5070 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover5_general_waypoint24_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5071 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover5_general_waypoint27_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5072 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover5_general_waypoint30_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5073 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5074 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5075 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint13_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5076 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover5_general_waypoint33_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5077 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover5_general_waypoint16_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5069 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover5_general_waypoint7_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5070 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover5_general_waypoint24_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5071 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover5_general_waypoint27_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5072 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover5_general_waypoint30_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5073 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5074 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5075 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint13_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5076 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover5_general_waypoint33_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5077 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover5_general_waypoint16_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5069 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover5_general_waypoint7_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5070 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover5_general_waypoint24_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5071 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover5_general_waypoint27_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5072 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover5_general_waypoint30_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5073 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5074 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5075 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint13_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5076 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover5_general_waypoint33_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5077 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover5_general_waypoint16_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5069 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover5_general_waypoint7_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5070 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover5_general_waypoint24_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5071 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover5_general_waypoint27_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5072 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover5_general_waypoint30_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5073 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5074 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5075 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint13_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5076 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover5_general_waypoint33_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5077 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover5_general_waypoint16_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5069 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover5_general_waypoint7_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5070 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover5_general_waypoint24_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5071 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover5_general_waypoint27_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5072 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover5_general_waypoint30_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5073 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5074 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5075 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint13_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5076 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover5_general_waypoint33_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5077 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover5_general_waypoint16_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5069 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover5_general_waypoint7_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5070 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover5_general_waypoint24_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5071 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover5_general_waypoint27_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5072 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover5_general_waypoint30_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5073 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5074 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5075 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint13_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5076 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover5_general_waypoint33_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5077 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover5_general_waypoint16_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5069 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover5_general_waypoint7_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5070 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover5_general_waypoint24_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5071 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover5_general_waypoint27_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5072 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover5_general_waypoint30_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5073 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5074 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5075 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint13_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5076 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover5_general_waypoint33_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5077 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover5_general_waypoint16_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5069 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover5_general_waypoint7_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5070 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover5_general_waypoint24_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5071 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover5_general_waypoint27_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5072 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover5_general_waypoint30_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5073 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5074 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5075 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint13_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5076 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover5_general_waypoint33_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5077 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover5_general_waypoint16_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5069 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint16))
)

(:action communicate_rock_data_rover5_general_waypoint7_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5070 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint7))
)

(:action communicate_rock_data_rover5_general_waypoint24_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5071 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint24))
)

(:action communicate_rock_data_rover5_general_waypoint27_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5072 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint27))
)

(:action communicate_rock_data_rover5_general_waypoint30_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5073 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint30))
)

(:action communicate_rock_data_rover5_general_waypoint9_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5074 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint9))
)

(:action communicate_rock_data_rover5_general_waypoint6_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5075 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint6))
)

(:action communicate_rock_data_rover5_general_waypoint13_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5076 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint13))
)

(:action communicate_rock_data_rover5_general_waypoint33_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5077 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint33))
)

(:action communicate_rock_data_rover5_general_waypoint28_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5078 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover5_general_waypoint11_waypoint0_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5001 ) (at_lander general waypoint31) (P_ARTIFICIAL5079 ) (visible waypoint0 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover5_general_waypoint28_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5078 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover5_general_waypoint11_waypoint5_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5002 ) (at_lander general waypoint31) (P_ARTIFICIAL5079 ) (visible waypoint5 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover5_general_waypoint28_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5078 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover5_general_waypoint11_waypoint8_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5003 ) (at_lander general waypoint31) (P_ARTIFICIAL5079 ) (visible waypoint8 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover5_general_waypoint28_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5078 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover5_general_waypoint11_waypoint9_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5024 ) (at_lander general waypoint31) (P_ARTIFICIAL5079 ) (visible waypoint9 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover5_general_waypoint28_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5078 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover5_general_waypoint11_waypoint20_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5009 ) (at_lander general waypoint31) (P_ARTIFICIAL5079 ) (visible waypoint20 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover5_general_waypoint28_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5078 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover5_general_waypoint11_waypoint2_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5035 ) (at_lander general waypoint31) (P_ARTIFICIAL5079 ) (visible waypoint2 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover5_general_waypoint28_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5078 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover5_general_waypoint11_waypoint13_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5025 ) (at_lander general waypoint31) (P_ARTIFICIAL5079 ) (visible waypoint13 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover5_general_waypoint28_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5078 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover5_general_waypoint11_waypoint14_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5020 ) (at_lander general waypoint31) (P_ARTIFICIAL5079 ) (visible waypoint14 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

(:action communicate_rock_data_rover5_general_waypoint28_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5078 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint28))
)

(:action communicate_rock_data_rover5_general_waypoint11_waypoint27_waypoint31
:precondition 
(and (regular-actions-stage rotemplaceholder) (P_ARTIFICIAL5015 ) (at_lander general waypoint31) (P_ARTIFICIAL5079 ) (visible waypoint27 waypoint31) (P_ARTIFICIAL5011 ) (channel_free general))
:effect 
(and (channel_free general) (communicated_rock_data waypoint11))
)

)
